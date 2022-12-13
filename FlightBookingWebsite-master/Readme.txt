Step 1- Download Eclipse and MYSQL workspace, server and Downalod tomact 8.5.
Step 2- Download the gip file and extract it in a folder and connect your tomcat to eclipse watch video on youtube.
Step 3- Open eclipse and click on file->new->other->search Dynamic Web project and select ->name 'BookingFilght' of your project.
Step 4- Go to file manager and open the src folder->main->web->main->webapp->Ctrl+A and copy.
Step 5- Go to Eclipse open Project folder -> src->main->webapp->right click on webapp and paste here only.
Step 6-  Go to file manager and open the src folder->main->web->main->Java->booking->Ctrl+A and copy.
Step 7- Go to Eclipse open Project folder -> src->main->java->right click on java and paste here only.
Step 8- Go to chorme and download MYSQL connecter jar flie try to use this link only (https://dev.mysql.com/downloads/connector/j/)  and select the Operating system 'plateform independent' and download the second option. 
Step 9- Go to eclipse Right click on project folder and select bulid path ->Configure->Click on module path ->Click on add external jar->select the mysql jar file that you downlaoded->apply and close.
Step 10- Go to the tomact file open the folder where tomcat installed ,open lib folder and paste the mysql jar file here also. 
Step 11- After susscefully login in worksapce in mysql [you can also watch video how to downlaod mysql server and workbench on youtube] you have to enter you password.
Step 12 -Enter- > create table travelers(FID int(50),SEATNO varchar(50) primary key,FNAME varchar(50),LNAME varchar(50),EMAIL varchar(50),PHONE int(50),ADHARNO int(100),FARE int(50)); (press enter)
Step 13- Enter-> create table users(FNAME varchar(50), LNAME varchar(50), EMAIL varchar(50) primary key, PHONE int(50), UNAME varchar(50), PASS varchar(50));  (press enter)
Step 14 -Enter- >create table transactions(CARDNAME varchar(50),CARDNO int(50),AMOUNT int(10));  (press enter)
Step 15 -Enter- > create table admins (UNAME varchar(50), PASS varchar(50));  (press enter)
Step 16 -Enter- > insert into admins(UNAME,PASS)  (press enter)
    -> values (user,12345);  (press enter)

Step 17 - Enter ->create table flight_details(FID int(50) primary key, FROM_PLACE varchar(50),TO_PLACE varchar(50),DATE date,FARE int(50), SEATS int(50), BOARDING_TIME time);  (press enter)

