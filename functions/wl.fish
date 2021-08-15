function wl -d 'погода в разных городах'
  if test (count $argv) -eq 0
    curl -s 'ru.wttr.in/{Новороссийск,Москва,Санкт-Петербург,Краснодар,Таганрог,Бахчисарай}?lang=ru&format=%l,%c,%t,%w,%h,%P,%S,%m\n'|sed 's+km/h+км/ч+g' | cat (echo -e 'Город,Погода,Темп.,Ветер,Влаж,Давление,Восход,Фаза Луны' | psub) - |csvlook --max-column-width 15 #|column -t -s ','
    #curl -s 'ru.wttr.in/{Новороссийск   ,Москва         ,Санкт-Петербург,Краснодар      }?lang=ru&format=%l%09%c++🌡️+%t,+🌬️+%w,+влажн.+%h,+давл.+%P'|sed 's+km/h+км/ч+g'
  else
    curl ru.wttr.in/Новороссийск,Видова,58\?$argv[1]
  end
end
