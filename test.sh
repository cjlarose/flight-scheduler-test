# Airports:
#     column 1: airport name
#     column 2: connection time
# 
# Flights:
#     column 1: departure airport name
#     column 2: arrival airport name
#     column 3: departure time
#     column 4: arrival time
# 
# Customers:
#     column 1: departure airport name
#     column 2: arrival airport name
#     column 3: earliest departure time

# Enter "sh readme.txt" at the Linux command prompt to execute
# the following test cases in batch. Read .out files for the detailed
# results from executions.

MY_PATH="`dirname \"$0\"`"              # relative
MY_PATH="`( cd \"$MY_PATH\" && pwd )`"  # absolutized and normalized

java -cp $MY_PATH/../../bin MainAir $MY_PATH/../hawaiian/Hawaiian-airports.txt $MY_PATH/Hawaiian-flights-disconnected.txt $MY_PATH/../hawaiian/Hawaiian-customers100.txt > $MY_PATH/tickets01.out
java -cp $MY_PATH/../../bin MainAir $MY_PATH/../alaska/Alaska-airports.txt $MY_PATH/Alaska-flights-disconnected.txt $MY_PATH/../alaska/Alaska-customers2000.txt > $MY_PATH/tickets02.out
