module AuxiliaryModules
  module Dates
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

    def time_elapsed start_date, end_date
      distance = ""
      year_text = ""
      months = 0
      if start_date.is_a? Date
        unless end_date.is_a? Date
          end_date = Date.today
        end
        months = ((end_date.year * 12) + end_date.month) - ((start_date.year * 12) + start_date.month)
        if months >= 12
          years = months / 12
          months =  months % 12
          if years == 1
            year_text = "1 año y"
          else
            year_text = "#{years} años y"
          end
        end
        if months == 0
          distance = year_text
        elsif months == 1
          distance = "#{year_text} 1 mes"
        else
          distance = "#{year_text} #{months} meses"
        end
      else
        distance = "No es Fecha"
      end
      distance
    end
  end
end
