CREATE TABLE [dbo].[Pirates]
(
	[ID] INT IDENTITY (1,1) NOT NULL,
	[Name] NVARCHAR (50) NOT NULL,
	[Conscript] DATETIME NOT NULL,
	CONSTRAINT [PK_dbo.Pirate] PRIMARY KEY CLUSTERED ([ID] ASC),
);

CREATE TABLE [dbo].[Ships]
(
	[ID] INT IDENTITY (1,1) NOT NULL,
	[Name] NVARCHAR (50) NOT NULL,
	[Type] NVARCHAR (50) NOT NULL,
	[Tonnage] DECIMAL NOT NULL,
	CONSTRAINT [PK_dbo.Ship] PRIMARY KEY CLUSTERED ([ID] ASC),
);

CREATE TABLE [dbo].[Crews]
(
	[ID] INT IDENTITY (1,1) NOT NULL,
	[PirateID] INT Not NULL,
	[ShipID] INT NOT NULL,
	[Booty] DECIMAL NOT NULL,
	CONSTRAINT [PK_dbo.Crew] PRIMARY KEY CLUSTERED ([ID] ASC),
	CONSTRAINT [FK_dbo.Crew_dbo.Ship_ID] FOREIGN KEY ([ShipID]) REFERENCES [dbo].[Ship] ([ID]),
	CONSTRAINT [FK_dbo.Crew_dbo.Pirate_ID] FOREIGN KEY ([PirateID]) REFERENCES [dbo].[Pirate] ([ID]),
);