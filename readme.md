# Robot Framework Web Test Example

This is a simple example projct demonstating how to use **Robot Framework** with **Selenium Library** to automate web testing.

## Project Structure

robot-automated-tester
|----tests/
|------|----example_test.robot  # Main test case
|----resources/
|------|----variables.robot  # Shared variables
|----output/  # Test reports and logs
|----readme.md
|----requirements.txt  # Requirements file for pip

## Prerequisites

- Python 3.8+
- Google Chrome
- ChromeDriver

## Installation

```bash
pip install -r requirements.txt
```

The requirements.txt file also installs RIDE, the Robot Framework IDE. Run it with ride.exe.

## Running the Tests

To execute the test and generate a report:

```bash
robot -d output tests
```

- `-d output` puts logs and repots into the `output` directory.

## Output Files

After running tests, check these:

- output/report.html: High-level summary
- output/log.html: Detailed step-by-step log
- output/output.xml: Raw execution output (for CI tools)

## Test Example

This is what example_test.robot does:

1. Opens Chrome Browser
2. Goes to https://example.com
3. Verifies the pgae title
4. Takes a screenshot
5. Closes the browser

## Maintained By

- Ryan Schostag
