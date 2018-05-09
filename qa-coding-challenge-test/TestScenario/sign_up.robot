*** Settings ***
Library 	Selenium2Library    run_on_failure=Capture Page Screenshot
Resource 	../Resources/home_page.txt

*** Variables ***
${url}  https://staging.fastwork.co/
${broswer}  Chrome

*** Test Cases ***

User go to Fastwork
    Open Browser  ${url}  ${broswer}

User on Login page
    Home page should be opened

User on Login dialog
    Customer click login

User go to Sign Up page
    Customer go to Sign Up page

User input worng email format
    Customer input wrong email format for register  asdkfhlkjasdhf

User input correct email
    Customer input correct email for register  test0012@test.com

User input password is not match
    Customer input password is not match  testtest  12345678

User input password is match
    Customer input password is match  testtest  testtest