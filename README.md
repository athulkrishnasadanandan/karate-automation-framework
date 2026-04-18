# Karate API Automation Framework

## Overview
API automation testing framework built with Karate using BDD Gherkin syntax.

## Technologies
- **Framework:** Karate 1.4.1
- **Build Tool:** Maven 3.8+
- **Language:** Gherkin (BDD)
- **API Tested:** JSONPlaceholder

## Project Structure
karate-automation-framework/
├── src/test/java/
│   └── ApiTestRunner.java
├── src/test/resources/api/
│   ├── users.feature
│   └── posts.feature
├── pom.xml
└── README.md

## Setup & Run Tests

### Prerequisites
- JDK 8+
- Maven 3.8+
- Git

### Clone Project
```bash
git clone https://github.com/athulkrishnasadanandan/karate-automation-framework.git
cd karate-automation-framework
```

### Run Tests
```bash
mvn clean test
```

### View Reports
After tests run, open:
target/karate-reports/index.html

## Test Scenarios

### Users API
- ✅ Get all users
- ✅ Get specific user
- ✅ User email validation
- ✅ Multiple users (data-driven)

### Posts API
- ✅ Get all posts
- ✅ Get post by ID
- ✅ Post field validation
- ✅ Multiple posts (data-driven)

## Key Features
- BDD style testing with Gherkin syntax
- Data-driven testing with Scenario Outline and Json
- Parallel test execution
- HTML reports with detailed logs
- Easy API response validation

## Test Execution Results
Features:    2 | Passed: 2 | Failed: 0
Scenarios:  10 | Passed: 10 | Failed: 0
Pass Rate: 100%
Execution Time: ~5 seconds

## Learning Resources
- Karate Docs: https://karatelabs.github.io/karate/
- TestGuild Course: https://testguild.com/course/hands-on-guide-to-api-testing-with-karate-course/
- JSONPlaceholder API: https://jsonplaceholder.typicode.com/

## 👤 Author

**Athul Krishna Sadanandan**  
- 🔗 LinkedIn: https://www.linkedin.com/in/athul-krishna-194037184/
- 📧 Email: athulkrishnasadanandan98@gmail.com

## License
MIT License - free to use and modify