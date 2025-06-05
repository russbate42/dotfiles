#!/bin/zsh

# Tmux session configuration
SESH="Physics-Ubuntu"

# Check if session already exists
if tmux has-session -t $SESH 2>/dev/null; then
    echo "Session '$SESH' already exists. Attaching..."
    tmux attach-session -t $SESH
    exit 0
fi

printf "\nCreating new tmux session: ${SESH}\n"

# Session
#-------------------------------------------------------------------------------
tmux new-session -d -s $SESH -n "conf"
#-------------------------------------------------------------------------------

# Window 0: Configurations
#-------------------------------------------------------------------------------
tmux send-keys -t "${SESH}:conf" "cd ~/dotfiles" C-m
tmux split-window -h -t "${SESH}:conf"
# tmux split-window -h -t "${SESH}:conf" -c "$#{pane_current_path}"
tmux send-keys -t "${SESH}:conf.2" "cd ~/dotfiles" C-m
#-------------------------------------------------------------------------------

# Window 2: boosted_reco hist_production
#-------------------------------------------------------------------------------
hist_directory="~/Projects/boostedreco_hh4b/brhh4b/resonant_hist_production"

tmux new-window -t "${SESH}" -n "brhh4b"
tmux send-keys -t "${SESH}:brhh4b" "cd ${hist_directory}" C-m
tmux split-window -h -t "${SESH}:brhh4b"
tmux send-keys -t "${SESH}:brhh4b.2" "cd ${hist_directory}" C-m
sleep 2
tmux send-keys -t "${SESH}:brhh4b.2" "cd ../.." C-m
tmux send-keys -t "${SESH}:brhh4b.2" "source run_setup.sh" C-m
tmux send-keys -t "${SESH}:brhh4b.2" "cd brhh4b/resonant_hist_production" C-m
tmux send-keys -t "${SESH}:brhh4b.1" "nv ." C-m
#-------------------------------------------------------------------------------

# Window 3: boosted_reco documentation
#-------------------------------------------------------------------------------
doc_directory="~/Projects/boostedreco_hh4b/brhh4b/resonant_documentation"
tmux new-window -t $SESH -n "brhh4b_docs"
tmux send-keys -t $SESH:brhh4b_docs "cd ${doc_directory}" C-m
tmux send-keys -t $SESH:brhh4b_docs "nv README.md" C-m
#-------------------------------------------------------------------------------

# Window 4: statistical_analysis main
#-------------------------------------------------------------------------------
cat << 'EOF' > /tmp/helper_functions.sh
#!/bin/zsh
check_git_pull_simple() {
    # Fetch latest changes without merging
    echo "Fetching latest changes..."
    git fetch origin >/dev/null 2>&1
    
    # Get current branch
    local current_branch=$(git branch --show-current)
    
    # Compare local and remote commits
    local local_commit=$(git rev-parse HEAD)
    local remote_commit=$(git rev-parse "origin/$current_branch")
    
    if [ "$local_commit" = "$remote_commit" ]; then
        printf "Already up to date\n"
        return 0
    else
        printf "Updates available - git pull is possible\n"
        return 0
    fi
}
EOF

stats_main_directory="~/Projects/worktree_statistical_analysis_main/"
tmux new-window -t $SESH -n "stats_main"
tmux send-keys -t "${SESH}:stats_main" "cd ${stats_main_directory}" C-m
tmux send-keys -t "${SESH}:stats_main" "source /tmp/helper_functions.sh" C-m
sleep .5
tmux split-window -h -t ${SESH}:stats_main
tmux send-keys -t "${SESH}:stats_main.1" "check_git_pull_simple" C-m
tmux send-keys -t "${SESH}:stats_main.1" "cd statistical_analysis" C-m
tmux send-keys -t "${SESH}:stats_main.2" "cd ${stats_main_directory}" C-m
tmux send-keys -t "${SESH}:stats_main.2" "source setup_conda.sh" C-m
tmux send-keys -t "${SESH}:stats_main.2" "cd statistical_analysis" C-m
#-------------------------------------------------------------------------------

# Window 5: statistical_analysis resonant
#-------------------------------------------------------------------------------
reso_dir="~/Projects/statistical_analysis"
tmux new-window -t $SESH -n "stats"
tmux send-keys -t "${SESH}:stats" "cd ${reso_dir}" C-m
tmux split-window -h -t ${SESH}:stats
tmux send-keys -t "${SESH}:stats.2" "cd ${reso_dir}" C-m
tmux send-keys -t "${SESH}:stats.2" "source setup_conda.sh" C-m
tmux send-keys -t "${SESH}:stats.2" "cd statistical_analysis" C-m
tmux send-keys -t "${SESH}:stats.2" "git status" C-m
tmux send-keys -t "${SESH}:stats.1" "cd statistical_analysis" C-m
tmux send-keys -t "${SESH}:stats.1" "nv ." C-m
#-------------------------------------------------------------------------------

# Window 6: btop
#-------------------------------------------------------------------------------
tmux new-window -t $SESH -n "btop"
tmux send-keys -t $SESH:btop "btop" C-m
#-------------------------------------------------------------------------------

# Finally
#-------------------------------------------------------------------------------
tmux select-window -t 2
#-------------------------------------------------------------------------------


# Extra Syntax Exampels
#-------------------------------------------------------------------------------
# Create split panes in the main window
# tmux select-window -t $SESH:main
# tmux split-window -h -t $SESH:main
# tmux send-keys -t $SESH:main.1 "htop" C-m

# # Set layout for main window
# tmux select-layout -t $SESH:main main-vertical
#
# # Select the first pane of the main window
# tmux select-pane -t $SESH:main.0
#
# # Go back to main window
# tmux select-window -t $SESH:main

# Attach to the session
printf "Tmux session '$SESH' created successfully!\n"
tmux attach-session -t $SESH


