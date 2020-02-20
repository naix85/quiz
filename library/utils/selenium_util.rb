module SeleniumUtil

    def self.dismiss_alert_dialog_with_yes
        $browser.switch_to.alert.accept
    end
end