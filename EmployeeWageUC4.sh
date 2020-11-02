#!/bin/bash

isFullTime=1
isPartTime=0
attend=$((RANDOM%2))
totalwageperhrs=20
no_wage=0

if [[ $attend -eq 1 ]]
then
          present_emp=$(( RANDOM % 3 ))
 case $present_emp in
        $isFullTime)
                empTotalHrs=8
               dailyemployeewage1=$(( $empTotalHrs * $totalwageperhrs ))
               echo " dailyemployeewage : $dailyemployeewage1 "

        ;;

        $isPartTime)
         empTotalHrs=4
         dailyemployeewage=$(( $empTotalHrs * $totalwageperhrs ))
         echo " dailyemployeewage : $dailyemployeewage "

        ;;
        *)
                       
        esac
fi

if [[ $attend -eq 0 ]]
then
echo " dailyemployeewage : No wages as employee was absent "
fi

