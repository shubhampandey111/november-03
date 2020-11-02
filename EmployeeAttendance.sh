#! /bin/bash
attendance=$((RANDOM%2))
if (( $attendance == 1 ))
then
        echo "Employee is Present"
else
        echo "Employee is Absent"
fi
