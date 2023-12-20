*** Settings ***
Library    BuiltIn
# Suite Teardown    Run Keyword If All Tests Passed    Log    PASSED
# Suite Teardown    Run Keyword If Any Tests Failed    Log    Failed
# Test Teardown    Run Keyword If Timeout Occurred    Log    Timeout
# Test Teardown    Run Keyword If Test Failed    Log    Fail
# Test Teardown    Run Keyword If Test Passed    Log    Pass

*** Variables ***
${str1}    Hello
${str2}    World
${int}    31
${num}    31
${any}    Hello    item1    item2
${eqa}    Hello
${EMPTY}

*** Test Cases ***
Build In keywords Run keyword If and Variable Keyword Should Exist
    ${condition}    Set Variable   TRUE
    # Variable Should Exist    ${condition}

    Run Keyword If    '${condition}' == 'TRUE' 
    ...    Log    'Condition is true'  
    ...  ELSE IF    '${condition}' == 'FALSE'
    ...    Log    'Condition is False'
    ...  ELSE
    ...    Log    'Nothing'  

Catenate
#     ${element1}    Set Variable    ${str1} 
#     ${element2}    Set Variable    ${str2}
#     ${store}    Catenate    '${element1}    ${element2}'
    ${store}    Catenate    '${str1}    ${str2}'
    Log    ${store}

Get Length
    Get Length    ${str1} ${str2} 
    Log    ${str1} ${str2}

Call method
    ${string}   Set Variable    Hello    Aishwarya
    #  Call Method    ${string}    append    Sunshe  
    #  Log    ${string}
    ${call}    Call Method    ${string}    __len__
    Log    ${call}

Continue for loop
    
    FOR    ${element}    IN    ${str1}    
        Continue For Loop  
        Log    ${element}
    END     

Convert To Binary
    ${binary}    Convert To Binary    10
    Log    ${binary} 

Convert to Hex
    ${Hex}    Convert To Hex    1000
    Log    ${Hex}

Get Count
    ${container}    Set Variable    Hello
    ${count}    Get Count    ${container}    World
    Log    ${count}

Skip
    Skip
    Get Length    ${str1} ${str2} 
    Log    ${str1} ${str2}

Pass Execution
    Pass Execution    PASSED
    Fail
    Get Length    ${str1} ${str2} 
    Log    ${str1} ${str2}

Repeat Keyword and Should Contain
    Get Length    ${str1} ${str2} 
    Repeat Keyword    2    Get Length    ${str1} ${str2}
    Log    ${str1} ${str2}
    Should Contain    ${any}    Hello

Set Task Variable
    Set Task Variable    ${str1}

Convert To Boolean
    ${boolean_true}    Convert To Boolean    True
    ${boolean_false}    Convert To Boolean    False

    Log    Boolean True: ${boolean_true}
    Log    Boolean False: ${boolean_false}

Wait Until Keyword Succeeds
    Wait Until Keyword Succeeds    2 min    5 sec    Log    Success

Pass Execution If
    FOR    ${element}    IN    ${str1}
       Pass Execution If    '${element}'=='EXPECTED'    Correct value was found
       Log    ${element}
    END

Continue For Loop If
    FOR    ${element}    IN    ${str1}
        Continue For Loop If    '${element}'=='World'  #In str1 the value is Hello so it won't continue for loop if keyword.
        Log    ${element}
    END

Comment
    FOR    ${element}    IN    ${str1}
        Continue For Loop If    '${element}'=='Hello'
        Comment    Commenting Hello is correct
        Log    ${element}
    END

Convert To Integer
    ${integer}    Convert To Integer    ${int}
    Log    ${integer}

Convert To Number
    ${number}    Convert To Number    ${int}    #it converts to float (decimal)
    Log    ${number}

Convert To Octal
    ${octal}    Convert To Octal    20
    Log    ${octal}

Convert To string
    ${stringg}    Convert To String    ${str1}
    ${integerr}    Convert To String    ${int}
    ${stringg1}    Convert To String    ${str2}
    Log    ${stringg}
    Log    ${integerr}
    Log    ${stringg1}

Create Dictonary and Should Be True
    ${create}    Create Dictionary    ${str1}    Sunshe
    ${create2}    Create Dictionary    Welcome    To This ${str2}
    Should Be True    ${create}
    Log    ${create}    
    Log    ${create2}

Exit For Loop and Should Be Equal
    FOR    ${element}    IN    ${str1}
        Should Be Equal    ${element}    Hello    # if element 'hello is equal to given value it exit the loop'
        # Should Be Equal    ${element}    World    # if element 'hello is not equal to given value it fails'
        Exit For Loop
    END

Exit For Loop If
    ${new}    Set Variable    Hello Sunshe 
    FOR    ${element}    IN    ${new}
        Exit For Loop If    '${element}' == 'Sunshe'
        Log    ${element}
    END

Fail
    ${new}    Set Variable    Hello Sunshe 
    FOR    ${element}    IN    ${new}
        Exit For Loop If    '${element}' == 'Sunshe'
        Log    ${element}
        Fail      #even the testcase passes it say fail
    END

