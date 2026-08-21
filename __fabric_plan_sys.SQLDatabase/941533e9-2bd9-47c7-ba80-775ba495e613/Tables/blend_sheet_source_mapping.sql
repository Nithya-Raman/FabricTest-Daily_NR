CREATE TABLE [941533e9-2bd9-47c7-ba80-775ba495e613].[blend_sheet_source_mapping] (
    [id]           INT            IDENTITY (1, 1) NOT NULL,
    [blendSheetId] NVARCHAR (128) NOT NULL,
    [sourceId]     VARCHAR (255)  NOT NULL,
    [sourceType]   INT            NOT NULL,
    [createdAt]    INT            NOT NULL,
    [updatedAt]    INT            NOT NULL,
    [createdBy]    NVARCHAR (128) NOT NULL,
    [updatedBy]    NVARCHAR (128) NOT NULL,
    CONSTRAINT [PK_blend_sheet_source_mapping] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_blend_sheet_source_mapping_blendSheetId] FOREIGN KEY ([blendSheetId]) REFERENCES [941533e9-2bd9-47c7-ba80-775ba495e613].[blend_sheets] ([id]) ON DELETE CASCADE
);


GO

CREATE NONCLUSTERED INDEX [idx_blend_sheet_source_mapping_blendSheetId]
    ON [941533e9-2bd9-47c7-ba80-775ba495e613].[blend_sheet_source_mapping]([blendSheetId] ASC);


GO

CREATE NONCLUSTERED INDEX [idx_blend_sheet_source_mapping_sourceId]
    ON [941533e9-2bd9-47c7-ba80-775ba495e613].[blend_sheet_source_mapping]([sourceId] ASC);


GO

