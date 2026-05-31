CREATE TABLE Student_Demographics
(Matric_Number BIGINT,
First_Name VARCHAR(50),
Last_Name VARCHAR(50),
Age INT,
Gender VARCHAR(10),
Degree_Level INT, 
Department VARCHAR(50)
)

CREATE TABLE Course_Details
(Degree_Level INT,
Course_Code NVARCHAR(10),
Course_Title VARCHAR(50),
Unit INT,
Statue VARCHAR(20),
)

INSERT INTO Student_Demographics VALUES
(20220298013, 'Adebusola', 'Adeosun', 21,'Female', 400, 'Mathematics'),
(20220298010, 'Temiloluwa', 'Ogunsanwo', 20, 'Female', 400, 'Mathematics'),
(20220298014, 'Joseph', 'Oyetunji', 23, 'Male', 400, 'Mathematics'),
(20220298001, 'Daniel', 'Akinyemi', 22, 'Male', 400, 'Mathematics'),
(20220298002, 'Iseoluwa', 'Moses', 21, 'Male', 400, 'Mathematics'),
(20220294090, 'Moses', 'Olonade', 24, 'Male', 400, 'ComputerScience'),
(20220298005, 'Ebunoluwa', 'Akinkunmi', 21, 'Female', 400, 'Mathematics'),
(20220298020, 'Waris', 'Olaifa', 24, 'Male', 400, 'Mathematics'),
(20220294025, 'Rachel', 'Gbenga', 25, 'Female', 400, 'ComputerScience'),
(20220294008, 'Favour', 'Victor', 23, 'Female', 400, 'ComputerScience')

INSERT INTO Course_Details VALUES
(400,'ENT421', 'Marketing And Purchasing Management', 2, 'Compulsory'),
(400, 'MAT422', 'Partial Differential Equation', 2, 'Compulsory'),
(400, 'MAT425', 'Operation Research', 2, 'Elective'),
(400, 'GNS429', 'Project', 4, 'Required'),
(400, 'MAT427', 'Regression Analysis', 2, 'Elective')

SELECT*
FROM LTBL_Solution.dbo.Student_Demographics
INNER JOIN LTBL_Solution.dbo.Course_Details
ON Student_Demographics.Degree_Level = Course_Details.Degree_Level

SELECT*
FROM LTBL_Solution.dbo.Student_Demographics
Full Outer Join LTBL_Solution.dbo.Course_Details
	ON Student_Demographics.Degree_Level = Course_Details.Degree_Level

SELECT*
FROM LTBL_Solution.dbo.Student_Demographics
Left Outer Join LTBL_Solution.dbo.Course_Details
	ON Student_Demographics.Degree_Level = Course_Details.Degree_Level

SELECT*
FROM LTBL_Solution.dbo.Student_Demographics
Right Outer Join LTBL_Solution.dbo.Course_Details
	ON Student_Demographics.Degree_Level = Course_Details.Degree_Level