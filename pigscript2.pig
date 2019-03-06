
/*
Akash Bhargava
18210613
akash.bhargava2@mail.dcu.ie
*/

A = LOAD '/Final' using PigStorage('*') AS (id:int,posttypeid:int, score:int, viewcount:int, owneruserid:int, ownerdisplayname:chararray, title:chararray);

STORE A INTO 'pig.posts' USING org.apache.hive.hcatalog.pig.HCatStorer();