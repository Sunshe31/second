*** Settings ***
Library    OperatingSystem
Library    String

*** Test Cases ***
New
    
   FOR    ${element}    IN RANGE    1    50
       
       ${filename}=    Evaluate    "file_${element}.txt"
       Log    ${filename}
       ${context}=    Evaluate    "This is Aishwarya ${element}"
       Create File    ${filename}    ${context}
       Move Files    ${filename}    C:\\Users\\Archimedis Digital\\OneDrive - Archimedis Digital\\Desktop\\robottxt
       Count Files In Directory    C:\\Users\\Archimedis Digital\\OneDrive - Archimedis Digital\\Desktop\\robottxt
       Get Line Count    ${context}
      #  Empty Directory    C:\\Users\\Archimedis Digital\\OneDrive - Archimedis Digital\\Desktop\\robottxt

    #    Get Binary File    C:\\Users\\Archimedis Digital\\Desktop\\robottxt
    #    Remove Files    ${filename}    C:\\Users\\Archimedis Digital\\Desktop\\robottxt\\${filename}
        
       
   END
News
       List Directories In Directory    C:\\Users\\Archimedis Digital\\Desktop
       List Files In Directory    C:\\Users\\Archimedis Digital\\Desktop\\robottxt
       Create Directory    C:\\Users\\Archimedis Digital\\Desktop\\robotics 