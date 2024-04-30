*** Settings ***
Library        SeleniumLibrary
Resource        ../keywords/RegisterPageKeywords.robot
Resource        ../keywords/HomePageKeywords.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml
Suite Setup      Open Browser    ${baseUrl}    chrome
Suite Teardown    Close Browser


*** Test Cases ***
As a user, login successfully
    Given user is home page    แพลตฟอร์มคอร์สเรียนออนไลน์
    When user register futuer skill page   ${email}    ${valid_password}    ${firstname}    ${lastname}    ${phone}
    Then user validate otp password
