#!/bin/bash 
WagePerHr=20
DailyEmpWage=0
totalMonthWage=0
isFullTime=1
isHalfTime=2
absent=0
empHr=0
for (( i=1; i<=20; i++ ))
do
echo "for Day $i"
empcheck=$(($RANDOM%3))
case $empcheck in
$isFullTime)
echo "Employee is present for full time"
empHr=8 ;;
$isPartTime)
echo "Employee is present for half time"
empHr=4 ;;
*)
echo "Employee is absent"
empHr=0 ;;
esac
DailyEmpWage=$(($empHr*$WagePerHr))
echo "Day $i  Wage=" $DailyEmpWage
totalMonthWage=$(($totalMonthWage+$DailyEmpWage))
done
echo "Monthly Wage="  $totalMonthWage
