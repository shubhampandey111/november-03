#!/bin/bash

isFullTime=1
isPartTime=0
attend=$((RANDOM%2))
totalwageperhrs=20
no_wage=0

if [[ $attend -eq 1 ]]
then
          present_emp=$(( RANDOM % 3 ))

         if [ $present_emp -eq $isPartTime ]
                                then
                                                empTotalHrs=4
                                          dailyemployeewage=$(( $empTotalHrs * $totalwageperhrs ))
                                         echo " dailyemployeewage : $dailyemployeewage "
                               fi
         if [ $present_emp -eq $isFullTime ]
                                then
                                                empTotalHrs=8
                                          dailyemployeewage1=$(( $empTotalHrs * $totalwageperhrs ))
                                         echo " dailyemployeewage : $dailyemployeewage1 "
                               fi

fi

if [[ $attend -eq 0 ]]
then
echo " dailyemployeewage : No wages as employee was absent "
fi

