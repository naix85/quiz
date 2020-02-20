require './support/env'

class TestPage
    include PageObject
    include SeleniumUtil
    
    button(:populate_btn,id: 'populate')   
    button(:submit,id: "submit-button") 
    text_field(:dev_name,id: 'developer-name')    
    radio_buttons(:os_rdo,xpath: "//input[@type='radio']")
    checkboxes(:features,xpath: "//input[@type='checkbox']")
    select_list(:signin,id: "preferred-interface")
    text_area(:comment,id: "comments")
    element(:thankyou,id: "article-header")
    div(:slider,id: "slider")

    def nav_to_url
        navigate_to "https://devexpress.github.io/testcafe/example/"
    end

    def is_populated_name
        populate_btn
        SeleniumUtil.dismiss_alert_dialog_with_yes
        return dev_name.size >= 0
    end

    def is_checkboxes_checked
        boo = true
        features_elements.each do |feature|
            feature.click
            boo = boo && feature.checked?
        end
        return boo
    end

    def is_radio_btn_selected
        os_rdo_elements.each do |os|
            os.click
        end
        return !os_rdo_elements[0].selected? && !os_rdo_elements[1].selected? &&
                    os_rdo_elements[2].selected?
    end

    def is_scale_comment_enabled
        features_elements.last().click
        return (!slider_element.attribute("class").include? "ui-slider-disabled ui-state-disabled") &&
                comment_element.enabled?

    end

    def is_scale_comment_disabled
        return (slider_element.attribute("class").include? "ui-slider-disabled ui-state-disabled") &&
                comment_element.disabled?
    end

    def shift_slider
        features_elements.last().click
        element = $browser.find_element(xpath: "//div[@id='slider']/span")
        $browser.execute_script("arguments[0].setAttribute('style','left:33.3333%;')",element)
        return element.attribute("style") === "left: 33.3333%;"
    end

    def is_submit_button_disabled
        return submit_element.disabled?
    end

    def submit_form
        submit
        return thankyou_element.text === "Thank you, Peter Parker!"
    end

end