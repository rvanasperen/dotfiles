function dev
    # Laravel
    if test -f ./artisan
        if test -f ./vendor/bin/sail -a \( -f ./docker-compose.yml -o -f ./compose.yaml \)
            echo "Starting Laravel app via Sail"
            ./vendor/bin/sail up -d
            if ! test -d ./node_modules/
                ./vendor/bin/sail npm install
            end
            ./vendor/bin/sail npm run dev
            ./vendor/bin/sail down
        else
            echo "Starting Laravel app"
            composer dev
        end

    # Unknown
    else
        echo "Unknown project type"
        return 1
    end

    # Fun stuff
    set hour (date +"%H")

    if test $hour -ge 0 -a $hour -lt 7
        set time (date +"%H:%M")

        set messages \
            "Whoops it's already $time! Better get some zzz. 😴" \
            "Bro, it's $time... Time to get some zzz. 😴" \
            "Dude, it's $time. Do you even sleep? 🛌💤" \
            "You should go to bed, it's $time. Your code will still be here tomorrow. ⏳" \
            "It's $time... you're officially nocturnal now. 🦉 (who?)" \
            "3 AM thoughts hit different, huh? It's $time. Sleep? 😵‍💫" \
            "Wtf it's already $time? It was 23:00 like 30 minutes ago. 😱"

        # Print message
        set random_message (random choice $messages)
        echo $random_message

        # Log time
        set timestamp (date +"%Y-%m-%d %H:%M:%S")
        set project_name (basename $PWD)
        echo "[$timestamp] - I spent until $time working on $project_name" >> ~/.late_night_coding.log
    end
end
