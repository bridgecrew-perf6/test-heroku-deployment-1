*** Settings ***
Documentation   A test suite with a 2 tests for saving created event in Create Event Page
...             
...             This test follows the keywords from
...             the resource.robot
Resource        resource.robot

*** Test Cases ***
# Filter Venue With Garden
#     Go To Pencilbookings
#     Select From List By Value       name:venue      Garden
#     Click Filter And Sort Button
#     Should Not Have           Sunroom 
#     Should Not Have           Terrace 
#     [Teardown]      Close Browser

# Filter Venue With Sunroom
#     Go To Pencilbookings
#     Select From List By Value       name:venue      Sunroom
#     Click Filter And Sort Button
#     Should Not Have           Garden 
#     Should Not Have           Terrace 
#     [Teardown]      Close Browser

# Filter Venue With Terrace
#     Go To Pencilbookings
#     Select From List By Value       name:venue      Terrace
#     Click Filter And Sort Button
#     Should Not Have           Sunroom 
#     Should Not Have           Garden 
#     [Teardown]      Close Browser

# Filter Afternoon Time
#     Go To Pencilbookings
#     Select From List By Value       name:time      Afternoon
#     Click Filter And Sort Button
#     Should Not Have           dark_mode
#     [Teardown]      Close Browser

# Filter Night Time
#     Go To Pencilbookings
#     Select From List By Value       name:time      Evening
#     Click Filter And Sort Button
#     Should Not Have           light_mode
#     [Teardown]      Close Browser

# Filter Date
#     Go To Pencilbookings
#     Press Keys       date        ARROW_UP+ARROW_RIGHT+ARROW_UP+ARROW_RIGHT+ARROW_UP
#     Click Filter And Sort Button
#     Should Not Have           2021
#     [Teardown]      Close Browser


