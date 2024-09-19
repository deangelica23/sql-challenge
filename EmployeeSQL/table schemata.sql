CREATE TABLE "Departments" (
    "dept_no" varchar(10) NOT NULL,
    "dept_name" varchar(50) NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
    )
);

CREATE TABLE "Title" (
    "title_id" varchar(10) NOT NULL,
    "title" varchar(100) NOT NULL,
    CONSTRAINT "pk_Title" PRIMARY KEY (
        "title_id"
    )
);

CREATE TABLE "Employees" (
    "emp_no" varchar(10) NOT NULL,
    "emp_title_id" varchar(10) NOT NULL,
    "birthdate" date NOT NULL,
    "first_name" varchar(50) NOT NULL,
    "last_name" varchar NOT(50) NULL,
    "sex" varchar(1) NOT NULL,
    "hire_date" date NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
    ),
    CONSTRAINT "fk_Employees_Title" FOREIGN KEY ("emp_title_id") REFERENCES "Title"("title_id")
);

CREATE TABLE "Dept_Employee" (
    "dept_no" varchar(10) NOT NULL,
    "emp_no" varchar(10) NOT NULL,
    CONSTRAINT "fk_Dept_Employee_Departments" FOREIGN KEY ("dept_no") REFERENCES "Departments"("dept_no"),
    CONSTRAINT "fk_Dept_Employee_Employees" FOREIGN KEY ("emp_no") REFERENCES "Employees"("emp_no")
);

CREATE TABLE "Dept_Manager" (
    "dept_no" varchar(10) NOT NULL,
    "emp_no" varchar(10) NOT NULL,
    CONSTRAINT "fk_Dept_Manager_Departments" FOREIGN KEY ("dept_no") REFERENCES "Departments"("dept_no"),
    CONSTRAINT "fk_Dept_Manager_Employees" FOREIGN KEY ("emp_no") REFERENCES "Employees"("emp_no")
);

CREATE TABLE "Salaries" (
    "emp_no" varchar NOT NULL,
    "salary" decimal NOT NULL,
    CONSTRAINT "fk_Salaries_Employees" FOREIGN KEY ("emp_no") REFERENCES "Employees"("emp_no")
);


---dislay tables
SELECT * FROM "Departments";
SELECT * FROM "Title";
SELECT * FROM "Employees";
SELECT * FROM "Dept_Employee";
SELECT * FROM "Dept_Manager";
SELECT * FROM "Salaries";
