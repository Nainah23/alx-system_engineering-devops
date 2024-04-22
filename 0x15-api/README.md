```markdown
# Tasks Project

## Description
This project consists of several tasks related to gathering data from an API, exporting data to CSV and JSON formats, and creating a dictionary of lists of dictionaries.

## Directory Structure
```
alx-system_engineering-devops/
└── 0x15-api/
    ├── 0-gather_data_from_an_API.py
    ├── 1-export_to_CSV.py
    ├── 2-export_to_JSON.py
    └── 3-dictionary_of_list_of_dictionaries.py
```

## Tasks Details

### Task 0: Gather Data from an API
This task involves writing a Python script that gathers information about an employee's TODO list progress using a REST API. The script accepts an employee ID as a parameter and displays the employee's TODO list progress in a specific format.

#### Requirements:
- Use `urllib` or `requests` module.
- Accept an integer as a parameter (employee ID).
- Display employee TODO list progress in a specified format.

#### Example Usage:
```bash
$ python3 0-gather_data_from_an_API.py 2
```

### Task 1: Export to CSV
Extend the script from Task 0 to export data to CSV format. The CSV file should contain records of tasks owned by the specified employee.

#### Requirements:
- Export data to CSV format.
- CSV format: "USER_ID","USERNAME","TASK_COMPLETED_STATUS","TASK_TITLE"
- File name: USER_ID.csv

#### Example Usage:
```bash
$ python3 1-export_to_CSV.py 2
```

### Task 2: Export to JSON
Extend the script from Task 0 to export data to JSON format. The JSON file should contain records of tasks owned by the specified employee.

#### Requirements:
- Export data to JSON format.
- JSON format: { "USER_ID": [{"task": "TASK_TITLE", "completed": TASK_COMPLETED_STATUS, "username": "USERNAME"}, ... ]}
- File name: USER_ID.json

#### Example Usage:
```bash
$ python3 2-export_to_JSON.py 2
```

### Task 3: Dictionary of List of Dictionaries
Extend the script from Task 0 to export data in JSON format for all employees. The JSON file should contain records of tasks from all employees.

#### Requirements:
- Export data to JSON format.
- JSON format: { "USER_ID": [{"username": "USERNAME", "task": "TASK_TITLE", "completed": TASK_COMPLETED_STATUS}, ... ], ... }
- File name: todo_all_employees.json

#### Example Usage:
```bash
$ python3 3-dictionary_of_list_of_dictionaries.py
```

## Repository Information
- GitHub repository: [alx-system_engineering-devops](https://github.com/username/alx-system_engineering-devops)
- Directory: 0x15-api
