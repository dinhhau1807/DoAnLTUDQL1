USE [QLThiTracNghiem]
GO
/****** Object:  StoredProcedure [dbo].[usp_LoadListExamCode]    Script Date: 20/12/2019 11:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_LoadListExamCode]
	@ExamType int = -1
AS
BEGIN
	select e.*,s.SubjectName
	from ExamCode e
		join Subject s
			on e.GradeId = s.GradeId
			AND e.SubjectId = s.SubjectId
	where e.IsPracticeExam = @ExamType  OR @ExamType = -1
END
GO
/****** Object:  StoredProcedure [dbo].[usp_LoadQuestionByExamCode]    Script Date: 20/12/2019 11:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_LoadQuestionByExamCode]
	@ExamCodeID varchar(50) 
AS
BEGIN
	select *
	from Question q
	where EXISTS (select * 
		from ExamCode_Question eq 
		where eq.QuestionId = q.QuestionId
		AND eq.ExamCodeId = @ExamCodeID
		)
END
GO
