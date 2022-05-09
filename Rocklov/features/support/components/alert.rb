
class Alert
    include Capybara::DSL

    def alert_dark
        return find(".alert-dark").text
    end
end