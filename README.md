# Answers to question

Qns 1. 
To conduct UI Test on https://devexpress.github.io/testcafe/example/; basically to ensure UI logic behave correctly
To database; verify submitted form values capture in database
Performance test on form submission endpoint

Qns 2. Test case as shown in script; only UI Test will be demonstrated

Qns 3. I will be using Jenkins instead; have not tried circleCI yet. However, I cannot share the url of my jenkins env since it is only expose using public ip and hosted a variety of stuffs.  I can show you during f2f, if need to.

Qns 4. 

SELECT Employees.employee_id, Employees.employee_name, Buddies.buddy_name, Supervisors.supervisor_name, Employees.team_name
FROM ((Employees
INNER JOIN Buddies ON Employees.buddy_id = Buddies.buddy_id)
INNER JOIN Supervisors ON Employees.supervisor_id = Supervisors.supervisor_id)