# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr
#
# cloud services, kubernetes, protobuf
alias kubectl_context="kubectl config current-context"
alias kube_wpod="watch kubectl get po"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/adebayo/google/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/adebayo/google/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/adebayo/google/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/adebayo/google/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="$PATH:$HOME/protoc-3.2/bin"
export PATH="$PATH:$HOME/google/cloud-sql-proxy"
export CLOUDSQLPROXYPATH=$HOME/scratches/certificates/microservices-9e02236eb849.json

export GOOGLE_CLOUD_SDK=$HOME/google/google-cloud-sdk/
source $GOOGLE_CLOUD_SDK/completion.zsh.inc
source $GOOGLE_CLOUD_SDK/path.zsh.inc

. /usr/local/etc/profile.d/z.sh

source <(kubectl completion zsh)
