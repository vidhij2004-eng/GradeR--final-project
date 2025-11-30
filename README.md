Author: Vidhi Jani
Course: R Programming-Final Project
University: University of South Florida

Overview of my project:
Vidhi Jani created the GradeR package as the project for R Programming class taken through the University of 
South Florida, which exhibits her ability to apply the knowledge she gained from Modules 10, 11, and 12. The GradeR package was specifically developed to demonstrate the development 
of a valid DESCRIPTION file; debugging techniques; defensive programming techniques; the ability to generate S3 classes; the ability to develop an R Markdown document (the vignette); and finally, how R Markdown 
could be used to produce a vignette in conjunction with other various packages available in R. The overall goal of creating the GradeR Package is to develop a series of simple, but effective, programs for analyzing
student performance data, which includes both demographic information and behavioral indicators, along with three separate variables that represent G1, G2 and G3 (the final grades for each class).
Three core functions work together to validate, summarize and visualize Student Grade information as specified below:
1) The First function (check_grade_column()) provides examples of Defensive Programming by checking to see if the Grade Column selected by the User exists and whether it is a numeric type before performing any analysis on it.
2) The Second function (grade_summary()) computes a descriptive statistical summary for the Grade Column and returns this summary as an S3 Object that contains its own custom Print method.
3) The Third function (plot_grades()), using ggplot2, creates a clean and interpretable histogram of Final Grades that allows Users to evaluate patterns and/or distributions quickly.
Users have access to an accompanying vignette that shows how the logical structure, implementation and use of every function will work including both sample data and using real Kaggle data.
The package repository also contains a histogram image of the G3 (final grade) distribution over a range of scores that provides insight into how students are clustering between scores of 9 and 14.
The GradeR package demonstrates a student's competence in developing a complete R package from beginning to end, using structured coding practices, employing object-oriented programming using S3 classes,
generating meaningful graphics, and documenting everything for review/evaluation by others. This package represents a complete combination of programming, analytical thinking and technical communications skills within R.
