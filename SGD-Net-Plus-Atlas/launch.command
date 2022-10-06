#! /usr/bin/env bash
function pause(){
        read -n 1 -p "$*" INP
        if [ $INP != '' ] ; then
                echo -ne '\b \n'
        fi
}
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/monoaki/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/monoaki/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/monoaki/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/monoaki/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

cd /Users/monoaki/Documents/Github/SGD-Net-Plus-Atlas/
conda activate SGD
python run.py
pause "Convert Done.....Press Any Key to exit..."
