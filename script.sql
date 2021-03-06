USE [SOEDU]
GO
/****** Object:  Table [dbo].[Sys_Users]    Script Date: 05/31/2016 09:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Users](
	[User_ID] [varchar](50) NOT NULL,
	[User_Name] [nvarchar](50) NULL,
	[IsPassword] [nvarchar](100) NULL,
	[IsName] [nvarchar](50) NULL,
	[IsSex] [bit] NULL,
	[IsAdds] [nvarchar](250) NULL,
	[IsEmail] [nvarchar](50) NULL,
	[IsMobile] [varchar](50) NULL,
	[IsDes] [nvarchar](500) NULL,
	[IsFoto] [image] NULL,
	[IsLocked] [bit] NULL,
	[IsLevel] [nvarchar](250) NULL,
	[CreateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_Sys_Users] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Course]    Script Date: 05/31/2016 09:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Course](
	[Course_ID] [varchar](50) NOT NULL,
	[Course_Name] [nvarchar](250) NULL,
	[Avatar] [image] NULL,
	[Video] [nvarchar](500) NULL,
	[Description] [ntext] NULL,
	[IsPrice] [float] NULL,
	[IsPriceSale] [float] NULL,
	[ViewCount] [int] NULL,
	[CreateDate] [smalldatetime] NULL,
	[Status] [bit] NULL,
	[IsOrder] [int] NULL,
 CONSTRAINT [PK_Sys_Course] PRIMARY KEY CLUSTERED 
(
	[Course_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_TestLesson]    Script Date: 05/31/2016 09:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_TestLesson](
	[Test_ID] [varchar](50) NOT NULL,
	[Lesson_ID] [varchar](50) NULL,
	[Test_Name] [nvarchar](250) NULL,
	[IsSetTime] [varchar](50) NULL,
 CONSTRAINT [PK_TestLesson] PRIMARY KEY CLUSTERED 
(
	[Test_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_CourseCategory]    Script Date: 05/31/2016 09:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_CourseCategory](
	[Category_ID] [varchar](50) NOT NULL,
	[Course_ID] [varchar](50) NULL,
	[Category_Name] [nvarchar](500) NULL,
	[Title_Name] [nvarchar](250) NULL,
	[IsIcon] [image] NULL,
	[Parent_ID] [varchar](50) NULL,
 CONSTRAINT [PK_Sys_CourseCategory] PRIMARY KEY CLUSTERED 
(
	[Category_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Assess]    Script Date: 05/31/2016 09:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Assess](
	[Assess_ID] [varchar](50) NOT NULL,
	[Course_ID] [varchar](50) NULL,
	[IsStar] [int] NULL,
	[Description] [nvarchar](500) NULL,
	[CreateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_Sys_Assess] PRIMARY KEY CLUSTERED 
(
	[Assess_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_TeacherCourse]    Script Date: 05/31/2016 09:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_TeacherCourse](
	[User_ID] [varchar](50) NOT NULL,
	[Course_ID] [varchar](50) NOT NULL,
	[IsSupper] [bit] NULL,
	[IsAdmin] [bit] NULL,
	[IsStatus] [bit] NULL,
	[CreateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_Sys_TeacherCourse] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC,
	[Course_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Target]    Script Date: 05/31/2016 09:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Target](
	[Target_ID] [varchar](50) NOT NULL,
	[Course_ID] [varchar](50) NULL,
	[User_ID] [varchar](50) NULL,
	[Parent_ID] [varchar](50) NULL,
	[IsStar] [int] NULL,
	[Description] [nvarchar](250) NULL,
	[CreateDate] [smalldatetime] NULL,
	[IsOrder] [int] NULL,
 CONSTRAINT [PK_Sys_Target] PRIMARY KEY CLUSTERED 
(
	[Target_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_StudentCourse]    Script Date: 05/31/2016 09:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_StudentCourse](
	[User_ID] [varchar](50) NOT NULL,
	[Course_ID] [varchar](50) NOT NULL,
	[IsStatus] [bit] NULL,
	[CreateDate] [smalldatetime] NULL,
 CONSTRAINT [PK_Sys_StudentCourse] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC,
	[Course_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Section]    Script Date: 05/31/2016 09:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Section](
	[Section_ID] [varchar](50) NOT NULL,
	[Course_ID] [varchar](50) NULL,
	[Section_Name] [nvarchar](250) NULL,
	[Title] [nvarchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[CreateDate] [smalldatetime] NULL,
	[IsOrder] [int] NULL,
	[IsStatus] [bit] NULL,
 CONSTRAINT [PK_Sys_Section] PRIMARY KEY CLUSTERED 
(
	[Section_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Lesson]    Script Date: 05/31/2016 09:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Lesson](
	[Lesson_ID] [varchar](50) NOT NULL,
	[Section_ID] [varchar](50) NULL,
	[Lesson_Name] [nvarchar](250) NULL,
	[Title] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[Video] [nvarchar](500) NULL,
	[ParentID] [varchar](50) NULL,
	[CreateDate] [smalldatetime] NULL,
	[IsOrder] [int] NULL,
	[IsStatus] [bit] NULL,
 CONSTRAINT [PK_Sys_Lesson] PRIMARY KEY CLUSTERED 
(
	[Lesson_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Sys_GetListCourseByTeacher]    Script Date: 05/31/2016 09:05:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Sys_GetListCourseByTeacher]
@User_ID VARCHAR(50)
AS
BEGIN
	SELECT 
		o.Course_ID,
		o.Avatar,
		o.Course_Name, 
		o.IsPrice, 
		o.IsPriceSale,
		t.IsName,
		t.User_ID,
		t.IsFoto,
		t.IsLevel,
		(SELECT COUNT(*) FROM [dbo].Sys_Target d WHERE d.Course_ID=o.Course_ID ) AS CountTarget,
		(SELECT COUNT(*) FROM [dbo].Sys_StudentCourse sc WHERE sc.Course_ID=o.Course_ID) AS CountStudent,
		(SELECT ((SUM(st.IsStar)/(COUNT(*)*5))*100) FROM [dbo].Sys_Target st WHERE st.Course_ID=o.Course_ID ) AS IsStar
	FROM [dbo].Sys_Course o, [dbo].Sys_TeacherCourse s, [dbo].Sys_Users t
	WHERE o.Course_ID=s.Course_ID AND s.User_ID=t.User_ID AND s.User_ID=@User_ID
END
GO
/****** Object:  StoredProcedure [dbo].[Sys_GetListCourseByStudent]    Script Date: 05/31/2016 09:05:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Sys_GetListCourseByStudent]
@User_ID VARCHAR(50)
AS
BEGIN
	SELECT 
		o.Course_ID,
		o.Avatar,
		o.Course_Name, 
		o.IsPrice, 
		o.IsPriceSale,
		t.IsName,
		t.User_ID,
		t.IsFoto,
		t.IsLevel,
		(SELECT COUNT(*) FROM [dbo].Sys_Target d WHERE d.Course_ID=o.Course_ID ) AS CountTarget,
		(SELECT COUNT(*) FROM [dbo].Sys_StudentCourse sc WHERE sc.Course_ID=o.Course_ID) AS CountStudent,
		(SELECT ((SUM(st.IsStar)/(COUNT(*)*5))*100) FROM [dbo].Sys_Target st WHERE st.Course_ID=o.Course_ID ) AS IsStar
	FROM [dbo].Sys_Course o, [dbo].Sys_TeacherCourse s, [dbo].Sys_Users t, [dbo].Sys_StudentCourse k
	WHERE o.Course_ID=s.Course_ID AND s.User_ID=t.User_ID AND o.Course_ID=k.Course_ID AND k.User_ID=@User_ID
END
GO
/****** Object:  StoredProcedure [dbo].[Sys_GetListCourse]    Script Date: 05/31/2016 09:05:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Sys_GetListCourse]
AS
BEGIN
	SELECT 
		o.Course_ID,
		o.Avatar,
		o.Course_Name, 
		o.IsPrice, 
		o.IsPriceSale,
		t.IsName,
		t.User_ID,
		t.IsFoto,
		t.IsLevel,
		(SELECT COUNT(*) FROM [dbo].Sys_Target d WHERE d.Course_ID=o.Course_ID ) AS CountTarget,
		(SELECT COUNT(*) FROM [dbo].Sys_StudentCourse sc WHERE sc.Course_ID=o.Course_ID) AS CountStudent,
		(SELECT ((SUM(st.IsStar)/(COUNT(*)*5))*100) FROM [dbo].Sys_Target st WHERE st.Course_ID=o.Course_ID ) AS IsStar
	FROM [dbo].Sys_Course o, [dbo].Sys_TeacherCourse s, [dbo].Sys_Users t
	WHERE o.Course_ID=s.Course_ID AND s.User_ID=t.User_ID AND o.Status=1
	
END
GO
/****** Object:  Table [dbo].[Sys_TestSection]    Script Date: 05/31/2016 09:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_TestSection](
	[TestSection_ID] [varchar](50) NOT NULL,
	[Section_ID] [varchar](50) NULL,
	[IsSetTime] [varchar](50) NULL,
	[Test_Name] [nvarchar](500) NULL,
 CONSTRAINT [PK_Sys_TestSection] PRIMARY KEY CLUSTERED 
(
	[TestSection_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_TestSectionAnswer]    Script Date: 05/31/2016 09:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_TestSectionAnswer](
	[Answer_ID] [varchar](50) NOT NULL,
	[TestSection_ID] [varchar](50) NULL,
	[Answer_Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_Sys_TestSectionAnswer] PRIMARY KEY CLUSTERED 
(
	[Answer_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Attach]    Script Date: 05/31/2016 09:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Attach](
	[Attach_ID] [varchar](50) NOT NULL,
	[Lesson_ID] [varchar](50) NULL,
	[File_Name] [nvarchar](250) NULL,
	[Des] [nvarchar](250) NULL,
	[FileSource] [image] NULL,
	[FileSize] [varchar](20) NULL,
	[IsOrder] [int] NULL,
 CONSTRAINT [PK_Sys_Attach] PRIMARY KEY CLUSTERED 
(
	[Attach_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_StudentTestSection]    Script Date: 05/31/2016 09:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_StudentTestSection](
	[User_ID] [varchar](50) NOT NULL,
	[TestSection_ID] [varchar](50) NOT NULL,
	[IsDate] [smalldatetime] NULL,
	[IsGetTime] [varchar](50) NULL,
 CONSTRAINT [PK_Sys_StudentTestSection] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC,
	[TestSection_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Test]    Script Date: 05/31/2016 09:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Test](
	[Test_ID] [varchar](50) NOT NULL,
	[Lesson_ID] [varchar](50) NULL,
	[Test_Name] [nvarchar](50) NULL,
	[IsSetTime] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sys_Test] PRIMARY KEY CLUSTERED 
(
	[Test_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_TestLessonAnswer]    Script Date: 05/31/2016 09:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_TestLessonAnswer](
	[Answer_ID] [varchar](50) NOT NULL,
	[Test_ID] [varchar](50) NULL,
	[Answer_Name] [nvarchar](500) NULL,
 CONSTRAINT [PK_Sys_TestLessonAnswer] PRIMARY KEY CLUSTERED 
(
	[Answer_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_StudentTest]    Script Date: 05/31/2016 09:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_StudentTest](
	[User_ID] [varchar](50) NOT NULL,
	[Test_ID] [varchar](50) NOT NULL,
	[IsDate] [datetime] NULL,
	[IsGetTime] [varchar](50) NULL,
 CONSTRAINT [PK_Sys_StudentTest] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC,
	[Test_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_TestSectionQuestion]    Script Date: 05/31/2016 09:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_TestSectionQuestion](
	[Question_ID] [varchar](50) NOT NULL,
	[Answer_ID] [varchar](50) NULL,
	[Question_Name] [nvarchar](500) NULL,
	[IsSupper] [bit] NULL,
	[IsOK] [bit] NULL,
 CONSTRAINT [PK_Sys_TestSectionQuestion] PRIMARY KEY CLUSTERED 
(
	[Question_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_TestLessonQuestion]    Script Date: 05/31/2016 09:04:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_TestLessonQuestion](
	[Question_ID] [varchar](50) NOT NULL,
	[Answer_ID] [varchar](50) NULL,
	[Question_Name] [nvarchar](250) NULL,
	[IsSupper] [bit] NULL,
	[IsOK] [bit] NULL,
 CONSTRAINT [PK_Sys_TestLessonQuestion] PRIMARY KEY CLUSTERED 
(
	[Question_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_Sys_Assess_Sys_Course]    Script Date: 05/31/2016 09:04:59 ******/
