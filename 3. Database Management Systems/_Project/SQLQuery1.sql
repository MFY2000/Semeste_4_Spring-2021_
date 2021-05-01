CREATE DATABASE Portfolio_Maker;

use Portfolio_Maker;

CREATE TABLE admin_users (
  username varchar(250) NOT NULL,
  user_id varchar(10) NOT NULL,
  user_pass varchar(250) NOT NULL,
  user_access tinyint(1) NOT NULL DEFAULT 1
)

CREATE TABLE aboutus_setup (
  user_id varchar(10) NOT NULL,
   shortdesc text NOT NULL,
  heading text NOT NULL,
  subheading text NOT NULL,
  longdesc text NOT NULL,
  website varchar(250) NOT NULL,
  dob varchar(250) NOT NULL
)

CREATE TABLE basic_setup (
  user_id varchar(10) NOT NULL,
   title varchar(250) NOT NULL,
  description text NOT NULL,
  keyword text NOT NULL,
  icon varchar(250) NOT NULL
)

CREATE TABLE contact (
  user_id varchar(10) NOT NULL,
   cname varchar(250) NOT NULL,
  cemail varchar(250) NOT NULL,
  csubject text NOT NULL,
  cmessage text NOT NULL
)

CREATE TABLE personal_setup (
  user_id varchar(10) NOT NULL,
   profilepic varchar(250) NOT NULL,
  name varchar(250) NOT NULL,
  twitter varchar(200) NOT NULL,
  facebook varchar(200) NOT NULL,
  instagram varchar(200) NOT NULL,
  skype varchar(200) NOT NULL,
  linkedin varchar(200) NOT NULL,
  github varchar(200) NOT NULL,
  homewallpaper varchar(200) NOT NULL,
  professions varchar(200) NOT NULL,
  location text NOT NULL,
  mobile varchar(200) NOT NULL,
  emailuser_id varchar(200) NOT NULL
)


CREATE TABLE portfolio (
  user_id varchar(10) NOT NULL,
   projectname varchar(250) NOT NULL,
  projectpic varchar(250) NOT NULL,
  projectlink text NOT NULL
)

CREATE TABLE resume (
  user_id varchar(10) NOT NULL,
   category varchar(250) NOT NULL,
  title varchar(250) NOT NULL,
  year varchar(250) NOT NULL,
  ogname varchar(250) NOT NULL,
  workdesc text NOT NULL
)

CREATE TABLE skills (
  user_id varchar(10) NOT NULL,
  skill varchar(250) NOT NULL,
  score varchar(250) NOT NULL
)


CREATE TABLE userinfo (
  user_id varchar(10) NOT NULL,
  userq varchar(250) NOT NULL,
  userv varchar(250) NOT NULL
)


-- Indexes for table admin_users
--
ALTER TABLE admin_users
  ADD PRIMARY KEY (user_id);

