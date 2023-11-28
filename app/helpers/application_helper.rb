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

    def flash_toast(key)
        render partial: "application/flash_toast", locals: { key: key } 
    end

    def toast_message(message)
        render partial: "application/flash_toast", locals: { message: message} 
    end
end
