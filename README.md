
#Starting Development on Anslem Galaxy

________

##First Steps

Starting development on Anslem Galaxy does require a bit of forethought and preparation.  Firstly, you will need a designated development "box" or computer with a designated workspace. You will need to get a computer ("dev box") running on the ubuntu operating system. 
 
>1. Open an account (or log into an existing account) on Amazon Web Services (aws.amazon.com).   This isn't much different from opening any other account, including email, on the internet.  Retain your user name and password. 
>2. Sign in to your console in Amazon Web Services (hereforward referred to as "aws".  On the upper left hand side of the screen that follows, under the heading "Compute" will be the option "E2".  Click this.
>3.  The next screen will be your "Resouces" screen.  Click "Launch Instance"
>4.  This will bring you to the following screen: "Step 1: Choose an Amazon Machine Image (A<I)"
>     You will want to choose the fourth item from the top (at the time of this readme's inception), "Ubuntu"
>5.  Click "Configure Instance Details" 
>6.  Choose the top option in the next screen, and click "Review and Launch"
>7.  On this screen "Step 4" make sure to choose 8 gig of memory.  Click "Review and Launch" 
>8.  "Step 6: Configure Security Group".  This screen will default to having SSH (Port 22).  Click "Add Rule" and add HTTP (Port 80)

