for i in {0..255}; do
    printf "${i}"
    printf "\x1b[38;5;${i}mcolour${i}\x1b[0m "
    if (( i % 14 == 0 )); then
        printf "\n"
        printf "${i} %% 14 == 0"; printf "\n"
    fi
    # if (( (i + 1) % 16 == 0 )); then
    #     printf "\n"
    # fi
done
