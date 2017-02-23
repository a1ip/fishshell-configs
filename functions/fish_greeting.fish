function fish_greeting -d "what's up, fish?"
    if math "$LINES >= 20 && $COLUMNS >= 80" > /dev/null
        bash (dirname (status -f))/archey.sh -b
    end
end

# function fish_greeting
#
#     # We assume the name is the first element of the full name
#     switch (uname)
#         case Darwin
#             set full_user_name (id -P | cut -d: -f 8 | tr ' ' '\n')
#         case Linux
#             set full_user_name (getenv passwd $USER | cut -d: -f 5 | tr ' ' '\n')
#         case '*'
#             set full_user_name "Stranger"
#     end
#
#     echo ""
#     echo -s "         /\_/\ "
#     echo -s "    ____/ o o \\"
#     echo -s "  /~____  =ø= /"
#     echo -s " (______)__m_m)"
#     echo -s (set_color normal) "Welcome back " (set_color green) $full_user_name[1] (set_color normal) " !"
#     echo ""
#
# end
