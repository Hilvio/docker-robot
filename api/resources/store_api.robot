*** Settings ***
Library    Collections
Library    RequestsLibrary

*** Variables ***
${SESSION_ALIAS}  store
${HOST}  http://petstore.swagger.io
${PATH_TO_STORE}  /v2/store
${PATH_TO_INVENTORY}  ${PATH_TO_STORE}/inventory
${PATH_TO_ORDER}  ${PATH_TO_STORE}/order
${EMPTY_DICTIONARY}  {}

*** Keywords ***
I am at the pet store

    Create Session  ${PATH_TO_STORE}  ${HOST}


I ask to see the pet inventory

    ${resp} =  Get Request  ${PATH_TO_STORE}  ${PATH_TO_INVENTORY}

    set test variable  ${response}  ${resp}


I get to see the pet inventory by status

    Should Be Equal As Strings  ${response.status_code}  200


I place an order

    ${headers} =  Create Dictionary  Content-Type=application/json
    ${body} =  Create Dictionary  id=0  petId=0  quantity=0  shipDate=2018-05-09T08:00:37.387Z  status=placed  complete=false

    ${resp} =  Post Request  ${PATH_TO_STORE}  ${PATH_TO_ORDER}  ${body}  ${EMPTY_DICTIONARY}  ${headers}

    set test variable  ${response}  ${resp}


I receive an order confirmation

    Should Be Equal As Strings  ${response.status_code}  200
