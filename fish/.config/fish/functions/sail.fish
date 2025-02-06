function sail
    if ! test -f ./vendor/bin/sail
        echo "Laravel Sail is not installed here"
        return 1
    end

    ./vendor/bin/sail $argv
end
