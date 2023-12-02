module Formatting
    def self.brl(value)
        ActionController::Base.helpers.number_to_currency(value, unit: 'R$ ', separator: ",", delimiter: "")
    end

    def self.uri_parser 
        @uri_parser ||= URI::Parser.new
    end
end