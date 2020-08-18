use internship_finder;

select *
from student_personal_info; 

select app_link
from job_posting_info;

select post_id
from applied_job;

select COUNT(student_id)
from applied_job;

select post_id
from apply_later;

select COUNT(empl_id)
from intern;

select Pname
from project;

select post_id
from job_posting_info
where post_title = 'Computer Science';

select job_posting_info.post_title, COUNT(applied_job.post_id)
from applied_job
JOIN job_posting_info ON job_posting_info.post_id = applied_job.post_id
group by applied_job.post_id
order by COUNT(applied_job.post_id) DESC;

select COUNT(student_id)
from student_personal_info
group by major ;

