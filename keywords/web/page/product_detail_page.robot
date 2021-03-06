*** Setting ***
Resource    ${CURDIR}/../../../testdata/import_resources.robot
Resource    ${CURDIR}/../locator/product_detail_page_locator.robot

***Keyword***
Click to wishlist button
    Click Element       ${product_detail_locator.wishlist_button}

Click to wishlist page
    Click Element       ${product_detail_locator.my_list_navigation}

Click to cart icon to checkout
    SeleniumLibrary.Mouse Over                          ${product_detail_locator.cart_icon}
    common_keywords.Verify Web Element Is Visible       ${product_detail_locator.checkout_button}
    Click Element                                       ${product_detail_locator.checkout_button}

Verify add wishlist button is existed
    Element Should Be Visible    ${product_detail_locator.wishlist_button}

Verify add to cart buttin is existed
    Element Should Be Visible       ${product_detail_locator.add_to_cart_button}

Verify main image is existed
    Page Should Contain Element     ${product_detail_locator.main_image}

Verify preview images are existed
    Page Should Contain Element     ${product_detail_locator.preview_image1}
    Page Should Contain Element     ${product_detail_locator.preview_image2}
    Page Should Contain Element     ${product_detail_locator.preview_image3}
    Page Should Contain Element     ${product_detail_locator.preview_image4}
    Page Should Contain Element     ${product_detail_locator.preview_image5}
    Page Should Contain Element     ${product_detail_locator.preview_image6}

Verify product name is existed
    Element Should Be Visible       ${product_detail_locator.product_name}

Verify sku is existed
    Element Should Be Visible       ${product_detail_locator.sku}

Verify product remark for coupon info is existed
    Element Should Be Visible       ${product_detail_locator.product_remark}

Verify product price is existed
    Element Should Be Visible       ${product_detail_locator.product_price}

Verify button add to cart is existed
    Element Should Be Visible       ${product_detail_locator.add_to_cart_button}

Verify share on icons is existed
    Element Should Be Visible       ${product_detail_locator.share_on_facebook}
    Element Should Be Visible       ${product_detail_locator.share_on_line}
    Element Should Be Visible       ${product_detail_locator.share_on_mail}
    Element Should Be Visible       ${product_detail_locator.share_on_twitter}

Verify you may so like part has product suggestion
    Element Should Be Visible       ${product_detail_locator.product_on_you_may_so_like}

Verify similar product part has product suggestion
    Element Should Be Visible       ${product_detail_locator.product_on_similar_product}

Verify all required element on the product detail page
    Verify add wishlist button is existed
    Verify main image is existed
    Verify product name is existed
    Verify product price is existed
    Verify sku is existed
    Verify share on icons is existed
    Verify you may so like part has product suggestion
    Verify similar product part has product suggestion
    
Add product to wishlist
    Click Element           ${product_detail_locator.wishlist_button}
    ${product_name}         ${product_detail_locator.product_name}
    Return ${product_name}

Select a random product and add it to cart
    common_keywords.Click a random product on first view
    common_keywords.Click Element       ${product_detail_locator.add_to_cart_button}
    BuiltIn.Sleep       5s 

Select a random product and add it to wishlist
    common_keywords.Click a random product on first view
    common_keywords.Click Element           ${product_detail_locator.wishlist_button}
    ${product_name}         SeleniumLibrary.Get text       ${product_detail_locator.product_name}
    [Return]                ${product_name}

Select a random product and add it to wishlist with guest user
    common_keywords.Click a random product on first view
    common_keywords.Click Element           ${product_detail_locator.wishlist_button}
     



