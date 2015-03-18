module ApplicationHelper
  def custom_bootstrap_flash
    flash_messages = []
    flash.each do |type, message|
      type = 'info' if type == 'notice'
      type = 'error'   if type == 'alert'
      type = 'success'   if type == 'success'
      type = 'error'   if type == 'error'
      text = "<script>toastr.#{type}('#{message}')</script>"
      flash_messages << text.html_safe if message
    end
    flash_messages.join("\n").html_safe
  end

  #Fecha en Español
  def spanish_date date
    mes = ""
    if date.is_a? Date
      mes = case date.month
      when 1 then "enero"
      when 2 then "febrero"
      when 3 then "marzo"
      when 4 then "abril"
      when 5 then "mayo"
      when 6 then "junio"
      when 7 then "julio"
      when 8 then "agosto"
      when 9 then "septiembre"
      when 10 then "octubre"
      when 11 then "noviembre"
      when 12 then "diciembre"
      end
      end
        "#{date.day} de #{mes} de #{date.year}"
      end

      end
