CREATE TABLE [360fbcff-9765-401b-bab5-f274bb9c4d6c].[visual] (
    [id]                   INT              IDENTITY (1, 1) NOT NULL,
    [visualMeta]           NVARCHAR (MAX)   NULL,
    [filterContextMapping] NVARCHAR (MAX)   NULL,
    [status]               INT              CONSTRAINT [DF_5a2f86a2e2fe042955704a0fc3f] DEFAULT ((10)) NOT NULL,
    [createdBy]            NVARCHAR (128)   NOT NULL,
    [updatedBy]            NVARCHAR (128)   NOT NULL,
    [createdAt]            INT              NOT NULL,
    [updatedAt]            INT              NOT NULL,
    [recordGuid]           UNIQUEIDENTIFIER CONSTRAINT [DF_visual_recordGuid] DEFAULT (newsequentialid()) NOT NULL,
    CONSTRAINT [PK_af8132b2ef744e2703ea70799cc] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO

CREATE UNIQUE NONCLUSTERED INDEX [UQ_visual_recordGuid]
    ON [360fbcff-9765-401b-bab5-f274bb9c4d6c].[visual]([recordGuid] ASC);


GO

