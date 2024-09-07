select *
from student_performance;

--------------the effect parental support has on students------

select name,FinalGrade,PreviousGrade
from student_performance
where ParentalSupport='low';

-------------the effect of sudents not joining any extrascurricular activities-------

select name,FinalGrade,PreviousGrade
from student_performance
where ExtracurricularActivities<1;

-----------the effect of low study hours per week--------------------------

select name,FinalGrade,PreviousGrade
from student_performance
where StudyHoursPerWeek<20;