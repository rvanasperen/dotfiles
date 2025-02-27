function pint
    if ! test -f ./vendor/bin/pint
        echo "Laravel Pint is not installed here"
        return 1
    end

    ./vendor/bin/pint $argv
end
