use `bestbuy`;
/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */

 SELECT products.Name , categories.Name
 FROM products
 join  categories
 on products.CategoryID = categories.CategoryID
 WHERE categories.Name = 'Computers';
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */

SELECT products.name , products.Price , reviews.Rating
  FROM products
  join reviews
 on products.ProductID = reviews.ProductID
 WHERE reviews.rating = 5;

/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT sum(sales.Quantity) as total , employees.FirstName , employees.LastName
FROM  sales
join employees
on employees.EmployeeID = sales.EmployeeID
group by employees.FirstName , employees.LastName
order by total;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT  categories.Name , departments.Name
FROM departments
join  categories
where categories.Name = 'Games' or categories.Name = 'Appliances';
/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */


-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */

