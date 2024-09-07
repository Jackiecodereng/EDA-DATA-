---i --uploaded the table------

select *
from student_performance;
-------let me see if i can see who were the top students ---
SELECT *
FROM student_performance
ORDER BY FinalGrade DESC;


---------if i compare male to female which gender perfomed better and the ladies perfomed better not so much help----


select gender,avg(finalgrade)
from student_performance
group by gender;

select gender,avg(PreviousGrade)
from student_performance
group by gender;

-----------tried to compare attendance,studyhours and extracurricular to the final grade and it had so much impact----

 
select name,attendancerate,studyhoursperweek,extracurricularactivities,FinalGrade
from student_performance
where gender='female';

select name,attendancerate,studyhoursperweek,extracurricularactivities
from student_performance
where gender='male';


------- realised most boys had lowest attendance and lowest grades and all those that failed had less than 20hrs per week----------


select name,studyhoursperweek,finalgrade,PreviousGrade,extracurricularactivities,ParentalSupport
from student_performance
where StudyHoursPerWeek<20
order by FinalGrade desc;


------------JAMES,ALEX AND DANIEL WERE THE STUDENTS THAT REQUIRED ADDITIONAL ASSISTANCE-------
