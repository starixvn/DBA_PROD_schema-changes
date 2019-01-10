/*
	Creator:	20190110@Leo
	Task:		Schema creation auto assignment - [Redmine: #106196]
	Server:		DBOWP
*/


-- create table AutoAssignmentBettype
CREATE TABLE [dbo].[AutoAssignmentRequest] (
    [RequestId]   VARCHAR (50) NOT NULL,
    [EventDate]   DATE         NOT NULL,
    [Status]      INT          NOT NULL,
    [CreatedDate] DATETIME     CONSTRAINT [DF_AutoAssignmentRequest_CreatedDate] DEFAULT (getdate()) NOT NULL,
    [CreatorId]   INT          NOT NULL,
    CONSTRAINT [PK_AutoAssignmentRequest] PRIMARY KEY CLUSTERED ([RequestId] ASC)
);
GO

CREATE NONCLUSTERED INDEX [IX_AutoAssignmentRequest_CreatedDate]
    ON [dbo].[AutoAssignmentRequest]([CreatedDate] DESC)
    ON [OWP_Index];
GO

-- create table AutoAssignmentResult
CREATE TABLE [dbo].[AutoAssignmentResult] (
    [RequestId]  VARCHAR (50) NOT NULL,
    [OWPMatchId] INT          NOT NULL,
    [Bettype]    INT          NOT NULL,
    [UserId]     INT          NULL,
    CONSTRAINT [PK_AutoAssignmentResult] PRIMARY KEY CLUSTERED ([RequestId] ASC, [OWPMatchId] ASC, [Bettype] ASC)
);
GO
