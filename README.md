Flight Scheduler: Additional Test Cases
=======================================

This project is a collection of test cases for the flight scheduling assignment.  Each of the provided test cases (Alaska and Hawaiian) produce strongly connected graphs.  That is, it is possible to construct a sequence of flights from any source airport to any other destination airport.  These test cases are inadequate, then, in testing the full scrope of the program that does not guarantee this convenience.

The test cases in the project, Hawaiian-flights-disconnected.txt and Alaska-flights-disconnected.txt are proper subsets of Hawaiian-flights.txt and Alaska-flights.txt, respectively.  They each guarantee that the resulting graph has at least two disconnected components.  Furthermore, one airport in one component is guaranteed to be a transmitter (having only outgoing flights), and another airport in the opposite compontent is guaranteed to be a receiver (having only incoming flights).

The output files disconnected01.out and disconnected02.out are produced in the following way:

    java MainAir hawaiian-testcases/Hawaiian-airports.txt disconnected-testcases/Hawaiian-flights-disconnected.txt hawaiian-testcases/Hawaiian-customers100.txt > disconnected-testcases/disconnected01.out
    java MainAir alaska-testcases/Alaska-airports.txt disconnected-testcases/Alaska-flights-disconnected.txt alaska-testcases/Alaska-customers2000.txt > disconnected-testcases/disconnected02.out

Contributing
------------

I am by no means guaranteeing that my output files are correct.  If your output from these testcases is different from mine, please fork this project, update the .out files and pull request, explaining where my output is wrong.

If you have more testcases of any kind, please feel free to fork and pull request. We'll all have better programs if some of us write good tests.

Additional Notes
----------------

It's clear that a test case for Hawaiian was provided that addresses impossible-to-schedule flights.  However, these cases contain airports that aren't part of the graph.  Those cases are really easy to dismiss by checking for set inclusion without ever having to traverse the graph.  The customers in this project differ because each customer has a valid source and a valid destination, but you cannot be guaranteed that there exists a sequence of flights to satisfy that customer.
