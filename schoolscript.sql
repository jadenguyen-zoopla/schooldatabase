-- 1) How many students are there
SELECT COUNT(*) FROM student;

-- 2) Which house won the house cup? who came second and third?
SELECT name FROM house ORDER BY points DESC;

-- 3) What year did Lanie Porcas start at the school?
SELECT start_year FROM student WHERE first_name = 'Lanie' and last_name = 'Porcas';

-- 1) What classes does Dr Goldine teach?
SELECT subject from class
JOIN teacher on class.id = teacher.id
WHERE last_name =  'Goldine';

-- 2) Susannah Brosini is feeling sick - could you find her contact information?
SELECT guardian.first_name, guardian.last_name, phone_number, email FROM guardian
JOIN student on student.guardian = guardian.id
WHERE student.first_name = 'Susannah' and student.last_name = 'Brosini';

-- 3) Who is Astrix Hollindale's head of house?
SELECT teacher.id, teacher.first_name, teacher.last_name FROM teacher
LEFT OUTER JOIN house on house.head_of_house = teacher.id
LEFT OUTER JOIN student on student.house = house.id
WHERE student.first_name = 'Astrix' AND student.last_name = 'Hollindale';

-- 4) I just got a message from Mr Beldum... who is his child?
SELECT student.first_name, student.last_name, student.guardian FROM student
LEFT OUTER JOIN guardian on student.guardian = guardian.id
WHERE guardian.title = 'Mr' AND guardian.last_name = 'Beldum';

-- 1) Who teaches Desiree Jeger Physics?
SELECT teacher.first_name, teacher.last_name FROM teacher
LEFT OUTER JOIN class on class.teacher = teacher.id
LEFT OUTER JOIN student_class on student_class.class = class.id
LEFT OUTER JOIN student on student.id = student_class.student
WHERE class.subject = 'Physics' AND student.first_name ='Desiree' AND student.last_name = 'Jeger';

-- 2) Who is in Selene Davis's year 10 Chemistry Class?
