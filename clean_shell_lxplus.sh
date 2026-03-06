# env -i bash --noprofile --rcfile ~/dotfiles/.bashrc_simple
env -i\
    HOME="$HOME" \
    USER="$USER" \
    PATH="$PATH" \
    TERM="$TERM" \
    bash --noprofile --rcfile ~/dotfiles/.bashrc_simple
