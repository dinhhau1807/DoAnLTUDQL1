USE [master]
GO
/****** Object:  Database [QLThiTracNghiem]    Script Date: 04/01/2020 1:11:58 SA ******/
CREATE DATABASE [QLThiTracNghiem]
GO
USE [QLThiTracNghiem]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 04/01/2020 1:11:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[AnswerId] [int] NOT NULL,
	[QuestionId] [int] NOT NULL,
	[Content] [nvarchar](max) NULL,
	[IsCorrect] [bit] NULL,
 CONSTRAINT [PK__Answer__D482500484526F93] PRIMARY KEY CLUSTERED 
(
	[AnswerId] ASC,
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnswerDistribute]    Script Date: 04/01/2020 1:11:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnswerDistribute](
	[AnswerDistributeId] [int] NOT NULL,
	[QuestionDistributeId] [int] NOT NULL,
	[Content] [nvarchar](max) NULL,
	[IsCorrect] [bit] NULL,
 CONSTRAINT [PK__AnswerDi__FE8769D9AE0AC57F] PRIMARY KEY CLUSTERED 
(
	[AnswerDistributeId] ASC,
	[QuestionDistributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Classroom]    Script Date: 04/01/2020 1:11:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classroom](
	[ClassroomId] [varchar](10) NOT NULL,
	[GradeId] [int] NOT NULL,
	[ClassName] [nvarchar](50) NULL,
	[Year] [int] NULL,
 CONSTRAINT [PK__Classroo__11618EAA905DF4A0] PRIMARY KEY CLUSTERED 
(
	[ClassroomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 04/01/2020 1:11:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[ExamId] [varchar](10) NOT NULL,
	[ExamName] [nvarchar](50) NULL,
	[IsPacticeExam] [bit] NULL,
 CONSTRAINT [PK__Exams__297521C766BCE530] PRIMARY KEY CLUSTERED 
(
	[ExamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamCode]    Script Date: 04/01/2020 1:11:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamCode](
	[ExamCodeId] [varchar](10) NOT NULL,
	[NumberOfQuestions] [int] NULL,
	[SubjectId] [varchar](10) NOT NULL,
	[GradeId] [int] NOT NULL,
	[IsPracticeExam] [bit] NULL,
 CONSTRAINT [PK__ExamCode__C23C701A6F3C9A98] PRIMARY KEY CLUSTERED 
(
	[ExamCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamCode_Question]    Script Date: 04/01/2020 1:11:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamCode_Question](
	[ExamCodeId] [varchar](10) NOT NULL,
	[QuestionId] [int] NOT NULL,
 CONSTRAINT [PK__ExamCode__12E076E02E1E9C4E] PRIMARY KEY CLUSTERED 
(
	[ExamCodeId] ASC,
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamDetail]    Script Date: 04/01/2020 1:11:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamDetail](
	[ExamDetailId] [varchar](10) NOT NULL,
	[ExamId] [varchar](10) NOT NULL,
	[StartTime] [datetime] NULL,
	[Duration] [int] NULL,
	[SubjectId] [varchar](10) NOT NULL,
	[GradeId] [int] NOT NULL,
 CONSTRAINT [PK__ExamDeta__D30D63A5D444D2DC] PRIMARY KEY CLUSTERED 
(
	[ExamDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamResult]    Script Date: 04/01/2020 1:11:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamResult](
	[ExamDetailId] [varchar](10) NOT NULL,
	[StudentId] [varchar](10) NOT NULL,
	[NumberOfQuestionsAnswered] [int] NULL,
	[NumberOfCorrectAnswers] [int] NULL,
	[Mark] [float] NULL,
	[ExamCodeId] [varchar](10) NOT NULL,
 CONSTRAINT [PK_ExamResult] PRIMARY KEY CLUSTERED 
(
	[ExamDetailId] ASC,
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamTake]    Script Date: 04/01/2020 1:11:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamTake](
	[ExamDetailId] [varchar](10) NOT NULL,
	[StudentId] [varchar](10) NOT NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[ExamCodeId] [varchar](10) NULL,
 CONSTRAINT [PK_ExamTake] PRIMARY KEY CLUSTERED 
(
	[ExamDetailId] ASC,
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 04/01/2020 1:11:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[GradeId] [int] NOT NULL,
	[GradeName] [nvarchar](50) NULL,
 CONSTRAINT [PK__Grades__54F87A57317443B3] PRIMARY KEY CLUSTERED 
(
	[GradeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 04/01/2020 1:11:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[QuestionId] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[Hint] [text] NULL,
	[SubjectId] [varchar](10) NOT NULL,
	[GradeId] [int] NOT NULL,
	[DifficultLevel] [int] NULL,
	[IsDistributed] [bit] NULL,
	[NumberOfCorrectAnswers] [int] NULL,
	[NumberOfWrongAnswers] [int] NULL,
 CONSTRAINT [PK__Question__0DC06FACC7235C0E] PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionDistribute]    Script Date: 04/01/2020 1:11:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionDistribute](
	[QuestionDistributeId] [int] NOT NULL,
	[StudentId] [varchar](10) NULL,
	[Content] [nvarchar](max) NULL,
	[Hint] [nvarchar](max) NULL,
	[SubjectId] [varchar](10) NOT NULL,
	[GradeId] [int] NOT NULL,
	[DifficultLevel] [int] NOT NULL,
	[IsApproved] [bit] NULL,
 CONSTRAINT [PK__Question__282A3E7A6B8CDAA9] PRIMARY KEY CLUSTERED 
(
	[QuestionDistributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleType]    Script Date: 04/01/2020 1:11:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleType](
	[RoleTypeId] [int] NOT NULL,
	[RoleName] [nvarchar](50) NULL,
 CONSTRAINT [PK__RoleType__3E697319A82B6833] PRIMARY KEY CLUSTERED 
(
	[RoleTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 04/01/2020 1:11:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentId] [varchar](10) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[ClassroomId] [varchar](10) NULL,
 CONSTRAINT [PK__Students__32C52B9985113C14] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [u_Students_Username] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 04/01/2020 1:11:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectId] [varchar](10) NOT NULL,
	[GradeId] [int] NOT NULL,
	[SubjectName] [nvarchar](50) NULL,
 CONSTRAINT [PK__Subjects__AC1BA3A83AC3C4A6] PRIMARY KEY CLUSTERED 
(
	[SubjectId] ASC,
	[GradeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teach]    Script Date: 04/01/2020 1:11:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teach](
	[TeacherId] [varchar](10) NOT NULL,
	[ClassroomId] [varchar](10) NOT NULL,
	[SubjectId] [varchar](10) NOT NULL,
	[GradeId] [int] NOT NULL,
 CONSTRAINT [PK__Teaches__F5485A2D7C44CB8F] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC,
	[ClassroomId] ASC,
	[SubjectId] ASC,
	[GradeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 04/01/2020 1:11:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[TeacherId] [varchar](10) NOT NULL,
	[Username] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Teachers__EDF259646D4F415D] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [u_Teachers_Username] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 04/01/2020 1:11:58 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Username] [varchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Dob] [datetime] NULL,
	[Phone] [varchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[LastLoginDate] [datetime] NULL,
	[RoleTypeId] [int] NULL,
 CONSTRAINT [PK__Users__536C85E52E4D282A] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Question] ADD  CONSTRAINT [DF_Question_NumberOfCorrectAnswers]  DEFAULT ((0)) FOR [NumberOfCorrectAnswers]
GO
ALTER TABLE [dbo].[Question] ADD  CONSTRAINT [DF_Question_NumberOfWrongAnswers]  DEFAULT ((0)) FOR [NumberOfWrongAnswers]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT (getdate()) FOR [LastLoginDate]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((1)) FOR [RoleTypeId]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [fk_Answer_Question] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Question] ([QuestionId])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [fk_Answer_Question]
GO
ALTER TABLE [dbo].[AnswerDistribute]  WITH CHECK ADD  CONSTRAINT [fk_AnswerDistribute_QuestionDistribute] FOREIGN KEY([QuestionDistributeId])
REFERENCES [dbo].[QuestionDistribute] ([QuestionDistributeId])
GO
ALTER TABLE [dbo].[AnswerDistribute] CHECK CONSTRAINT [fk_AnswerDistribute_QuestionDistribute]
GO
ALTER TABLE [dbo].[Classroom]  WITH CHECK ADD  CONSTRAINT [fk_Classes_Grades] FOREIGN KEY([GradeId])
REFERENCES [dbo].[Grade] ([GradeId])
GO
ALTER TABLE [dbo].[Classroom] CHECK CONSTRAINT [fk_Classes_Grades]
GO
ALTER TABLE [dbo].[ExamCode]  WITH CHECK ADD  CONSTRAINT [fk_ExamCode_Subject] FOREIGN KEY([SubjectId], [GradeId])
REFERENCES [dbo].[Subject] ([SubjectId], [GradeId])
GO
ALTER TABLE [dbo].[ExamCode] CHECK CONSTRAINT [fk_ExamCode_Subject]
GO
ALTER TABLE [dbo].[ExamCode_Question]  WITH CHECK ADD  CONSTRAINT [fk_ExamCodeQuestion_ExamCode] FOREIGN KEY([ExamCodeId])
REFERENCES [dbo].[ExamCode] ([ExamCodeId])
GO
ALTER TABLE [dbo].[ExamCode_Question] CHECK CONSTRAINT [fk_ExamCodeQuestion_ExamCode]
GO
ALTER TABLE [dbo].[ExamCode_Question]  WITH CHECK ADD  CONSTRAINT [fk_ExamCodeQuestion_Question] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Question] ([QuestionId])
GO
ALTER TABLE [dbo].[ExamCode_Question] CHECK CONSTRAINT [fk_ExamCodeQuestion_Question]
GO
ALTER TABLE [dbo].[ExamDetail]  WITH CHECK ADD  CONSTRAINT [fk_ExamDetail_Subject] FOREIGN KEY([SubjectId], [GradeId])
REFERENCES [dbo].[Subject] ([SubjectId], [GradeId])
GO
ALTER TABLE [dbo].[ExamDetail] CHECK CONSTRAINT [fk_ExamDetail_Subject]
GO
ALTER TABLE [dbo].[ExamDetail]  WITH CHECK ADD  CONSTRAINT [fk_ExamDetails_Exams] FOREIGN KEY([ExamId])
REFERENCES [dbo].[Exam] ([ExamId])
GO
ALTER TABLE [dbo].[ExamDetail] CHECK CONSTRAINT [fk_ExamDetails_Exams]
GO
ALTER TABLE [dbo].[ExamResult]  WITH CHECK ADD  CONSTRAINT [FK_ExamResult_ExamTake] FOREIGN KEY([ExamDetailId], [StudentId])
REFERENCES [dbo].[ExamTake] ([ExamDetailId], [StudentId])
GO
ALTER TABLE [dbo].[ExamResult] CHECK CONSTRAINT [FK_ExamResult_ExamTake]
GO
ALTER TABLE [dbo].[ExamTake]  WITH CHECK ADD  CONSTRAINT [FK_ExamTake_ExamDetail] FOREIGN KEY([ExamDetailId])
REFERENCES [dbo].[ExamDetail] ([ExamDetailId])
GO
ALTER TABLE [dbo].[ExamTake] CHECK CONSTRAINT [FK_ExamTake_ExamDetail]
GO
ALTER TABLE [dbo].[ExamTake]  WITH CHECK ADD  CONSTRAINT [FK_ExamTake_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[ExamTake] CHECK CONSTRAINT [FK_ExamTake_Student]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [fk_Question_Subject] FOREIGN KEY([SubjectId], [GradeId])
REFERENCES [dbo].[Subject] ([SubjectId], [GradeId])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [fk_Question_Subject]
GO
ALTER TABLE [dbo].[QuestionDistribute]  WITH CHECK ADD  CONSTRAINT [fk_QuestionDistribute_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[QuestionDistribute] CHECK CONSTRAINT [fk_QuestionDistribute_Student]
GO
ALTER TABLE [dbo].[QuestionDistribute]  WITH CHECK ADD  CONSTRAINT [fk_QuestionDistribute_Subject] FOREIGN KEY([SubjectId], [GradeId])
REFERENCES [dbo].[Subject] ([SubjectId], [GradeId])
GO
ALTER TABLE [dbo].[QuestionDistribute] CHECK CONSTRAINT [fk_QuestionDistribute_Subject]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [fk_Students_Classrooms] FOREIGN KEY([ClassroomId])
REFERENCES [dbo].[Classroom] ([ClassroomId])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [fk_Students_Classrooms]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [fk_Students_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[User] ([Username])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [fk_Students_Users]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [fk_Subject_Grade] FOREIGN KEY([GradeId])
REFERENCES [dbo].[Grade] ([GradeId])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [fk_Subject_Grade]
GO
ALTER TABLE [dbo].[Teach]  WITH CHECK ADD  CONSTRAINT [fk_Teach_Classroom] FOREIGN KEY([ClassroomId])
REFERENCES [dbo].[Classroom] ([ClassroomId])
GO
ALTER TABLE [dbo].[Teach] CHECK CONSTRAINT [fk_Teach_Classroom]
GO
ALTER TABLE [dbo].[Teach]  WITH CHECK ADD  CONSTRAINT [fk_Teach_Subject-Subject] FOREIGN KEY([SubjectId], [GradeId])
REFERENCES [dbo].[Subject] ([SubjectId], [GradeId])
GO
ALTER TABLE [dbo].[Teach] CHECK CONSTRAINT [fk_Teach_Subject-Subject]
GO
ALTER TABLE [dbo].[Teach]  WITH CHECK ADD  CONSTRAINT [fk_Teach_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teacher] ([TeacherId])
GO
ALTER TABLE [dbo].[Teach] CHECK CONSTRAINT [fk_Teach_Teacher]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [fk_Teachers_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[User] ([Username])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [fk_Teachers_Users]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [fk_User_RoleType] FOREIGN KEY([RoleTypeId])
REFERENCES [dbo].[RoleType] ([RoleTypeId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [fk_User_RoleType]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phân biệt đề thi thử' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExamCode', @level2type=N'COLUMN',@level2name=N'IsPracticeExam'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'minute' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExamDetail', @level2type=N'COLUMN',@level2name=N'Duration'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Độ khó' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Question', @level2type=N'COLUMN',@level2name=N'DifficultLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Kiểm tra tình trạng được duyệt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QuestionDistribute', @level2type=N'COLUMN',@level2name=N'IsApproved'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 = admin, 1 = student, 2 = teacher' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'RoleTypeId'
GO
USE [master]
GO
ALTER DATABASE [QLThiTracNghiem] SET  READ_WRITE 
GO
