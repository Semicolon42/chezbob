create table users
(
  userid int            not null               ,
  username varchar      not null               ,
  email varchar         not null               ,
  userbarcode varchar	,	
  nickname varchar      ,

  primary key (userid),
  unique (username),
  unique (userbarcode),
  constraint valid_email check (email ~~ '%@%')
);
