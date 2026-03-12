SELECT emp2.unique_id,emp1.name
FROM Employees emp1
LEFT JOIN EmployeeUNI emp2
    ON emp1.id = emp2.id