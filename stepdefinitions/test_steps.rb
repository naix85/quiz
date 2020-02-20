Given (/^I launch the web site$/) do
    on(TestPage).nav_to_url
    sleep 1
end

When (/^I should see name populated after clicking on populate button$/) do
    expect(on(TestPage).is_populated_name).to be true
end

Then (/^I should be able to check multiple checkboxes$/) do
    expect(on(TestPage).is_checkboxes_checked).to be true
end

Then (/^I should be able to select only one radio button$/) do
    expect(on(TestPage).is_radio_btn_selected).to be true
end

Then (/^I should see scale and comments field are (enabled|disabled) (after|before) checking tried TestCafe$/) do |status,before_after|
    expect(on(TestPage).is_scale_comment_enabled).to be true if status === "enabled"
    expect(on(TestPage).is_scale_comment_disabled).to be true if status === "disabled"
end

Then (/^I should be able to shift slider$/) do
    expect(on(TestPage).shift_slider).to be true
end

Then (/^I should see submit button disabled when name is not filled$/) do
    expect(on(TestPage).is_submit_button_disabled).to be true
end

When (/^I filled the form$/) do
    on(TestPage).is_populated_name
    on(TestPage).is_checkboxes_checked
    on(TestPage).is_radio_btn_selected
end

Then (/^I should be able to submit successfully$/) do
    expect(on(TestPage).submit_form).to be true
end