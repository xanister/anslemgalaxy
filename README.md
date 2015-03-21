       ____                 .__                         ________       .__
      /  _  \   ____   _____|  |   ____   _____        /  _____/_____  |  | _____  ___  ______.__.
     /  /_\  \ /    \ /  ___/  | _/ __ \ /     \      /   \  ___\__  \ |  | \__  \ \  \/  <   |  |
    /    |    \   |  \\___ \|  |_\  ___/|  Y Y  \     \    \_\  \/ __ \|  |__/ __ \_>    < \___  |
    \____|__  /___|  /____  >____/\___  >__|_|  /      \______  (____  /____(____  /__/\_ \/ ____|
                           
#
Nystra- Anlsem Gatekeeper

This site allows anslem players to create, choose and modify players.  

 


#Developing on ubuntu 14.4

________

###First Steps

Starting development on Anslem Galaxy does require a bit of forethought and preparation.  Firstly, you will need a designated development "box" or computer with a designated workspace. You will need to get a computer ("dev box") running on the ubuntu operating system. 

Once you have your ubuntu dev box situated, you will have a few tool dependencies, listed below.

##*Tool Dependencies*: 
>
1.  Git
2.  Rvm
3.  Ruby
4.  Rails
5.  Mysql

We will be downloading, installing, and optimizing each tool one after the other in sequence.  A brief description of each tool and why we need to use it will be provided along the way.  

###  Git

Git is, according to wikipedia.org, "a distributed revision control system with an emphasis on speed, data integrity, and support for distributed, non-linear workflows." 

What this basically means in laymen's terms is git makes sure every developer on a project is working on the same playing field.  Using your favorite search engine to look up "intalling git on umbuntu" can give you more color on this.

From your ubuntu command line enter the two following strings, hitting the enter key after each (obviously).  
 
>* sudo apt-get update 
>* sudo apt-get install git

After this install, check your git version (indeed, after downloading and installing each tool/module it is a good idea to check that tool's version.

>* git --version

Your git version should be 1.9.1

*Note that at this time it is suggested you open a github account*

###  RVM

RVM, according to Wikipedia.org, is a unix-like software platform designed to manage multiple installations of Ruby on the same device.

You will want to install this using the following ubuntu command:

>*  \curl -sSL https://get.rvm.io | sudo bash -s stable

Once again we want to check our version:

>* rvm --version

At the time of this readme file's composition, the desired version of rvm is 1.26.10.

###Ruby

Ruby is where all the magic really happens.  According to Wikipedia, Ruby is a dynamic, reflective, object-oriented, general-purpose programming language.  Any "real" development work you will be doing requires Ruby.  

In your command line:

>* rvm install 2.2.0

Remember how we just installed Ruby Version Manager?  This was in anticipation of installing not just Ruby but a specifically designated version of Ruby.  In this case, 2.2.0.  

###Node

Here's where things get interesting.  First, you will have to get nodes.  In your command line enter:

> * sudo add-apt-repository ppa:chris-lea/node.js
>* sudo apt-get update
>* sudo apt-get install nodejs


###Rails (or *"Ruby on Rails"*)

Rails is a framework that composes Ruby and makes websites easy.  Better put, Wikipedia describes Rails as "an open source web application framework written in Ruby. Rails is a full-stack framework that emphasizes the use of well-known software engineering patterns and paradigms, including convention over configuration (CoC), don't repeat yourself (DRY), the active record pattern, and model–view–controller (MVC)."

Subsequently, you can install Rails:

>* gem install rails

Once again, check your version:

>* rails --version

At the time of this readme file's composition, the desired version of rails is 4.1.8.

###Mysql

The final tool, before getting off the ground on developing this project, is Mysql.  Wikipedia describes Mysql as "the world's second most widely used relational database management system (RDBMS)and most widely used open-source RDBMS"

>* sudo apt-get install mysql-server
<blank password is fine>

Go back to github account.  Cut and paste your https clone code

In mysql cut and paste within YOUR anslem the clone code.  Git clone <paste> <enter>




##Getting the Code


1. Get a github account
2. Fork Xanister/AnslemGalaxy to your github account
3. Clone your forked repo 

 * git clone <user name>/AnslemGalaxy


4. Add a remote upstream: 


 * git remote add AnslemUpstream git@github.com:xanister/anslemgalaxy.git


5. Bundle Install-
 
  * Do a bundle install (bundle install or whatever ubuntu tells you to do)

  * ubuntu@ip-172-31-5-177:/var/www/anslemgalaxy$ rake db:create

  * ubuntu@ip-172-31-5-177:/var/www/anslemgalaxy$ rake db:migrate rails s


If doesn’t work: use this string

>* sudo apt-get install libmysqlclient-dev libmysqlclient18 ruby-dev


##Starting the App in Development

First command: 

>rails s
 
