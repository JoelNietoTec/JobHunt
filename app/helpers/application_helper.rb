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

def time_ago fecha
    distance = ""
    if Date.today.year - fecha.year >= 1
      distance = Date.today.year - fecha.year
      distance = "Hace #{distance} años"
    elsif Date.today.month - fecha.month >= 1
      distance = Date.today.month - fecha.month
      distance = "Hace #{distance} meses"
    elsif Date.today.strftime("%U").to_i - fecha.strftime("%U").to_i >= 1
      distance = Date.today.strftime("%U").to_i - fecha.strftime("%U").to_i
      if distance = 1
        distance = "La semana pasada"
      else
        distance = "Hace #{distance} semanas"
      end
    elsif Date.today.day - fecha.day >= 1
      distance = Date.today.day - fecha.day
      if distance = 1
        distance = "Ayer"
      else
        distance = "Hace #{distance} días"
      end
    else
      distance = "Hoy"
    end
    distance
  end