ALTER TABLE [dbo].[Sys_Assess]  WITH CHECK ADD  CONSTRAINT [FK_Sys_Assess_Sys_Course] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Sys_Course] ([Course_ID])
GO
ALTER TABLE [dbo].[Sys_Assess] CHECK CONSTRAINT [FK_Sys_Assess_Sys_Course]
GO
/****** Object:  ForeignKey [FK_Sys_Attach_Sys_Lesson]    Script Date: 05/31/2016 09:04:59 ******/
ALTER TABLE [dbo].[Sys_Attach]  WITH CHECK ADD  CONSTRAINT [FK_Sys_Attach_Sys_Lesson] FOREIGN KEY([Lesson_ID])
REFERENCES [dbo].[Sys_Lesson] ([Lesson_ID])
GO
ALTER TABLE [dbo].[Sys_Attach] CHECK CONSTRAINT [FK_Sys_Attach_Sys_Lesson]
GO
/****** Object:  ForeignKey [FK_Sys_CourseCategory_Sys_Course]    Script Date: 05/31/2016 09:04:59 ******/
ALTER TABLE [dbo].[Sys_CourseCategory]  WITH CHECK ADD  CONSTRAINT [FK_Sys_CourseCategory_Sys_Course] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Sys_Course] ([Course_ID])
GO
ALTER TABLE [dbo].[Sys_CourseCategory] CHECK CONSTRAINT [FK_Sys_CourseCategory_Sys_Course]
GO
/****** Object:  ForeignKey [FK_Sys_CourseCategory_Sys_CourseCategory]    Script Date: 05/31/2016 09:04:59 ******/
ALTER TABLE [dbo].[Sys_CourseCategory]  WITH CHECK ADD  CONSTRAINT [FK_Sys_CourseCategory_Sys_CourseCategory] FOREIGN KEY([Parent_ID])
REFERENCES [dbo].[Sys_CourseCategory] ([Category_ID])
GO
ALTER TABLE [dbo].[Sys_CourseCategory] CHECK CONSTRAINT [FK_Sys_CourseCategory_Sys_CourseCategory]
GO
/****** Object:  ForeignKey [FK_Sys_Lesson_Sys_Lesson1]    Script Date: 05/31/2016 09:04:59 ******/
ALTER TABLE [dbo].[Sys_Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Sys_Lesson_Sys_Lesson1] FOREIGN KEY([ParentID])
REFERENCES [dbo].[Sys_Lesson] ([Lesson_ID])
GO
ALTER TABLE [dbo].[Sys_Lesson] CHECK CONSTRAINT [FK_Sys_Lesson_Sys_Lesson1]
GO
/****** Object:  ForeignKey [FK_Sys_Lesson_Sys_Section]    Script Date: 05/31/2016 09:04:59 ******/
ALTER TABLE [dbo].[Sys_Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Sys_Lesson_Sys_Section] FOREIGN KEY([Section_ID])
REFERENCES [dbo].[Sys_Section] ([Section_ID])
GO
ALTER TABLE [dbo].[Sys_Lesson] CHECK CONSTRAINT [FK_Sys_Lesson_Sys_Section]
GO
/****** Object:  ForeignKey [FK_Sys_Section_Sys_Course]    Script Date: 05/31/2016 09:04:59 ******/
ALTER TABLE [dbo].[Sys_Section]  WITH CHECK ADD  CONSTRAINT [FK_Sys_Section_Sys_Course] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Sys_Course] ([Course_ID])
GO
ALTER TABLE [dbo].[Sys_Section] CHECK CONSTRAINT [FK_Sys_Section_Sys_Course]
GO
/****** Object:  ForeignKey [FK_Sys_StudentCourse_Sys_Course]    Script Date: 05/31/2016 09:04:59 ******/
ALTER TABLE [dbo].[Sys_StudentCourse]  WITH CHECK ADD  CONSTRAINT [FK_Sys_StudentCourse_Sys_Course] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Sys_Course] ([Course_ID])
GO
ALTER TABLE [dbo].[Sys_StudentCourse] CHECK CONSTRAINT [FK_Sys_StudentCourse_Sys_Course]
GO
/****** Object:  ForeignKey [FK_Sys_StudentCourse_Sys_Users]    Script Date: 05/31/2016 09:04:59 ******/
ALTER TABLE [dbo].[Sys_StudentCourse]  WITH CHECK ADD  CONSTRAINT [FK_Sys_StudentCourse_Sys_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Sys_Users] ([User_ID])
GO
ALTER TABLE [dbo].[Sys_StudentCourse] CHECK CONSTRAINT [FK_Sys_StudentCourse_Sys_Users]
GO
/****** Object:  ForeignKey [FK_Sys_StudentTest_Sys_Test]    Script Date: 05/31/2016 09:04:59 ******/
ALTER TABLE [dbo].[Sys_StudentTest]  WITH CHECK ADD  CONSTRAINT [FK_Sys_StudentTest_Sys_Test] FOREIGN KEY([Test_ID])
REFERENCES [dbo].[Sys_Test] ([Test_ID])
GO
ALTER TABLE [dbo].[Sys_StudentTest] CHECK CONSTRAINT [FK_Sys_StudentTest_Sys_Test]
GO
/****** Object:  ForeignKey [FK_Sys_StudentTest_Sys_Users]    Script Date: 05/31/2016 09:04:59 ******/
ALTER TABLE [dbo].[Sys_StudentTest]  WITH CHECK ADD  CONSTRAINT [FK_Sys_StudentTest_Sys_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Sys_Users] ([User_ID])
GO
ALTER TABLE [dbo].[Sys_StudentTest] CHECK CONSTRAINT [FK_Sys_StudentTest_Sys_Users]
GO
/****** Object:  ForeignKey [FK_Sys_StudentTest_TestLesson]    Script Date: 05/31/2016 09:04:59 ******/
ALTER TABLE [dbo].[Sys_StudentTest]  WITH CHECK ADD  CONSTRAINT [FK_Sys_StudentTest_TestLesson] FOREIGN KEY([Test_ID])
REFERENCES [dbo].[Sys_TestLesson] ([Test_ID])
GO
ALTER TABLE [dbo].[Sys_StudentTest] CHECK CONSTRAINT [FK_Sys_StudentTest_TestLesson]
GO
/****** Object:  ForeignKey [FK_Sys_StudentTestSection_Sys_TestSection]    Script Date: 05/31/2016 09:04:59 ******/
ALTER TABLE [dbo].[Sys_StudentTestSection]  WITH CHECK ADD  CONSTRAINT [FK_Sys_StudentTestSection_Sys_TestSection] FOREIGN KEY([TestSection_ID])
REFERENCES [dbo].[Sys_TestSection] ([TestSection_ID])
GO
ALTER TABLE [dbo].[Sys_StudentTestSection] CHECK CONSTRAINT [FK_Sys_StudentTestSection_Sys_TestSection]
GO
/****** Object:  ForeignKey [FK_Sys_StudentTestSection_Sys_Users]    Script Date: 05/31/2016 09:04:59 ******/
ALTER TABLE [dbo].[Sys_StudentTestSection]  WITH CHECK ADD  CONSTRAINT [FK_Sys_StudentTestSection_Sys_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Sys_Users] ([User_ID])
GO
ALTER TABLE [dbo].[Sys_StudentTestSection] CHECK CONSTRAINT [FK_Sys_StudentTestSection_Sys_Users]
GO
/****** Object:  ForeignKey [FK_Sys_Target_Sys_Course]    Script Date: 05/31/2016 09:04:59 ******/
ALTER TABLE [dbo].[Sys_Target]  WITH CHECK ADD  CONSTRAINT [FK_Sys_Target_Sys_Course] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Sys_Course] ([Course_ID])
GO
ALTER TABLE [dbo].[Sys_Target] CHECK CONSTRAINT [FK_Sys_Target_Sys_Course]
GO
/****** Object:  ForeignKey [FK_Sys_Target_Sys_Target]    Script Date: 05/31/2016 09:04:59 ******/
ALTER TABLE [dbo].[Sys_Target]  WITH CHECK ADD  CONSTRAINT [FK_Sys_Target_Sys_Target] FOREIGN KEY([Parent_ID])
REFERENCES [dbo].[Sys_Target] ([Target_ID])
GO
ALTER TABLE [dbo].[Sys_Target] CHECK CONSTRAINT [FK_Sys_Target_Sys_Target]
GO
/****** Object:  ForeignKey [FK_Sys_Target_Sys_Users]    Script Date: 05/31/2016 09:04:59 ******/
ALTER TABLE [dbo].[Sys_Target]  WITH CHECK ADD  CONSTRAINT [FK_Sys_Target_Sys_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Sys_Users] ([User_ID])
GO
ALTER TABLE [dbo].[Sys_Target] CHECK CONSTRAINT [FK_Sys_Target_Sys_Users]
GO
/****** Object:  ForeignKey [FK_Sys_TeacherCourse_Sys_Course]    Script Date: 05/31/2016 09:04:59 ******/
ALTER TABLE [dbo].[Sys_TeacherCourse]  WITH CHECK ADD  CONSTRAINT [FK_Sys_TeacherCourse_Sys_Course] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Sys_Course] ([Course_ID])
GO
ALTER TABLE [dbo].[Sys_TeacherCourse] CHECK CONSTRAINT [FK_Sys_TeacherCourse_Sys_Course]
GO
/****** Object:  ForeignKey [FK_Sys_TeacherCourse_Sys_Users]    Script Date: 05/31/2016 09:04:59 ******/
ALTER TABLE [dbo].[Sys_TeacherCourse]  WITH CHECK ADD  CONSTRAINT [FK_Sys_TeacherCourse_Sys_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Sys_Users] ([User_ID])
GO
ALTER TABLE [dbo].[Sys_TeacherCourse] CHECK CONSTRAINT [FK_Sys_TeacherCourse_Sys_Users]
GO
/****** Object:  ForeignKey [FK_Sys_Test_Sys_Lesson]    Script Date: 05/31/2016 09:04:59 ******/
ALTER TABLE [dbo].[Sys_Test]  WITH CHECK ADD  CONSTRAINT [FK_Sys_Test_Sys_Lesson] FOREIGN KEY([Lesson_ID])
REFERENCES [dbo].[Sys_Lesson] ([Lesson_ID])
GO
ALTER TABLE [dbo].[Sys_Test] CHECK CONSTRAINT [FK_Sys_Test_Sys_Lesson]
GO
/****** Object:  ForeignKey [FK_Sys_TestLessonAnswer_Sys_Test]    Script Date: 05/31/2016 09:04:59 ******/
ALTER TABLE [dbo].[Sys_TestLessonAnswer]  WITH CHECK ADD  CONSTRAINT [FK_Sys_TestLessonAnswer_Sys_Test] FOREIGN KEY([Test_ID])
REFERENCES [dbo].[Sys_Test] ([Test_ID])
GO
ALTER TABLE [dbo].[Sys_TestLessonAnswer] CHECK CONSTRAINT [FK_Sys_TestLessonAnswer_Sys_Test]
GO
/****** Object:  ForeignKey [FK_Sys_TestLessonAnswer_TestLesson]    Script Date: 05/31/2016 09:04:59 ******/
ALTER TABLE [dbo].[Sys_TestLessonAnswer]  WITH CHECK ADD  CONSTRAINT [FK_Sys_TestLessonAnswer_TestLesson] FOREIGN KEY([Test_ID])
REFERENCES [dbo].[Sys_TestLesson] ([Test_ID])
GO
ALTER TABLE [dbo].[Sys_TestLessonAnswer] CHECK CONSTRAINT [FK_Sys_TestLessonAnswer_TestLesson]
GO
/****** Object:  ForeignKey [FK_Sys_TestLessonQuestion_Sys_TestLessonAnswer]    Script Date: 05/31/2016 09:04:59 ******/
ALTER TABLE [dbo].[Sys_TestLessonQuestion]  WITH CHECK ADD  CONSTRAINT [FK_Sys_TestLessonQuestion_Sys_TestLessonAnswer] FOREIGN KEY([Answer_ID])
REFERENCES [dbo].[Sys_TestLessonAnswer] ([Answer_ID])
GO
ALTER TABLE [dbo].[Sys_TestLessonQuestion] CHECK CONSTRAINT [FK_Sys_TestLessonQuestion_Sys_TestLessonAnswer]
GO
/****** Object:  ForeignKey [FK_Sys_TestSection_Sys_Section]    Script Date: 05/31/2016 09:04:59 ******/
ALTER TABLE [dbo].[Sys_TestSection]  WITH CHECK ADD  CONSTRAINT [FK_Sys_TestSection_Sys_Section] FOREIGN KEY([Section_ID])
REFERENCES [dbo].[Sys_Section] ([Section_ID])
GO
ALTER TABLE [dbo].[Sys_TestSection] CHECK CONSTRAINT [FK_Sys_TestSection_Sys_Section]
GO
/****** Object:  ForeignKey [FK_Sys_TestSectionAnswer_Sys_TestSection]    Script Date: 05/31/2016 09:04:59 ******/
ALTER TABLE [dbo].[Sys_TestSectionAnswer]  WITH CHECK ADD  CONSTRAINT [FK_Sys_TestSectionAnswer_Sys_TestSection] FOREIGN KEY([TestSection_ID])
REFERENCES [dbo].[Sys_TestSection] ([TestSection_ID])
GO
ALTER TABLE [dbo].[Sys_TestSectionAnswer] CHECK CONSTRAINT [FK_Sys_TestSectionAnswer_Sys_TestSection]
GO
/****** Object:  ForeignKey [FK_Sys_TestSectionQuestion_Sys_TestSectionAnswer]    Script Date: 05/31/2016 09:04:59 ******/
ALTER TABLE [dbo].[Sys_TestSectionQuestion]  WITH CHECK ADD  CONSTRAINT [FK_Sys_TestSectionQuestion_Sys_TestSectionAnswer] FOREIGN KEY([Answer_ID])
REFERENCES [dbo].[Sys_TestSectionAnswer] ([Answer_ID])
GO
ALTER TABLE [dbo].[Sys_TestSectionQuestion] CHECK CONSTRAINT [FK_Sys_TestSectionQuestion_Sys_TestSectionAnswer]
GO
