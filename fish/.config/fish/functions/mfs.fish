function mfs
    if ! test -f ./artisan
        echo "Not in a Laravel app directory"
        return 1
    end

    php artisan migrate:fresh --seed $argv
end
