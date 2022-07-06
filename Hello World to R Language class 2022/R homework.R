#first_data_frame

Employee_code<-c(65001,65002,65003,65004,65005,65006,65007,65008,65009,65010)
Employee_name<-c("Mac","Jane","Grace","Tim","Jasie","Robert","Yuri","Boris","George","Elizbeth")
Employee_age<-c(27,30,43,23,41,46,49,29,25,29)
Employee_wages<-c(15050,25000,22500,35950,45000,15950,50450,36595,18590,26585)
Employee_deparment<-c("ACCOUNT","MAINTENANCE","OPERATION","MANAGEMENT","SUPPORT","MANAGEMENT","ACCOUNT","SUPPORT","OPERATION","OPERATION")

data.frame(Employee_code,Employee_deparment,Employee_name,Employee_age,Employee_wages)
employee_info1<-data.frame(Employee_code,Employee_deparment,Employee_name,Employee_age,Employee_wages)
employee_info1

View(employee_info1)

#second_data_frame
Employee_code<-c(65001:65010)
Total_Clame<-c(5080,3850,9000,5250,6390,9500,5990,8050,4780,700)

data.frame(Employee_code,Total_Clame)
insurance_clame01<-data.frame(Employee_code,Total_Clame)

View(insurance_clame01)

merge(employee_info1,insurance_clame01, by="Employee_code")
merge_Employ_with_insure <-merge(employee_info1,insurance_clame01, by="Employee_code")
View(merge_Employ_with_insure)

#subset_dataframe
Selcect_Top3_Department_Clame <-merge_Employ_with_insure[1:3,c("Employee_deparment","Total_Clame") ]
Selcect_Top3_Department_Clame  

#basic_stats
sum(Selcect_Top3_Department_Clame $Total_Clame)
max(Selcect_Top3_Department_Clame $Total_Clame)
min(Selcect_Top3_Department_Clame $Total_Clame)
median(Selcect_Top3_Department_Clame $Total_Clame)
mean(Selcect_Top3_Department_Clame $Total_Clame)
sd(Selcect_Top3_Department_Clame $Total_Clame)
