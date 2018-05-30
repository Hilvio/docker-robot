*** Settings ***
Resource    ../resources/common.robot


*** Variables ***
${START_PAGE}    http://www.google.com
${LOGO}    css=img#hplogo
	

*** Keywords ***
I open Google
    Go To  ${START_PAGE}
	  Wait Until Element Is Visible  ${LOGO}

I see Google logo
	  Element Should Be Visible  ${LOGO}
