*** Settings ***
Library     SeleniumLibrary
Library     RPA.Desktop
Library    RPA.Windows


*** Variables ***
${photo}    C:/Users/Archimedis Digital/Robot Framework/image.jpg


*** Test Cases ***
New Test
    Open browser    https://www.instagram.com/
    Wait Until Page Contains Element    //input[@name="password"]
    Input Text    //input[@name="username"]    green_ish0123
    Input Password    //input[@name="password"]    Asdqwe@123

    Click Button    //button[@type="submit"]
    Sleep    7
    
    #Post
    Click Element    //span[contains (text(),'Create')]
    Sleep    2
    Click Element    //button[contains (text(),'Select from computer')]
    Sleep    2
    Type Text    "C:\\Users\\Archimedis Digital\\Robot Framework\\image.jpg"
    Sleep    3
    RPA.Desktop.Press Keys    ENTER
    Sleep    2
    Wait Until Page Contains Element    //div[contains (text(),'Next')]
    Click Element    //div[contains (text(),'Next')]
    Wait Until Page Contains Element    //div[contains (text(),'Next')]
    Click Element    //div[contains (text(),'Next')]

    Input Text    //div[@role="textbox"]    Nature
    Sleep    5
    Click Button    (//button[@type="button"])[2]
    Click Element    (//div[contains (text(),'😍')])[1]
    Click Button    (//button[@type="button"])[2]
    Click Element    (//div[contains (text(),'😍')])[1]

    Click Element    //span[contains (text(),'Accessibility')]
    Sleep    2
    Input Text    //input[@placeholder="Write alt text..."]    nothing
    Click Element    //div[contains (text(),'Share')]

    Click Element    //div[@class="x6s0dn4 x78zum5 xdt5ytf xl56j7k"]
    

    #Uploading Profile 
    Click Element    //span[contains (text(),'Profile')]
    Sleep    5
    
    Click Element    //img[@alt="Add a profile photo"]
    Type Text    "C:\\Users\\Archimedis Digital\\Robot Framework\\picture.jpg"
    Sleep    3
    RPA.Desktop.Press Keys    ENTER
    Sleep    5


    #Removes Profile
    Click Element    //img[@alt="Change profile photo"]
    Sleep    2
    Click Button    //button[@class="_a9-- _ap36 _a9-_"]
    

    #Viewing and commenting the post
    Sleep    5
    Mouse Over    //a[@href="/p/C0BTdb8hfjj/?next=%2F"] 
    Sleep    5
    Press Mouse Button    
   
    #comment and like
    Sleep    5
    Double Click    (//img[@class="x5yr21d xu96u03 x10l6tqk x13vifvy x87ps6o xh8yej3"])[3]
    Sleep    2
    Click Element    (//div[@class="x6s0dn4 x78zum5 xdt5ytf xl56j7k"])[5]
    Input Text    //textarea[@placeholder="Add a comment…"]    Nice
    Click Element    (//div[@role="button"])[13]
    Click Element    (//div[contains (text(),'😍')])[1]
    Click Element    //div[contains (text(),'Post')]

    Click Element    (//div[@class="x6s0dn4 x78zum5 xdt5ytf xl56j7k"])[2]








    