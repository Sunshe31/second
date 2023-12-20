*** Settings ***
Library    SeleniumLibrary
Library    RPA.Desktop
Library    RPA.Windows


*** Test Cases ***
Facebook
    Open Browser    https://www.facebook.com/index.php/    edge
    Maximize Browser Window
    Input Text    //input[@id="email"]    itsmeaishu3103@gmail.com
    Input Password    //input[@id="pass"]    Asdqwe@123
    Click Button    //button[@name="login"]

    Sleep    10
    SeleniumLibrary.Press Keys    //body    ENTER

    #Profile
    Sleep    10
    Wait Until Page Contains Element    //span[contains (text(),'Add Picture')]
    Sleep    5
    SeleniumLibrary.Press Keys    //body    esc
    Click Element    //span[contains (text(),'Add Picture')]
    Sleep    3
    Click Element    //span[contains (text(),'Upload Photo')]
    Sleep    5
    Type Text    "C:\\Users\\Archimedis Digital\\Robot Framework\\image.jpg"
    Sleep    5
    RPA.Desktop.Press Keys    ENTER

    Sleep    10
    Scroll Element Into View    (//span[contains (text(),'Save')])[2]
    Sleep    10
    Click Element    (//span[contains (text(),'Save')])[2]
    Sleep    5
    Wait Until Page Contains Element    //span[contains (text(),'Isha A')]    10
    Click Element    //span[contains (text(),'Isha A')]

    Sleep    10
    Click Element    //div[@class="x15sbx0n x1xy773u x390vds xb2vh1x x14xzxk9 x18u1y24 xs6kywh x5wy4b0"]
    Sleep    3
    Click Element    //span[contains (text(),'See profile picture')]
    Sleep    4
    Click Element    (//div[@aria-haspopup="menu"])[6]
    Sleep    8
    Click Element    //span[contains(text(),'Delete photo')] 

    Click Element    (//span[contains(text(),'Delete')])[3]
    Sleep    7
    Click Element    //a[@aria-label="Home"]
    Sleep    5
    Click Element    //span[contains (text(),'Photo/video')]
    Sleep    5
    Click Element    //span[contains (text(),'Add photos/videos')]
    Sleep    5
    Type Text    "C:\\Users\\Archimedis Digital\\OneDrive - Archimedis Digital\\Pictures\\picture.jpg"
    Sleep    3
    RPA.Desktop.Press Keys    ENTER
    Sleep    3
    Click Element    (//div[@class="x6s0dn4 x78zum5 xl56j7k x1n2onr6 x5yr21d xh8yej3"])[5]
    Sleep    2
    Input Text    (//input[@dir="ltr"])[2]    guindy
    Sleep    3
    Click Element    //span[contains (text(),'Guindy, Chennai, Tamil Nadu, India 600025')]
    # Click Element    (//div[@class="x6s0dn4 x78zum5 xl56j7k x1n2onr6 x5yr21d xh8yej3"
    
    Sleep    5
    Scroll Element Into View    //span[contains (text(),'Post')]
    Sleep    5
    Click Element    //span[contains (text(),'Post')]
    Sleep    5
    Capture Page Screenshot
    Sleep    2
    Click Element    (//div[@class="x9f619 x1n2onr6 x1ja2u2z x78zum5 x1r8uery x1iyjqo2 xs83m0k xeuugli xl56j7k x6s0dn4 xozqiw3 x1q0g3np xn6708d x1ye3gou xexx8yu xcud41i x139jcc6 x4cne27 xifccgj xn3w4p2 xuxw1ft"])[1]
    Click Element    (//span[contains (text(), 'Comment')])[1]

    Input Text    (//p[@class="xdj266r x11i5rnm xat24cr x1mh8g0r"])[1]    nice
    Click Element    //div[@aria-label="Comment"]
