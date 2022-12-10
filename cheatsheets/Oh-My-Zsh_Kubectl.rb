cheatsheet do
	title 'Oh-My-Zsh Kubectl'
  docset_file_name 'Oh-My-Zsh_Kubectl'
  keyword 'ohmyzsh'
  source_url 'http://cheat.kapeli.com'

  introduction <<-'END'
    This cheat sheet refers to the [Kubectl](https://kubernetes.io/docs/reference/kubectl/kubectl/) [plugin](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/kubectl) for [Oh My Zsh](https://ohmyz.sh/).
  
    _Note_: Unless otherwise stated, commands work within the current Namespace context. Use `-n`|`--namespace <namespace>` as part of the command-line to change the target.
  END

  category do
    id 'Aliases'

    entry do
      command 'k'
      name '`kubectl`' 
      notes 'The kubectl command.'
    end
    entry do
      command 'kaf'
      name '`kubectl apply -f`'
      notes 'Apply resources as described by the YAML file(s) specified after the `-f` argument.'
    end
    entry do
      command 'kca'
      name '`kubectl --all-namespaces`'
      notes 'Apply the subsequent command across all Namespaces.'
    end
    entry do
      command 'kccc'
      name '`kubectl config current-context`'
      notes 'Display the current context.'
    end
    entry do
      command 'kcdc'
      name '`kubectl config delete-context`'
      notes 'Delete the specified context from the kubeconfig file.'
    end
    entry do
      command 'kcgc'
      name '`kubectl config get-contexts`'
      notes 'List all available contexts.'
    end
    entry do
      command 'kcn'
      name '`kubectl config set-context --current --namespace`'
      notes 'Change the current Namespace context.'
    end
    entry do
      command 'kcp'
      name '`kubectl cp`'
      notes 'Copy files and directories to/from containers.'
    end
    entry do
      command 'kcsc'
      name '`kubectl config set-context`'
      notes 'Set a context entry in kubeconfig file.'
    end
    entry do
      command 'kcuc'
      name '`kubectl config use-context`'
      notes 'Set the current context in the kubeconfig file.'
    end
    entry do
      command 'kdcj'
      name '`kubectl describe cronjob`'
      notes 'Display details about CronJob resource(s).'
    end
    entry do
      command 'kdcm'
      name '`kubectl describe configmap`'
      notes 'Display details about ConfigMap resource(s).'
    end
    entry do
      command 'kdd'
      name '`kubectl describe deployment`'
      notes 'Display details about Deployment resource(s).'
    end
    entry do
      command 'kdds'
      name '`kubectl describe daemonset`'
      notes 'Display details about DaemonSet resource(s).'
    end
    entry do
      command 'kdel'
      name '`kubectl delete`'
      notes 'Delete resources by filenames, stdin, resources and names, or by resources and label selector.'
    end
    entry do
      command 'kdelcj'
      name '`kubectl delete cronjob`'
      notes 'Delete CronJob resources matching the name(s) passed.'
    end
    entry do
      command 'kdelcm'
      name '`kubectl delete configmap`'
      notes 'Delete ConfigMap resources matching the name(s) passed.'
    end
    entry do
      command 'kdeld'
      name '`kubectl delete deployment`'
      notes 'Delete Deployment resources matching the name(s) passed.'
    end
    entry do
      command 'kdelds'
      name '`kubectl delete daemonset`'
      notes 'Delete DaemonSets resources matching the name(s) passed.'
    end
    entry do
      command 'kdelf'
      name '`kubectl delete -f`'
      notes 'Delete resources described by the YAML file(s) specified with the `-f` argument.'
    end
    entry do
      command 'kdeli'
      name '`kubectl delete ingress`'
      notes 'Delete Ingress resources matching the name(s) passed.'
    end
    entry do
      command 'kdelj'
      name '`kubectl delete job`'
      notes 'Delete Job resources matching the name(s) passed.'
    end
    entry do
      command 'kdelno'
      name '`kubectl delete node`'
      notes 'Delete Node resources matching the name(s) passed.'
    end
    entry do
      command 'kdelns'
      name '`kubectl delete namespace`'
      notes 'Delete the specified Namespace(s). **WARNING**: This deletes everything in the Namespace!'
    end
    entry do
      command 'kdelp'
      name '`kubectl delete pods`'
      notes 'Delete Pod resources matching the name(s) passed.'
    end
    entry do
      command 'kdelpvc'
      name '`kubectl delete pvc`'
      notes 'Delete PersistentVolumeClaim resources matching the name(s) passed.'
    end
    entry do
      command 'kdels'
      name '`kubectl delete svc`'
      notes 'Delete Service resources matching the name(s) passed.'
    end
    entry do
      command 'kdelsa'
      name '`kubectl delete sa`'
      notes 'Delete ServiceAccount resources matching the name(s) passed.'
    end
    entry do
      command 'kdelsec' 
      name '`kubectl delete secret`'
      notes 'Delete Secret resources matching the name(s) passed.'
    end
    entry do
      command 'kdelss'
      name '`kubectl delete statefulset`'
      notes 'Delete StatefulSet resources matching the name(s) passed.'
    end
    entry do
      command 'kdi'
      name '`kubectl describe ingress`'
      notes 'Display details about Ingress resource(s).'
    end
    entry do
      command 'kdj'
      name '`kubectl describe job`'
      notes 'Display details about Job resources(s).'
    end
    entry do
      command 'kdno'
      name '`kubectl describe node`'
      notes 'Display details about Node resources(s).'
    end
    entry do
      command 'kdns'
      name '`kubectl describe namespace`'
      notes 'Display details about Namespace resources(s).'
    end
    entry do
      command 'kdp'
      name '`kubectl describe pods`             '
      notes 'Display details about Pod resources(s).'
    end
    entry do
      command 'kdpvc'
      name '`kubectl describe pvc`'
      notes 'Display details about PersistentVolumeClaim resources(s).'
    end
    entry do
      command 'kdrs'
      name '`kubectl describe replicaset`'
      notes 'Display details about ReplicaSet resources(s).'
    end
    entry do
      command 'kds'
      name '`kubectl describe svc`'
      notes 'Display details about Service resources(s).'
    end
    entry do
      command 'kdsa'
      name '`kubectl describe sa`'
      notes 'Display details about ServiceAccount resources(s).'
    end
    entry do
      command 'kdsec'
      name '`kubectl describe secret`'
      notes 'Display details about Secret resource(s).'
    end
    entry do
      command 'kdss'
      name '`kubectl describe statefulset`'
      notes 'Display details about StatefulSet resource(s).'
    end
    entry do
      command 'kecj'
      name '`kubectl edit cronjob`'
      notes 'Edit a CronJob with the default editor.'
    end
    entry do
      command 'kecm'
      name '`kubectl edit configmap`'
      notes 'Edit a ConfigMap with the default editor.'
    end
    entry do
      command 'ked'
      name '`kubectl edit deployment`'
      notes 'Edit a Deployment with the default editor.'
    end
    entry do
      command 'keds'
      name '`kubectl edit daemonset`'
      notes 'Edit a DaemonSet with the default editor.'
    end
    entry do
      command 'kei'
      name '`kubectl edit ingress`'
      notes 'Edit an Ingress with the default editor.'
    end
    entry do
      command 'kej'
      name '`kubectl edit job`'
      notes 'Edit a Job with the default editor.'
    end
    entry do
      command 'keno'
      name '`kubectl edit node`'
      notes 'Edit a Node with the default editor.'
    end
    entry do
      command 'kens'
      name '`kubectl edit namespace`'
      notes 'Edit a Namespace with the default editor.'
    end
    entry do
      command 'kep'
      name '`kubectl edit pods`                 '
      notes 'Edit a Pod with the default editor.'
    end
    entry do
      command 'kepvc'
      name '`kubectl edit pvc`'
      notes 'Edit a PersistentVolumeClaim with the default editor.'
    end
    entry do
      command 'kers'
      name '`kubectl edit replicaset`'
      notes 'Edit a ReplicaSet with the default editor.'
    end
    entry do
      command 'kes'
      name '`kubectl edit svc`'
      notes 'Edit a Service (svc) with the default editor.'
    end
    entry do
      command 'kess'
      name '`kubectl edit statefulset`'
      notes 'Edit a StatefulSet with the default editor.'
    end
    entry do
      command 'keti'
      name '`kubectl exec -ti`'
      notes 'Open an interactive terminal session in a container.'
    end
    entry do
      command 'kga'
      name '`kubectl get all`'
      notes 'List all resources in tabular output format.'
    end
    entry do
      command 'kgaa'
      name '`kubectl get all --all-namespaces`'
      notes 'List all resources across all Namespaces in the cluster (tabular output).'
    end
    entry do
      command 'kgcj'
      name '`kubectl get cronjob`'
      notes 'List specified/all CronJobs in tabular output format.'
    end
    entry do
      command 'kgcm'
      name '`kubectl get configmaps`'
      notes 'List specified/all ConfigMaps in tabular output format.'
    end
    entry do
      command 'kgd'
      name '`kubectl get deployment`'
      notes 'List specified/all Deployments in tabular output format.'
    end
    entry do
      command 'kgds'
      name '`kubectl get daemonset`'
      notes 'List specified/all DaemonSets in tabular output format.'
    end
    entry do
      command 'kgdsw'
      name '`kgds --watch`'
      notes 'List specified/all DaemonSets and watch for changes.'
    end
    entry do
      command 'kgdw'
      name '`kgd --watch`'
      notes 'List specified/all Deployments and watch for changes.'
    end
    entry do
      command 'kgdwide'
      name '`kgd -o wide`'
      notes 'List specified/all Deployments with additional columns of information.'
    end
    entry do
      command 'kgi'
      name '`kubectl get ingress`'
      notes 'List specified/all Ingresses in tabular output format.'
    end
    entry do
      command 'kgj'
      name '`kubectl get job`'
      notes 'List specified/all Jobs in tabular output format.'
    end
    entry do
      command 'kgno'
      name '`kubectl get nodes`'
      notes 'List specified/all Nodes in tabular output format.'
    end
    entry do
      command 'kgns'
      name '`kubectl get namespaces`'
      notes 'List specified/all Namespaces in a cluster (tabular output).'
    end
    entry do
      command 'kgp'
      name '`kubectl get pods`'
      notes 'List specified/all Pods in tabular output format.'
    end
    entry do
      command 'kgpl'
      name '`kgp -l`'
      notes 'Get Pods by Label. Example: `kgpl "app=myapp" -n myns`'
    end
    entry do
      command 'kgpn'
      name '`kgp -n`'
      notes 'Get Pods by Namespace. Example: `kgpn kube-system`'
    end
    entry do
      command 'kgpvc'
      name '`kubectl get pvc`'
      notes 'List specified/all PersistentVolumeClaims in tabular output format.'
    end
    entry do
      command 'kgpvcw'
      name '`kgpvc --watch`'
      notes 'List specified/all PersistentVolumeClaims and watch for changes.'
    end
    entry do
      command 'kgpw'
      name '`kgp --watch`'
      notes 'List specified/all Pods and watch for changes.'
    end
    entry do
      command 'kgpwide'
      name '`kgp -o wide`'
      notes 'List specified/all Deployments with additional columns of information.'
    end
    entry do
      command 'kgrs'
      name '`kubectl get replicaset`'
      notes 'List specified/all ReplicaSets in tabular output format.'
    end
    entry do
      command 'kgs'
      name '`kubectl get svc`'
      notes 'List specified/all Services in tabular output format.'
    end
    entry do
      command 'kgsec'
      name '`kubectl get secret`'
      notes 'List specified/all Secrets in tabular output format.'
    end
    entry do
      command 'kgss'
      name '`kubectl get statefulset`'
      notes 'List specified/all StatefulSets in tabular output format.'
    end
    entry do
      command 'kgssw'
      name '`kgss --watch`'
      notes 'List specified/all StatefulSets and watch for changes.'
    end
    entry do
      command 'kgsswide'
      name '`kgss -o wide`'
      notes 'List specified/all StatefulSets with additional columns of information.'
    end
    entry do
      command 'kgsw'
      name '`kgs --watch`'
      notes 'List specified/all Services and watch for changes.'
    end
    entry do
      command 'kgswide'
      name '`kgs -o wide`'
      notes 'List specified/all Services with additional columns of information.'
    end
    entry do
      command 'kl'
      name '`kubectl logs`'
      notes 'Display the logs for a container or resource.'
    end
    entry do
      command 'klf'
      name '`kubectl logs -f`'
      notes 'Stream (follow) the logs for a container or resource.'
    end
    entry do
      command 'kpf'
      name '`kubectl port-forward`'
      notes 'Forward one or more local ports to a Pod.'
    end
    entry do
      command 'kres'
      name '`kubectl set env $@ REFRESHED_AT=...`'
      notes 'Recreate all Pods in a Deployment with zero-downtime.'
    end
    entry do
      command 'krh'
      name '`kubectl rollout history`'
      notes 'Check the revisions of a Deployment.'
    end
    entry do
      command 'krsd'
      name '`kubectl rollout status deployment`'
      notes 'Check the rollout status of a Deployment.'
    end
    entry do
      command 'krsss'
      name '`kubectl rollout status statefulset`'
      notes 'Check the rollout status of a StatefulSet.'
    end
    entry do
      command 'kru'
      name '`kubectl rollout undo`'
      notes 'Rollback to the previous revision.'
    end
    entry do
      command 'ksd'
      name '`kubectl scale deployment`'
      notes 'Scale a Deployment.'
    end
    entry do
      command 'ksss'
      name '`kubectl scale statefulset`'
      notes 'Scale a StatefulSet.'
    end
  end

  category do
    id 'Wrappers'

    entry do
      command 'kj'
      name 'JSON, colorized with [`jq`](https://stedolan.github.io/jq/)'
    end
    entry do
      command 'kjx'
      name 'JSON, colorized with [`fx`](https://github.com/antonmedv/fx)'
    end
    entry do
      command 'ky'
      name 'YAML, colorized with [`yh`](https://github.com/andreazorzetto/yh)'
    end
  end
end