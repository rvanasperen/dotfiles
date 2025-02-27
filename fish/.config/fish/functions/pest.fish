function pest
    if ! test -f ./vendor/bin/pest
        echo "Pest is not installed here"
        return 1
    end

    ./vendor/bin/pest $argv
end
