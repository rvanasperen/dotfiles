function top
    if command -q btop
        btop $argv
    else
        command top $argv
    end
end
