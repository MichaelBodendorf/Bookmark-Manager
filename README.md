# Bookmark-Manager

The website will have the following specification:

* Show a list of bookmarks
* Add new bookmarks
* Delete bookmarks
* Update bookmarks
* Comment on bookmarks
* Tag bookmarks into categories
* Filter bookmarks by tag
* Users are restricted to manage only their own bookmarks


User story #1
As a user
So that I can see all of my bookmarks
I want to be able to see a list of the bookmarks

<img width="933" alt="Screenshot 2022-01-17 at 14 23 25" src="https://user-images.githubusercontent.com/95214579/149787066-efbc9c00-6b8c-4a9f-8b7c-3db0ba99bc41.png">

Create Database:

* Connect to psql
* Create the database using the psql command CREATE DATABASE bookmark_manager;
* Connect to the database using the pqsl command \c bookmark_manager;
* Run the query we have saved in the file 01_create_bookmarks_table.sql

Create test Database:

* Connect to psql
* Create the database using the psql command CREATE DATABASE bookmark_manager_test;
* Connect to the database using the pqsl command \c bookmark_manager_test;
* Run the query we have saved in the file 01_create_bookmarks_table_test.sql

User story #2

As a user
So that I can save new websites that I find
I want to be able to add them to my bookmarks