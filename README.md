Flight Scheduler: Additional Test Cases
=======================================

This project is a collection of test cases for the flight scheduling assignment.  Each of the provided test cases (Alaska and Hawaiian) produce strongly connected graphs.  That is, it is possible to construct a sequence of flights from any source airport to any other destination airport.  These test cases are inadequate, then, in testing the full scrope of the program that does not guarantee this convenience.

The test cases in the project, Hawaiian-flights-disconnected.txt and Alaska-flights-disconnected.txt are proper subsets of Hawaiian-flights.txt and Alaska-flights.txt, respectively.  They each guarantee that the resulting graph has at least two disconnected components.  Furthermore, one airport in one component is guaranteed to be a transmitter (having only outgoing flights), and another airport in the opposite compontent is guaranteed to be a receiver (having only incoming flights).

The output files disconnected01.out and disconnected02.out are produced in the following way:

    java MainAir hawaiian-testcases/Hawaiian-airports.txt disconnected-testcases/Hawaiian-flights-disconnected.txt hawaiian-testcases/Hawaiian-customers100.txt > disconnected-testcases/disconnected01.out
    java MainAir alaska-testcases/Alaska-airports.txt disconnected-testcases/Alaska-flights-disconnected.txt alaska-testcases/Alaska-customers2000.txt > disconnected-testcases/disconnected02.out
