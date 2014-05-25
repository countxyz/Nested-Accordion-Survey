module Features
  module JavascriptHelpers
    def confirm_dialog
      page.driver.browser.confirm_messages
    end
  end
end
