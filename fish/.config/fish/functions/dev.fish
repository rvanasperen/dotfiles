function dev
    if ! test -f ./artisan
        echo "Not in a Laravel app directory"
        return 1
    end

    composer dev $argv
end
