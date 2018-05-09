*** Settings ***
Library 	Selenium2Library    run_on_failure=Capture Page Screenshot
Resource 	../Resources/home_page.txt

*** Variables ***
${url}  https://staging.fastwork.co/
${broswer}  Chrome

*** Test Cases ***

User go to Fastwork
    Open Browser  ${url}  ${broswer}

User click login
    home page should be opened

User on Login dialog
    Customer click login

User input email doesn't exist
    Customer login with wrong email  testwrongemail  1234567890

User input email with wrong password
    Customer login with wrong password  test001@test.com  123456789

User login with correct email
    Customer login with correct email and password  test001@test.com  testtest