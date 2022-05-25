USE [SEDCACADEMYDB]

CREATE TABLE [Student] (
	[Id][int] IDENTITY(1,1) NOT NULL,
	[FirstName][nvarchar](100) NULL,
	[LastName][nvarchar](100) NULL,
	[DateOfBirth][date] NULL,
	[EnrolledDate][date] NULL,
	[Gender][nchar](1) NULL,
	[NationalIDNumber][nvarchar](20) NULL,
	[StudentCardNumber][nvarchar](20) NULL,
	CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED([Id] ASC)

)



INSERT INTO [Student]([FirstName], [LastName], [DateOfBirth], [EnrolledDate], [Gender], [NationalIDNumber], [StudentCardNumber])
VALUES ('Tome', 'Naumov', '1991-01-01', '2022-01-01', 'M', '24053234566', '11234')

SELECT * FROM [Student]



CREATE TABLE [Teacher] (
	[Id][int] IDENTITY(1,1) NOT NULL,
	[FirstName][nvarchar](100) NULL,
	[LastName][nvarchar](100) NULL,	
	[DateOfBirth][date] NULL,
	[AcademyRank][nvarchar](50) NULL,
	[HireDate][date] NULL,
	CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED([Id] ASC)
)

INSERT INTO [Teacher]([FirstName], [LastName], [DateOfBirth], [AcademyRank], [HireDate])
VALUES ('Pavle', 'Naumovska', '1985-07-21', 'High', '2002-01-01')

SELECT * FROM [Teacher]

CREATE TABLE [Grade] (
	[Id][int] IDENTITY(1,1) NOT NULL,
	[StudentID][int] NOT NULL,
	[CourseID][int]NOT NULL,
	[TeacherID][int]NOT NULL,
	[Grade][bigint] NULL,
	[Comment][nvarchar](MAX) NULL,
	[CreatedDate][date] NULL,
	CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED([Id] ASC)

	
)






CREATE TABLE [Course] (
	[Id][int] IDENTITY(1,1) NOT NULL,
	[Name][nvarchar](100) NULL,
	[AcademyYear][date] NULL,
	[Semester][int] NULL,
	CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED([Id] ASC)
)

CREATE TABLE [GradeDetails] (
	[Id][int] IDENTITY(1,1) NOT NULL,
	[GradeID][int]NOT NULL,
	[AchievementTypeID][int]NOT NULL,
	[AchievementPoints][int] NULL,
	[AchievementMaxPoints][int] NULL,
	[AchievementDate][date]NULL,
	CONSTRAINT [PK_GradeDetails] PRIMARY KEY CLUSTERED([Id] ASC)

)

CREATE TABLE [AchievementType] (
	[Id][int] IDENTITY(1,1) NOT NULL,
	[Name][nvarchar](100) NULL,
	[Description][nvarchar](MAX) NULL,
	[ParticipationRate][nvarchar](100) NULL,
	CONSTRAINT [PK_AchievementType] PRIMARY KEY CLUSTERED([Id] ASC)

)