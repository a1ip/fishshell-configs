function wl -d 'погода в разных городах'
  if test (count $argv) -eq 0
    curl -s 'ru.wttr.in/{Новороссийск,Москва,Санкт-Петербург,Краснодар}?lang=ru&format=%l,+%c%09,🌡️+%t,🌬️+%w,%h,%P'|sed 's+km/h+км/ч+g' | cat (echo 'Город,Погода,Темп.,Ветер,Влажн.,Давление' | psub) - |csvlook #|column -t -s ','
    #curl -s 'ru.wttr.in/{Новороссийск   ,Москва         ,Санкт-Петербург,Краснодар      }?lang=ru&format=%l%09%c++🌡️+%t,+🌬️+%w,+влажн.+%h,+давл.+%P'|sed 's+km/h+км/ч+g'
  else
    curl ru.wttr.in/44.72,37.76\?$argv[1]
  end
end
