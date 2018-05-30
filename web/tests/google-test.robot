*** Settings ***
Resource    ../resources/google-po.robot

Suite Setup    I open browser
Suite Teardown    I close browser


*** Test Cases ***

Google page has logo

    When I open Google
    Then I see Google logo
