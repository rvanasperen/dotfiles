function dev
    # Laravel
    if test -f ./artisan
        if test -f ./vendor/bin/sail && test -f ./docker-compose.yml
            echo "Starting Laravel app via Sail"
            ./vendor/bin/sail up -d
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
end
