module SimpleFormDatetimepicker
  module CapybaraHelpers
    def fill_in_dtp(locator, options={})
      locator = find('label', text: locator)[:for] if page.has_css?('label', text: locator)
      fill_in locator, :with => ''
      fill_in locator, options
    end
  end
end
