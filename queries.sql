# -View all Students 
select * from students;
# -View all Subjects
select * from subjects;
#view attendence
select * from attendence ;
# Students present today--
select s.student_name , a.attendence_date from students s join attendence a on 
s.student_id=a.student_id where a.status='Present';
# Students absent today--
select s.student_name , a.attendence_date from students s join attendence a on 
s.student_id=a.student_id where a.status='Absent';
# Attendence count 
select student_id , count(status) as total_present from attendence
where status='Present' group by student_id;
# Attendnce percentage
select student_id , 
sum(case when status='Present' then 1 else 0 end)*100 as percentage
from attendence group by student_id;
# Subject wise attendence 
select s.subject_name , st.student_name , a.status from attendence a 
join students st on a.student_id = st.student_id
join subjects s on a.subject_id = s.subject_id ;
# Delete attendence record
delete from attendence where attendence_id=5;
# update Attendence 
update attendence set status="Present" where attendence_id=2;
