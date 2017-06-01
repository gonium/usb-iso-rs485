#/usr/bin/env python2

from sys import stdout
from math import pi, log10, pow

Tau = 2 * pi
TableWidth = 20

##  Calculate Decibels
def db(ref, val):
    20 * log10(val / ref)


##  Represent a resistor
class Resistor:

    def __init__(self, ohms):
        self.r = ohms


    ##  Get the value of r
    def value(self):
        return self.r


    ##  Get the resistance
    def resistance(self):
        return self.r + 0j


    ##  Return the impedance (will just be resistance)
    def impedance(self, frequency = 0):
        return complex(self.r, 0)


##  Represent a capacitor
class Capacitor:

    def __init__(self, farads):
        self.c = farads


    ##  Get the value of c
    def value(self):
        return self.c


    ##  Get the resistance (none)
    def resistance(self):
        return 0


    ##  Get the impedance
    def impedance(self, frequency = 0):
        reactance = -1 / (Tau * frequency * self.c)
        return complex(0, reactance)


##  Represent and RC filter
class RCFilter:

    def __init__(self, resistor, capacitor):
        self.set_input(1.0)
        self.resistor = Resistor(resistor)
        self.capacitor = Capacitor(capacitor)


    ##  Set the AC voltage and frequency
    def set_input(self, voltage = 1.0, frequency = 0.0):
        self.voltage = voltage
        self.frequency = frequency


    ##  What is the cutoff for this filter?
    def cutoff(self):
        return (1 / (Tau * self.resistor.value() * self.capacitor.value()))


    ##  What is the total impedance, Z, of this circuit?
    def total_impedance(self):
        return self.resistor.impedance(self.frequency) + self.capacitor.impedance(self.frequency)


    ##  Total current in this circuit, similar to I = V/R, I = V/Z
    def total_current(self):
        return self.voltage / self.total_impedance()


    ##  Voltage across the resistor
    def voltage_across_resistor(self):
        return self.total_current() * self.resistor.impedance(self.frequency)


    ##  Voltage across the capacitor
    def voltage_across_capacitor(self):
        return self.total_current() * self.capacitor.impedance(self.frequency)


    ##  Do a frequency sweep, I'm using MIDI notes because they are logarithmic
    def frequency_sweep(self):
        output = []
        for midi in xrange(0, 127, 2):
            ##  Find the frequency of this midi note number
            ##  Set the AC voltage to this frequency, 1 volt
            f = 440 * pow(2, (midi - 69) / 12.0)
            self.set_input(1.0, f)
            output.append(self.voltage_across_capacitor().real)
        return output


    ##  print an ascii graph of the frequency response
    def print_frequency_response_graph(self):
        line = '-' * 64

        ##  First map the 0.0 - 1.0 voltages to 0 - 10 integers
        ##  Do I need me = self?
        frequency_response = map(lambda voltage: int(voltage * 10), self.frequency_sweep())

        ##  Print out a 64x10 ASCII graph
        print("Frequency Response:")
        print(line)
        for voltage in reversed(xrange(11)):
            stdout.write('|')
            for response in frequency_response:
                stdout.write('*' if voltage == response else ' ')
            print("|")
        print(line)


r1 = 220.0
c1 = 0.000001

filter = RCFilter(r1, c1)
cutoff_frequency = filter.cutoff()

filter.set_input(1.0, cutoff_frequency)
attenuation = db(1.0, filter.voltage_across_capacitor().real)

filter.print_frequency_response_graph();
