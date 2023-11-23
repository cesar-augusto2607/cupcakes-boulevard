module ApplicationHelper
    def brl(value) 
        number_to_currency(value, unit: 'R$ ', separator: ",", delimiter: "")
    end

    def friendly_date_time(date)
        date.in_time_zone('America/Sao_Paulo').strftime("%d/%m/%Y às %H:%M")
    end

    def fixed_number(value)
        '%.1f' % value
    end
end
