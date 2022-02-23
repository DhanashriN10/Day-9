echo "Employee Information"

#Check  the Employee is Present or Absent
work_hour()
{
    emp_rate_per_hr=20
    max_work_hrs=100
    work_day=20
    tot_work_hrs=0
    tot_work_day=0
    day=1
    while(( $tot_work_hrs != $max_work_hrs && $tot_work_day != $work_day ))
    do
        echo "Day" $day
        emp_attendance=$(( RANDOM%2 ))
        if (( $emp_attendance == 1 ))
        then
              echo "Present"
             (( day++ ))
          (( tot_work_day++ ))
        else
              echo "Absent"
            (( day++ ))
        fi

#Add Part time Employee & Wage
emp_time=$(( RANDOM%3 ))
#using switch case

if(( $emp_attendance == 1))
then
case $emp_time in

     1) echo "FullTime"
      	work_hrs=8
     ;;

     2) echo "PartTime"
        work_hrs=8
     ;;

     *) echo "FullTime + PartTime"
        work_hrs=16
     ;;

esac
echo "Work Hrs" $work_hrs
total_work_hrs=$(($tot_work_hrs + $work_hrs))
#echo "Total work hrs is " $tot_work_hrs

daily_emp_wage=$(($emp_attendance * $work_hrs * $emp_rate_per_hr))
echo "Daily Employee Wage" $daily_emp_wage

fi

done
echo "Total work day is" $tot_work_day

total_wage=$(($tot_work_hrs * $emp_rate_per_hr))
echo "Total wage is " $tot_wage
}
work_hour

echo "total work hrs is" $tot_work_hrs
