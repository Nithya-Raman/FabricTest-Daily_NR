CREATE TABLE [360fbcff-9765-401b-bab5-f274bb9c4d6c].[powertable_audit_sync_status] (
    [id]                  INT            IDENTITY (1, 1) NOT NULL,
    [sourceId]            INT            NOT NULL,
    [syncStatus]          NVARCHAR (50)  NULL,
    [lastSyncSucceededAt] INT            NULL,
    [attemptedAt]         INT            NULL,
    [status]              INT            DEFAULT ((10)) NOT NULL,
    [createdAt]           INT            NOT NULL,
    [createdBy]           NVARCHAR (255) NOT NULL,
    [updatedAt]           INT            NOT NULL,
    [updatedBy]           NVARCHAR (255) NOT NULL,
    CONSTRAINT [PK_powertable_audit_sync_status] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [UQ_powertable_audit_sync_status_source] UNIQUE NONCLUSTERED ([sourceId] ASC)
);


GO