Fatal Error
    FOR    ${element}    IN    ${str1}
        Should Be Equal    ${str1}    Hello
        Fatal Error
        Log    ${element}
    END
      
Get Library
    ${library}    Get Library Instance    BuiltIn
    Log    ${library}

Get Time
    ${year}    Get Time     year
    ${month}    Get Time    month
    ${date}    Get Time    data    
    Log    ${year}
    Log    ${month}
    Log    ${date}

Get Variable Value
    ${a}    Get Variable Value    ${str1}    
    Log    ${a}

Get Variables
    ${var}    Get Variables    ${str1}    
    ${var1}    Get Variables    ${str2}
    ${var2}    Get Variables    ${int}
    Log Many    ${var}    ${var1}    ${var2}

Import Resource
    ${import}    Import Resource    example.robot
    Log    ${import}

Import Variables
    ${impvar}    Import Variables    stringlibrary.robot
    Log    ${impvar}    

Keyword Should Exist
    ${key}    Keyword Should Exist    Log    #passes if log keyword is found
    ${key}    Keyword Should Exist    nothing    #fails if nothing keyword is not found
    Log    ${key}

Length Should Be
    Get Length    ${str1}
    ${len}    Length Should Be    ${str1}    5    #Hello value should be 5 else it fails the tc
    Log    ${len}

Log Variable
    Log Variables    ${str1}
    
No Operation
    ${a}    Get Variable Value    ${str1}    
    Log    ${a}
    No Operation

Regexp Escape, Should Match Regexp, Should Not Match Regexp
    ${regexp}    Regexp Escape    ${str1}
    Should Match Regexp    ${str1}    Hello
    Should Not Match Regexp    ${str1}    World
    Log    ${regexp}

Reload Library
    Reload Library    BuiltIn

Replace Variables
    ${re}    Set Variable    New 
    ${replace}    Replace Variables    ${re}
    Log    ${replace}

Run Keyword And Continue On Failure
    ${fail}    Run Keyword And Continue On Failure    Fail    This is failed
    Log    ${fail}

Run Keyword And Expect Error
    Run Keyword And Expect Error    Unknown Error    Log    wrong

Run Keyword And Ignore Error
    ${ignore}    Run Keyword And Ignore Error    Log    Error occured
    Log    ${ignore}

Run Keyword And Return
    ${return}    Run Keyword And Return    Log    Returned
    Log    ${return}

Run Keyword And Return If
    ${returnif}    Run Keyword And Return If    '${str1}'=='Hello'    Log    Hi
    Log    ${returnif}

Run Keyword And Return Status
    ${status}    Run Keyword And Return Status    Log    This is Aishu
    Log    ${status}

Run Keyword And Warn On Failure
    ${failure}    Run Keyword And Warn On Failure    Log    Failure 000
    Log    ${failure}

Set Global Variable
    ${global}    Set Global Variable    ${str1}    # variable available globally in all tests and suites
    Log    ${global}

Set Library Search Order
    ${logva}    Set Library Search Order    BuiltIn
    Log    ${logva}
    
Set Local Variable
    ${local}    Set Local Variable    ${str1}     #variable available everywhere within the local
    Log    ${local}

Set Log Level
    ${lev}    Set Log Level    DEBUG    #returns the old level of log name
    Log    ${lev}

Set Suite Documentation
    Set Suite Documentation    cookies.robot

Set Suite Metadata
    Set Suite Metadata    Name    Sunshe Aishwarya A

Set Suite Variable
    Set Suite Variable    ${asd}    Hi Aishu
    
 Set Task Variable
    Set Task Variable    ${str1}    #variable available everywhere within the scope of the current task

Set Test Documentation
    Set Test Documentation    cookies.robot

Set Test Message
    Set Test Message    Everything    #message for the current test case in termial(output)

Set Test Variable
    Set Test Variable    ${str1}    #variable available everywhere within the scope of the current task

Set Variable If    
    ${set}    Set Variable     1
    ${true}    Set Variable If    ${set}<=2    two
    Log    ${true}
   
Variable Should Not Exist
    Variable Should Not Exist    ${str1}

Suite Teardown    Set Tags    Catenate

 Suite Teardown    Set Test Message    New to the world

Remove Tags
    Remove Tags    ${EMPTY}

Should Contain X Times
    Should Contain X Times    ${str1}    Hello    1

Should Contain Any
    Should Contain Any    ${any}    Hello    item2

Should Be Equal As Strings
    Should Be Equal As Strings    ${str1}    ${eqa}

Should Be Equal As Number
    Should Be Equal As Numbers    ${num}    ${int}

Should be Equal As Integer
    Should Be Equal As Integers    ${num}    ${int}

Should Be Empty
    Should Be Empty    ${EMPTY}

Should End With
    # Should End With    ${str1}    ${str2}    #Fails because hello and world is not equal
    Should End With    ${str1}    ${eqa}

 # 80 completed already done 5 keywords so 85 and other 21 is validation keywords 
