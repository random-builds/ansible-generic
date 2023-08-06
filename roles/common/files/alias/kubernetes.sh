alias k='kubectl'

alias ka='k annotate'

alias kaf='k apply -f'
alias kad='k apply -d'

function kar {
  if [ "$1" -eq "" ]; then
    k api-resources
  else
    k api-resources | grep -i $1
  fi
}

alias kC='k create'

alias kd='k describe'
alias kdj='k describe job'
alias kdcj='k describe cronjob'
alias kdcr='k describe clusterrole'
alias kdcrb='k describe clusterrolebinding'
alias kdr='k describe role'
alias kdrb='k describe rolebinding'
alias kdd='k describe deployment'
alias kdn='k describe nodes'
alias kdN='k describe namespace'
alias kdp='k describe pods'
alias kds='k describe service'
alias kdS='k describe secrets'
alias kdss='k describe statefulsets'
alias kde='k describe endpoints'
alias kdi='k describe ingress'
alias kdr='k describe replicasets'
alias kdcm='k describe configmap'

alias ke='k explain'

alias kg='k get'
alias kga='k get all'
alias kgaa='k get all --all-namespaces'
alias kge='k get endpoints -o wide'
alias kgd='k get deployments -o wide'
alias kgds='k get deployments -o wide --selector'
alias kgn='k get nodes -o wide'
alias kgns='k get namespace'
alias kgp='k get pods -o wide --show-labels'
alias kgps='k get pods -o wide --show-labels --selector'
alias kgs='k get services -o wide'
alias kgS='k get secrets -o json'
alias kgss='k get statefulesets'
alias kgi='k get ingress'
alias kgcm='k get configmap'

alias kh='k help'

function kl {
  k logs -f $(k get pods -o name | grep $1 | head -n1) ${@:2}
}

alias krf='k replace -f'

alias kp='k port-forward --address 0.0.0.0'
alias ktn='k top node'
alias ktp='k top pod'

alias kD='k delete'
alias kDl='k delete --selector'
alias kDf='k delete -f'

alias kx='k exec'
alias kxi='k exec -it'

alias kc='k config'
alias kcdc='kc delete-cluster'
alias kcdx='kc delete-context'
alias kcdu='kc delete-user'
alias kcsx='kc set-context'
alias kcsxn='kc set-context --current --namespace'
alias kcux='kc use-context'
alias kcv='kc view'
function kcvx {
  kcv -ojson | jq '{ context: .contexts, current: "current-context"}'
}
function kcvc {
  kcv -ojson | jq '.clusters'
}
function kcvu {
  kcv -ojson | jq '.users'
}