function a
    if ! test -f ./artisan
        echo "Not in a Laravel app directory"
        return 1
    end

    php artisan $argv
end
