#PL/SQL Employee Management and Control Structure System

The folder contains instructions about the PL/SQL programming language related to the given Oracle database-related tasks, including the creation of the database, the GOTO statement and control functions, functions, exception handling, and test cases.

Folder structure

Assignment III/
├── 00_setup/
│  └── 00_setupcreate_tables.sql
├── 01_goto/
│  ├── A1_number_classifier.sql
│  ├── A2_salary_review.sql
│  ├── A3_illegal_goto.sql
│  └── A4_without_goto.sql
├── 02_functions/
│  ├── B1_get_employee_salary.sql
│  ├── B2_get_annual_salary.sql
│  ├── B3_calculate_bonus.sql
│  ├── B4_get_employee_summary.sql
│  └── B5_count_department_employees.sql
├── 03_tests/
│  ├── C1_comprehensive_test.sql
│  └── C2_boundary_tests.sql
├── docs/
│  └── REFLECTION.md
├── SCREENSHOTS/
└── README.md

Folder overview

The 00_setup folder contains code snippets related to the creation of the database and the initial table ( EMPLOYEES table). The 01_goto folder contains the control structure-related practical tasks, including the identification of the GOTO branching logic, label limitation checks and the transformation of GOTO into the standard IF-THEN-ELSIF blocks.
The 02_functions folder contains function-related Oracle Live SQL instructions, including the identification of the employee’s salary, the calculation of the annual benefits and the determination of performance-based bonuses. The 03_tests folder contains test scenarios related to the execution of the functions mentioned above, including the utilization of the standard exception handling mechanism (NO_DATA_FOUND) and boundary value tests ( NULL parameter values). The docs folder contains a reflection on the key insights, challenges addressed, and the support provided by the AI assistant. Finally, the SCREENSHOTS folder contains the screenshots of the executed commands.
Instructions

In order to execute the commands, open the 00_setupcreate_tables.sql script in the Oracle Live SQL platform and create a database. Next, construct all functions provided in the 02_functions folder and execute the commands contained in the 01_goto and 03_tests folders in order to observe the results and the exception-related results.

Notes
An AI assistant was used as a thought partner when structuring the script, addressing the issues related to the utilization of Oracle Live SQL and providing guidance on the structure of documents and folders. The code snippets were executed and reviewed in detail.