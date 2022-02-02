*** Settings ***
Documentation   A test suite with a 2 tests for saving edited event in Edit Event Page for Reservations
...             
...             This test follows the keywords from
...             the resource.robot
Resource        resource.robot

*** Test Cases ***
Save Edited Reservations Event
    Open Browser To Reservations Event Page
    Input Client Mobile Number      ${MOBILE NUMBER} 
    # Input Type Of Event     ${TYPE EVENT} 
    Input Number Of Pax     ${NUMBER PAX}  
    Select Time Of Event
    Select Event Package 6 Variants
    Select From List By Value        downpayment-mode         Cash
    Input Text       downpayment-amount          0
    Wait Until Element Is Visible       xpath:/html/body/div[1]/div/form/div[6]/div/a/button
    Wait Until Element Is Enabled       xpath:/html/body/div[1]/div/form/div[6]/div/a/button
    Click Button        xpath:/html/body/div[1]/div/form/div[6]/div/a/button
    Wait Until Element Is Visible       xpath:/html/body/div[1]/div/form/div[7]/div/div/div[3]/button[2]
    Wait Until Element Is Enabled       xpath:/html/body/div[1]/div/form/div[7]/div/div/div[3]/button[2]
    Click Button        xpath:/html/body/div[1]/div/form/div[7]/div/div/div[3]/button[2]
    Element Should Contain      today-title        RESERVATIONS
    [Teardown]      Close Browser
