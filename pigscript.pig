/*
Akash Bhargava
18210613
akash.bhargava2@mail.dcu.ie
*/


REGISTER piggybank.jar;


DEFINE CSVLoader

org.apache.pig.piggybank.storage.CSVLoader();

A = LOAD '/F5' USING CSVLoader(',') AS (Id:int, PostTypeId:int, AcceptedAnswerId:int, ParentId:int, CreationDate:datetime, DeletionDate:datetime, Score:int, ViewCount:int, Body:chararray, OwnerUserId:int, OwnerDisplayName:chararray, LastEditorUserId:int, LastEditorDisplayName: chararray, LastEditDate:datetime, LastActivityDate:datetime, Title:chararray, Tags:chararray, AnswerCount:int, CommentCount:int, FavoriteCount:int, ClosedDate:chararray);

B = FOREACH A GENERATE Id, PostTypeId, Score, ViewCount, OwnerUserId, OwnerDisplayName, Title;

DUMP B;

STORE B INTO '/FinalHive' USING PigStorage('*');