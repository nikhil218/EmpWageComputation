#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program!"

wage_per_hour=20;
isPartTime=1;
isFullTime=2;
No_of_working_days=20
max_hours=100;

function getWorkingHours() {
	case $1 in
		$isFullTime)
			emp_hour=8
			;;
		$isPartTime)
			emp_hour=4
			;;
		*)
			emp_hour=0;
			;;
	esac
	echo $emp_hour
}

while [[ $total_working_days -lt $No_of_working_days && $total_work_hours -lt $max_hours  ]]
do
	((total_working_days++))
	emp_hour="$( getWorkingHours $((RANDOM%3)) )"
	total_work_hours=$(($total_work_hours+$emp_hour))
done

total_salary=$(( $total_work_hours * $wage_per_hour ))
echo "Monthly Wage of an Employee is : " $total_salary
