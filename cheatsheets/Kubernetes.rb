cheatsheet do
  title 'Kubernetes'
  docset_file_name 'Kubernetes'
  keyword 'kubernetes'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Creating Objects'

    entry do
      name 'Create resource(s) in a JSON or YAML file'
      notes '
      ```
      kubectl create -f ./file.yml
      kubectl create -f ./file1.yml -f ./file2.yaml
      ```
      '
    end

    entry do
      name 'Create resources in all .json, .yml, and .yaml files in dir'
      notes '
      ```
      kubectl create -f ./dir
      ```
      '
    end

    entry do
      name 'Create from a URL'
      notes '
      ```
      kubectl create -f http://www.fpaste.org/279276/48569091/raw/
      ```
      '
    end

    entry do
      name 'Create multiple YAML objects from stdin'
      notes '
      ```
      cat <<EOF | kubectl create -f -
      apiVersion: v1
      kind: Pod
      metadata:
        name: busybox-sleep
      spec:
        containers:
        - name: busybox
          image: busybox
          args:
          - sleep
          - "1000000"
      ---
      apiVersion: v1
      kind: Pod
      metadata:
        name: busybox-sleep-less
      spec:
        containers:
        - name: busybox
          image: busybox
          args:
          - sleep
          - "1000"
      EOF
      ```
      '
    end

    entry do
      name 'Create a secret with several keys'
      notes '
      ```
      cat <<EOF | kubectl create -f -
      apiVersion: v1
      kind: Secret
      metadata:
        name: mysecret
      type: Opaque
      data:
        password: $(echo "s33msi4" | base64)
        username: $(echo "jane" | base64)
      EOF
      ```
      '
    end
  end

  category do
    id 'Viewing and Finding Resources'

    entry do
      name 'List all services in the namespace'
      notes '
      ```
      kubectl get services
      ```
      '
    end

    entry do
      name 'List all pods in all namespaces'
      notes '
      ```
      kubectl get pods --all-namespaces
      ```
      '
    end

    entry do
      name 'List all pods in the namespace, with more details'
      notes '
      ```
      kubectl get pods -o wide
      ```
      '
    end

    entry do
      name 'List a particular replication controller'
      notes '
      ```
      kubectl get rc <rc-name>
      ```
      '
    end

    entry do
      name 'List a particular RC'
      notes '
      ```
      kubectl get replicationcontroller <rc-name>
      ```
      '
    end

    entry do
      name 'List a particular node with verbose output'
      notes '
      ```
      kubectl describe nodes <node-name>
      ```
      '
    end

    entry do
      name 'List a particular pod with verbose output'
      notes '
      ```
      kubectl describe pods <pod-name>
      kubectl describe pods/<pod-name> # Equivalent to previous
      ```
      '
    end

    entry do
      name 'Lists pods created by <rc-name> using common prefix'
      notes '
      ```
      kubectl describe pods <rc-name>
      ```
      '
    end

    entry do
      name 'List services sorted by name'
      notes '
      ```
      kubectl get services --sort-by=.metadata.name
      ```
      '
    end

    entry do
      name 'List pods sorted by restart count'
      notes '
      ```
      kubectl get pods --sort-by=.status.containerStatuses[0].restartCount
      ```
      '
    end

    entry do
      name 'Get the version label of all pods with label app=cassandra'
      notes '
      ```
      kubectl get pods --selector=app=cassandra rc -o \'jsonpath={.items[*].metadata.labels.version}\'
      ```
      '
    end

    entry do
      name 'Get ExternalIPs of all nodes'
      notes '
      ```
      kubectl get nodes -o jsonpath=\'{.items[*].status.addresses[?(@.type=="ExternalIP")].address}\'
      ```
      '
    end

    entry do
      name 'List names of pods that belong to Particular RC'
      notes '
      ```
      # "jq" command useful for transformations that are too complex for jsonpath
      sel=$(./kubectl get rc <rc-name> --output=json | jq -j \'.spec.selector | to_entries | .[] | "\(.key)=\(.value),"\')
      sel=${sel%?} # Remove trailing comma
      pods=$(kubectl get pods --selector=$sel --output=jsonpath={.items..metadata.name})`
      ```
      '
    end

    entry do
      name 'Check which nodes are ready'
      notes '
      ```
      kubectl get nodes -o jsonpath=\'{range .items[*]}{@.metadata.name}:{range @.status.conditions[*]}{@.type}={@.status};{end}{end}\'| tr \';\' "\n"  | grep "Ready=True"
      ```
      '
    end
  end

  category do
    id 'Modifying and Deleting Resources'

    entry do
      name 'Add a label'
      notes '
      ```
      kubectl label pods <pod-name> new-label=awesome
      ```
      '
    end

    entry do
      name 'Add an annotation'
      notes '
      ```
      kubectl annotate pods <pod-name> icon-url=http://goo.gl/XXBTWq
      ```
      '
    end
  end

  category do
    id 'Interacting with Running Pods'

    entry do
      name 'Dump pod logs (stdout)'
      notes '
      ```
      kubectl logs <pod-name>
      ```
      '
    end

    entry do
      name 'Stream pod logs (stdout) until canceled (ctrl-c) or timeout'
      notes '
      ```
      kubectl logs -f <pod-name>
      ```
      '
    end

    entry do
      name 'Run pod as interactive shell'
      notes '
      ```
      kubectl run -i --tty busybox --image=busybox -- sh
      ```
      '
    end

    entry do
      name 'Attach to running container'
      notes '
      ```
      kubectl attach <podname> -i
      ```
      '
    end

    entry do
      name 'Forward port of pod to your local machine'
      notes '
      ```
      kubectl port-forward <podname> <local-and-remote-port>
      ```
      '
    end

    entry do
      name 'Forward port to service'
      notes '
      ```
      kubectl port-forward <servicename> <port>
      ```
      '
    end

    entry do
      name 'Run command in existing pod (1 container case)'
      notes '
      ```
      kubectl exec <pod-name> -- ls /
      ```
      '
    end

    entry do
      name 'Run command in existing pod (multi-container case)'
      notes '
      ```
      kubectl exec <pod-name> -c <container-name> -- ls /
      ```
      '
    end
  end

  notes '* Adapted from the official Kubernetes documentation cheatsheet: http://kubernetes.io/docs/user-guide/kubectl-cheatsheet/.'
end

# Created by <John Patterson><notarobot@nextrevision.net>
# http://kubernetes.io/docs/user-guide/kubectl-cheatsheet/
