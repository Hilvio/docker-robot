*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${START_PAGE}    http://www.google.com
${LOGO}    css=img#hplogo
	

*** Keywords ***
I open browser
    Open Browser  about:blank  remote_url=http://standalone_chrome:4444/wd/hub  desired_capabilities=browserName:chrome

I close browser
    Close All Browsers
