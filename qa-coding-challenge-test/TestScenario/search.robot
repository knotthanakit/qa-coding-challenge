*** Settings ***
Library 	Selenium2Library    run_on_failure=Capture Page Screenshot
Resource 	../Resources/home_page.txt


*** Variables ***
${url}  https://staging.fastwork.co/
${broswer}  Chrome

*** Test Cases ***

User go to Fastwork
    Open Browser  ${url}  ${broswer}

User search with doesn't have result
    Customer search with keyword dosen't have result

User search with keyword that have result
    Customer search with keyword that have result  test
