function update
    if command -q brew
        brew update
        brew upgrade
        brew cleanup
        brew doctor
    else if command -q apt
        sudo apt update
        sudo apt upgrade
        sudo apt autoremove
    else
        echo "Unrecognized package manager"
        exit 1
    end
end
