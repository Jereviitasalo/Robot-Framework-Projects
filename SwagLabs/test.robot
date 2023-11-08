*** Settings ***
Documentation  Simple test suite to log in to Swag Labs website
Library        Browser
Resource       data.resource
Resource       data.resource
Suite Setup    Open Website

*** Test Cases ***
Log In
    Login To Swag Labs
    Sleep    5