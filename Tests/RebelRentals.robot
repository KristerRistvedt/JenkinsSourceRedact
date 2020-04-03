*** Settings ***

Documentation       This is a test suite around an agile projects website made with Razor Pages
Library             SeleniumLibrary
Test Setup          Begin Agile Project Page Test
Test Teardown       End Agile Project Test

*** Variables ***

${BROWSER} =                    firefox
${URL} =                        https://localhost:44322/
${SEARCH_TERM} =                RebelRentals
${LOGIN} =                      xpath://*[@id="login"]
${USERNAME} =                   xpath://*[@id="email"]
${PASSWORD} =                   xpath://*[@id="password"]
${CHOOSE_CAR} =                 xpath://*[@id="bookModelSpass5"]

*** Keywords ***

Begin Agile Project Page Test
        Open Browser                about:blank     ${BROWSER}

Go to Web Page
        Go To                       ${URL}
        Wait Until Page Contains    ${SEARCH_TERM}

Switch to privacy page
        Go to Web Page
        Click Element               xpath://html/body/header/nav/div/div/ul/li[2]/a
        Wait Until Page Contains    Privacy Policy

End Agile Project Test
        Close Browser

*** Test Cases ***

User can access RebelRental page
    [Documentation]             Test: The user should be able to access the Infotiv Car Rental page
    [Tags]                      access      Header
    Go to Web Page

User can switch to privacy page
    [Documentation]             Test: The user should be able to access the Infotiv Car Rental page
    [Tags]                      access      Header
    Go to Web Page
    Switch to privacy page

