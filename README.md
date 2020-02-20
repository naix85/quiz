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



# Jenkins Log

Started by user admin
Running as SYSTEM
Building in workspace /Users/admin/.jenkins/workspace/Testing
[WS-CLEANUP] Deleting project workspace...
[WS-CLEANUP] Deferred wipeout is used...
using credential GitHub
Cloning the remote Git repository
Cloning repository https://github.com/naix85/quiz.git
 > git init /Users/admin/.jenkins/workspace/Testing # timeout=10
Fetching upstream changes from https://github.com/naix85/quiz.git
 > git --version # timeout=10
using GIT_ASKPASS to set credentials GitHub Credential
 > git fetch --tags --force --progress -- https://github.com/naix85/quiz.git +refs/heads/*:refs/remotes/origin/* # timeout=10
 > git config remote.origin.url https://github.com/naix85/quiz.git # timeout=10
 > git config --add remote.origin.fetch +refs/heads/*:refs/remotes/origin/* # timeout=10
 > git config remote.origin.url https://github.com/naix85/quiz.git # timeout=10
Fetching upstream changes from https://github.com/naix85/quiz.git
using GIT_ASKPASS to set credentials GitHub Credential
 > git fetch --tags --force --progress -- https://github.com/naix85/quiz.git +refs/heads/*:refs/remotes/origin/* # timeout=10
 > git rev-parse refs/remotes/origin/master^{commit} # timeout=10
 > git rev-parse refs/remotes/origin/origin/master^{commit} # timeout=10
Checking out Revision 4b2c3954fc5d574ed7aa47572cfa745ca2fb0eff (refs/remotes/origin/master)
 > git config core.sparsecheckout # timeout=10
 > git checkout -f 4b2c3954fc5d574ed7aa47572cfa745ca2fb0eff # timeout=10
Commit message: "quiz"
First time build. Skipping changelog.
[Testing] $ /bin/bash -xe /var/folders/cf/b520d8k95h130fgyl7gk9bn80000gn/T/jenkins2146002788028316060.sh
+ source /Users/admin/.profile
++ export PATH=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home/bin:/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/admin/.rvm/bin:/usr/local/bin:/Users/admin/.rvm/gems/ruby-2.6.3/bin:/Users/admin/.jenkins/workspace/Staging.OneWallet.Smoke.Test.UI.Admin/support/drivers/
++ PATH=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home/bin:/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/admin/.rvm/bin:/usr/local/bin:/Users/admin/.rvm/gems/ruby-2.6.3/bin:/Users/admin/.jenkins/workspace/Staging.OneWallet.Smoke.Test.UI.Admin/support/drivers/
+ cucumber -f html -p mac_chrome -t @test -o quiz3.html
"*********************************************************"
"Test Started:: Invoking Chrome ..!"
"*********************************************************"
"Test Started:: Invoking Chrome ..!"
"*********************************************************"
"Test Started:: Invoking Chrome ..!"
"*********************************************************"
"Test Started:: Invoking Chrome ..!"
"*********************************************************"
"Test Started:: Invoking Chrome ..!"
"*********************************************************"
"Test Started:: Invoking Chrome ..!"
"*********************************************************"
"Test Started:: Invoking Chrome ..!"
"*********************************************************"
"Test Started:: Invoking Chrome ..!"
[PostBuildScript] - [INFO] Executing post build scripts.
Finished: SUCCESS
