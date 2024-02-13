# Set seed for reproducibility
set.seed(123)

hours <- 8 #number of hours from 9am to 5pm
employees <- 2 #there are two employees

# Simulate data
employee_data <- matrix(rpois(hours * employees, lambda = 5), nrow = hours, byrow = TRUE)

# Display simulated data
print(employee_data)

# Test 1: Total customers served by each employee
total_customers <- colSums(employee_data)
print(total_customers)

# Test 2: Average customers served per hour by each employee
avg_customers_per_hour <- colMeans(employee_data)
print(avg_customers_per_hour)

# Test 3: Total customers served each hour
total_customers_per_hour <- rowSums(employee_data)
print(total_customers_per_hour)

# Test 4: Efficiency between the two employees
correlation <- cor(employee_data[,1], employee_data[,2])
print(correlation)

# Test 5: Seeing which employee served more customers 
employee_1 <- sum(employee_data[,1] > employee_data[,2])
employee_2 <- sum(employee_data[,1] < employee_data[,2])
if (employee_1 > employee_2) {
  cat("Employee 1\n")
} else if (employee_1 < employee_2) {
  cat("Employee 2\n")
} else {
  cat("Both employees served the same number of customers in total.\n")
}



