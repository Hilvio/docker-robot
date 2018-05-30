*** Settings ***
Library    Collections
Library    RequestsLibrary

Resource    ../resources/store_api.robot

*** Test Cases ***
Scenario: Get store inventory

    Create Session  store  http://petstore.swagger.io
	${resp} =  Get Request  store  /v2/store/inventory
	Should Be Equal As Strings  ${resp.status_code}  200


Scenario: Get store inventory (Improved)
    Given I am at the pet store
    When I ask to see the pet inventory
    Then I get to see the pet inventory by status

Scenario: Place an order
    Given I am at the pet store
    When I place an order
    Then I receive an order confirmation
	