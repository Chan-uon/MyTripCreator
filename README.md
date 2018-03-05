# MyTripCreator
MyTripCreator is a simple web service (API) for managing trips.
The project uses **Laravel** framework and **Xampp** development
environment on a **Windows** operating system.

## Instructions
### Prerequisites
If you do not have xampp, git, or composer installed,
you can download and install them from the following links.<br/>
The project requires PHP 7.0  and greater.
* [xampp](https://www.apachefriends.org/index.html)
* [git](https://git-scm.com/downloads)
* [composer](https://getcomposer.org/download/)

### Getting Started
Once xampp is installed, you can clone the project into:<br/>
**c:\\xampp\\htdocs\\**

To clone the project, open your git bash from within that directory
and input the following command:<br/>
**`git clone https://github.com/Chan-uon/MyTripCreator.git`**

Go into the project directory.<br/>
**c:\\xampp\\htdocs\\MyTripCreator\\laravel\\**<br/>
You will need to rename **`.env.example`**  to  **`.env`**<br/>
To do this, open your command prompt and type in the following command:<br/>
**`move .env.example .env`**<br/>
Next, open the **.env** using a file editor of your choice
and change the database information.
Then, in your command prompt, run the following commands:<br/>
**`composer install`**<br/>
**`php artisan key:generate`**<br/>

Aftwards, go into the following directory:<br/>
**c:\\xampp\\htdocs\\MyTripCreator**<br/>
Copy **project_trip_creator.sql** and paste this file into:<br/>
**C:\xampp\mysql\bin**<br/>

While you are in that directory. You will need to import
the database by running the following command in the command prompt:<br/>
**`mysql.exe -u username -p database_name < project_trip_creator.sql`**<br/>

To run the project, simply enter the following url into your browser.<br/>
**localhost/MyTripCreator/laravel/public**<br/>
Once the project is running. You can navigate to the registration page
and register yourself. After registration, you will be redirected to the home page.
The home page will display the list of available flights.<br/>

**NOTE- If this is your first time logging in, you will need to
refresh the home page once to generate the list of flights.
Flights are randomly generated after the initial refresh.**<br/>

### Optional
If you wish to  to configure the domain **laravel.test** for your project.<br/>
You can follow the next few steps. Otherwise ignore this section.<br/>

We will need to edit **httpd-vhosts.conf**. This file is located in<br/>
**C:\\xampp\\apache\\conf\\extra\\httpd-vhosts.conf**<br/>
We will need  add following lines at the end of the file:
```
# VirtualHost for LARAVEL.TEST
<VirtualHost laravel.test:80>
    DocumentRoot "C:\xampp\htdocs\MyTripCreator\laravel\public"
    ServerAdmin laravel.test
    <Directory "C:\xampp\htdocs\MyTripCreator\laravel">
         Options Indexes FollowSymLinks
         AllowOverride All
         Require all granted
    </Directory>
</VirtualHost>
```
Next, we will need to edit **hosts** file that will allow us to
redirect **laravel.test** to the **localhost**.<br/>
The file is located in:<br/>
**C:\\Windows\\System32\\drivers\\etc**

**NOTE: To edit this file, you may need administrative access.**
```
# localhost name resolution is handled within DNS itself.
# 127.0.0.1 localhost
# ::1 localhost

127.0.0.1 laravel.test
```