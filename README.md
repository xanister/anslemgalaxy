       ____                 .__                         ________       .__
      /  _  \   ____   _____|  |   ____   _____        /  _____/_____  |  | _____  ___  ______.__.
     /  /_\  \ /    \ /  ___/  | _/ __ \ /     \      /   \  ___\__  \ |  | \__  \ \  \/  <   |  |
    /    |    \   |  \\___ \|  |_\  ___/|  Y Y  \     \    \_\  \/ __ \|  |__/ __ \_>    < \___  |
    \____|__  /___|  /____  >____/\___  >__|_|  /      \______  (____  /____(____  /__/\_ \/ ____|
                           
#
Nystra- Anlsem Gatekeeper

This site allows anslem players to create, choose and modify players.  

 


#Developing on ubuntu 14.04

________

###First Steps

Get access to a modern machine running Ubuntu 14.04.

##*Tool Dependencies*:

1.  Git
2.  Rvm
3.  Ruby 2.2.0
4.  Rails 4.1.8
5.  Mysql


###  Git

We use git and github to collaborate.
 
>* sudo apt-get update 
>* sudo apt-get install git

>* git --version

Your git version should be 1.9.1

###  RVM

We use RVM to manage our ruby versions, use your own tool at your own risk, but make sure to get the right ruby (2.2.0).

You will want to install this using the following ubuntu command:

>*  \curl -sSL https://get.rvm.io | sudo bash -s stable


>* rvm --version

At the time of this readme file's composition, the desired version of rvm is 1.26.10.

###Ruby

Ruby is the principal language of this project.

>* rvm install 2.2.0

If this box is dedicated to Nystra development:

>* rvm global 2.2.0

else we'll set it locally after [getting the code](#getTheCode)


###Node

Node is our javascript runtime environment

>* sudo apt-get update
>* sudo apt-get install nodejs


###Rails

Rails is a framework that composes Ruby and makes websites easy.  Better put, Wikipedia describes Rails as "an open source web application framework written in Ruby. Rails is a full-stack framework that emphasizes the use of well-known software engineering patterns and paradigms, including convention over configuration (CoC), don't repeat yourself (DRY), the active record pattern, and model–view–controller (MVC)."

>* gem install rails

>* rails --version

The desired version of rails is 4.1.8.

###Mysql

mysql is a database application, it's not required for development but recommended. SQLite can also be used.

>* sudo apt-get install mysql-server

##<a name="getTheCode">Getting the Code</a>

1. Get a github account by signing up at github.com
2. Fork Xanister/AnslemGalaxy to your github account
3. Clone your forked repo

  >* git clone <user name>/AnslemGalaxy

4. Add a remote upstream:

  >* git remote add anslemUpstream git@github.com:xanister/anslemgalaxy.git

5. Install Gem dependencies
 
  >* bundle install

##Starting the App in Development

1. create the databases

  >* rake db:create

  >* rake db:seed

  >* rake db:migrate

2. start the server on port 3000

  >* rails s

3. in a separate terminal window:

  >* guard

You now have a server running at YOUR_IP:3000 and continuous test watching through guard.  You are ready to [develop a feature](https://docs.google.com/document/d/1AIorlCRpa9YKdl7Kz9PwwO2TV4koiK9iixCoQIcFx4M/edit)
