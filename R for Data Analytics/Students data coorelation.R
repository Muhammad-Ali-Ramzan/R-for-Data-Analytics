    1️⃣ ##Student Academic Performance Dataset 
    student_data <- data.frame( 
     study_hours = c(4,6,5,7,8,3,6,7,5,4), 
       attendance = c(80,90,85,95,92,75,88,94,86,78), 
        assignment_score = c(70,85,78,90,92,65,83,89,80,72), 
          midterm_score = c(68,82,75,88,90,60,80,85,77,70), 
             final_score = c(72,88,80,92,94,63,85,90,82,74), 
               gpa = c(2.8,3.5,3.2,3.8,3.9,2.5,3.4,3.7,3.3,2.9) 
                ) 
round(cor(student_data$gpa, student_data),2)    

install.packages("dplyr",dep=T)
library("dplyr")
data.frame

student_data$midterm_score > 80
student_data %>% 
filter(midterm_score > 89)  

midterm_score
Students_data %>% 
group_by(assignment_score) %>% 
