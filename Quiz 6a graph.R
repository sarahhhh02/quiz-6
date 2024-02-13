library(ggplot2)

employee <- data.frame(
  Hour = rep(1:hours, employees),
  Customers = c(employee_data),
  Employee = factor(rep(1:employees, each = hours))
)

ggplot(employee, aes(x = Hour, y = Customers, color = Employee)) +
  geom_line() +
  geom_point() +
  labs(x = "Hour", y = "Customers Served", color = "Employee") +
  ggtitle("Efficiency of Employees") +
  theme_minimal()

