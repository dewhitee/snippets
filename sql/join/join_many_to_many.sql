select account.name, member.role, course.title
from account join member join course
on member.account_id = account.account_id and member.course_id = course.course_id
order by course.title, member.role desc, account.name;

SELECT `User`.name, Course.title, Member.role
FROM `User` JOIN Member JOIN Course
ON `User`.user_id = Member.user_id AND Member.course_id = Course.course_id
ORDER BY Course.title, Member.role DESC, `User`.name