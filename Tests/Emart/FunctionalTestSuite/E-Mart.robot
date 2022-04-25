*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${admin_parameter}  admin
${pass1_parameter}  1234
${seller_parameter}  1@gmail.com
${pass3_parameter}  pass1
${mobile_parameter}  iphone12
${brand_parameter}  apple
${details_parameter}  Apple iPhone 12 (128GB ROM, 4GB RAM, MGJA3HN/A, Black)
${price_parameter}  60900

*** Test Cases ***
Home view
    [Documentation]  home page
    [Tags]  home
    start testcase
    sleep   2
    input text  name:searchproduct       SALT
    sleep   1
    click button    xpath:/html/body/nav[1]/div/div[1]/form/button
    sleep   4
    click element   xpath:/html/body/nav[1]/div/span/a
    sleep   2

Login admin Page test case
   [Documentation]  admin login page
   [Tags]  admin
   click element  xpath:/html/body/nav[1]/div/div[2]/a[5]
   Input text  name:name  ${admin_parameter}
   sleep  1
   Input text  name:pass  ${pass1_parameter}
   sleep  1
   click button  xpath:/html/body/div/div/div/form/table/tbody/tr[3]/td/button
   sleep  3

View Orders Page Test Case
   [Documentation]  admin view order
   [Tags]  view orders
   click element  xpath:/html/body/nav[5]/div/div/a[1]
   sleep  4

View Sellers Page Test Case
   [Documentation]  admin view seller
   [Tags]  view sellers
   click element  xpath:/html/body/nav[3]/div/div/a[2]
   sleep  4

View users Page Test Case
   [Documentation]  admin view users
   [Tags]  view users
   click element  xpath:/html/body/nav[3]/div/div/a[3]
   sleep  4

Logout admin test case
   [Documentation]  admin logout
   [Tags]  admin logout
   click element   xpath:/html/body/nav[1]/div/div[2]/a[6]
   sleep   2

Seller Page Test case
   [Documentation]  Seller Login
   [Tags]  seller Page
   sleep   1
   click element  xpath:/html/body/nav[1]/div/div[2]/a[3]
   sleep  1
   Input text  name:email  ${seller_parameter}
   sleep  1
   Input text  name:pass  ${pass3_parameter}
   sleep  1
   click button  xpath://html/body/div/div/div/form/table/tbody/tr[3]/td/button
   sleep  3

seller view orders
   [Documentation]  Seller view order
   [Tags]  seller view order
   click element   xpath:/html/body/nav[3]/div/a
   sleep   4

Seller add Mobile Test Case
   [Documentation]  Seller add
   [Tags]  seller add product
   click button    xpath:/html/body/nav[2]/div/div/div/button
   sleep   2
   click element  xpath:/html/body/nav[2]/div/div/div/ul/li[1]/a
   sleep  2

Seller add Test Case
   [Documentation]  Add Product
   [Tags]  Add
   Input text  name:name  ${MOBILE_PARAMETER}
   sleep  1s
   Input text  name:brand  ${brand_parameter}
   sleep  1s
   Input text  name:det  ${details_parameter}
   sleep  1s
   Input text  name:price  ${price_parameter}
   sleep  1s


Delete Mobile Test Case
   [Documentation]  Delete Mobile
   [Tags]  Delete
   click element  xpath://html/body/nav[2]/div/div/div/button
   sleep  1
   click element  xpath://html/body/nav[2]/div/div/div/ul/li[2]/a
   sleep  1
   Input text  name:namedel  ${MOBILE_PARAMETER}
   sleep  1
   click button  xpath://html/body/div/div/div/form/table/tbody/tr[2]/td/button
   sleep  3

user login
    [Documentation]     user login
    [Tags]      user login
    click element   xpath:/html/body/nav[1]/div/span/a
    sleep   2
    click element   xpath:/html/body/nav[1]/div/div[2]/a[1]
    sleep   1
    input text  name:email      user11@gmail.com
    sleep   1
    input text  name:pass       11111
    sleep   1
    click button    xpath:/html/body/div/div/div/form/table/tbody/tr[3]/td/button
    sleep   4

user edit profile
    [Documentation]     user edit profile
    [Tags]      user edit profile
    click element   xpath:/html/body/nav[3]/div/div/a[2]
    sleep   2
    input text  name:firstname      newfirstname
    sleep   1
    input text  name:lastname       newlastname
    sleep   1
    input text  name:email      newemail@gmail.com
    sleep   1
    input text  name:mobile     0123456789
    sleep   1
    input text  name:password       password
    sleep   2
    click element   xpath:/html/body/nav[1]/div/span/a
    sleep   1

Buy product
    [Documentation]     user buy
    [Tags]      user buy
    click element   xpath:/html/body/nav[2]/div[1]/ul/li/a/img
    sleep   2
    click element   xpath:/html/body/div/div/div[3]/div/a
    sleep   2
    stop testcase

*** Keywords ***
start testcase
    Open Browser  http://127.0.0.1:5000/  chrome
    maximize browser window

stop testcase
    close browser