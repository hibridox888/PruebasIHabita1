# README

This Readme will contain the necessary path to install this repository in your machine.

Install Instructions:
1) This repository works in the following environment:
	1) SO: ubuntu: 20.04.5
	2) Instalations:
		- ruby: 3.0.0
		- version rails: 7.0.4
		- Database: sql server: Microsoft SQL Server 2022 (RC1) 16.0.950.9 (X64)

2) In order to get all the installation name on previous step we go to the following links:
	1) https://ubuntu.com/download/alternative-downloads (For Ubuntu 20.04)
	2) https://www.vultr.com/docs/installing-ruby-on-rails-on-ubuntu-20-04/ (For Ruby and Rails)
	3) https://learn.microsoft.com/en-us/sql/linux/quickstart-install-connect-ubuntu?view=sql-server-ver16 (For Sql Server)

3) After the instalation is complete now you can download this repository, for that you need:
	1) Create an directory ond your pc.
	2) on that directory connect git an clone this repository.

4) After that, in order to make this work you need to install all the gems in de gemfile, for that you can enter the following command:
	bundle install

5) With the gems installed now you need to create de db, for that you just need to use the following command:
	rails db:create

6) Now that we have de db created we need make the migrations, in order to add tables an properties we need, for that use this command:
	rails db:migrate

7) Finally with all that you can run the code from this repository with this command:
	rails s

8) now you have the sistem, but there is nothing on your users database, and in order to enter to the different views we need to be logged, so in order to do it you need first to resgiter 1 user, and afert that enter with it.