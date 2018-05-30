*** Settings ***
Library    SeleniumLibrary

Suite Setup    Open Browser  about:blank  remote_url=http://standalone_chrome:4444/wd/hub  desired_capabilities=browserName:chrome
Suite Teardown    Close All Browsers


*** Variables ***
${START_PAGE}    http://www.google.com
${LOGO}    css=img#hplogo


*** Test Cases ***

Google page has logo

    When I open Google
    Then I see Google logo
	

*** Keywords ***
I open Google
    Go To  ${START_PAGE}
	  Wait Until Element Is Visible  ${LOGO}

I see Google logo
	  Element Should Be Visible  ${LOGO}
