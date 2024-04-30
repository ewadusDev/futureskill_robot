*** Settings ***
Library    SeleniumLibrary
Resource    ./CommonKeywords.robot

*** Keywords ***
user is home page
    [Arguments]    ${heading}
    CommonKeywords.Wait until the page is ready to verify text    ${heading}