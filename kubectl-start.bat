@REM This command is used a LOT both below and in daily life
doskey k=kubectl $*

@REM Apply a YML file
doskey kaf=kubectl apply -f $*

@REM Drop into an interactive terminal on a container
doskey keti=kubectl exec -ti $*

@REM Manage configuration quickly to switch contexts between local, dev ad staging.
doskey kcuc=kubectl config use-context $*
doskey kcsc=kubectl config set-context $*
doskey kcdc=kubectl config delete-context $*
doskey kccc=kubectl config current-context $*

@REM List all contexts
doskey kcgc=kubectl config get-contexts $*

@REM General doskeyes
doskey kdel=kubectl delete $*
doskey kdelf=kubectl delete -f $*

@REM Pod management.
doskey kgp=kubectl get pods $*
doskey kgpa=kubectl get pods --all-namespaces $*
doskey kgpw=kgp --watch $*
doskey kgpwide=kgp -o wide $*
doskey kep=kubectl edit pods $*
doskey kdp=kubectl describe pods $*
doskey kdelp=kubectl delete pods $*
doskey kgpall=kubectl get pods --all-namespaces -o wide $*

@REM get pod by label: kgpl "app=myapp" -n myns
doskey kgpl=kgp -l $*

@REM get pod by namespace: kgpn kube-system"
doskey kgpn=kgp -n $*

@REM Service management.
doskey kgs=kubectl get svc $*
doskey kgsa=kubectl get svc --all-namespaces $*
doskey kgsw=kgs --watch $*
doskey kgswide=kgs -o wide $*
doskey kes=kubectl edit svc $*
doskey kds=kubectl describe svc $*
doskey kdels=kubectl delete svc $*

@REM Ingress management
doskey kgi=kubectl get ingress $* 
doskey kgia=kubectl get ingress --all-namespaces $*
doskey kei=kubectl edit ingress $*
doskey kdi=kubectl describe ingress $*
doskey kdeli=kubectl delete ingress $*

@REM Namespace management
doskey kgns=kubectl get namespaces $*
doskey kens=kubectl edit namespace $*
doskey kdns=kubectl describe namespace $*
doskey kdelns=kubectl delete namespace $*
doskey kcn=kubectl config set-context --current --namespace $*

@REM ConfigMap management
doskey kgcm=kubectl get configmaps $*
doskey kgcma=kubectl get configmaps --all-namespaces $*
doskey kecm=kubectl edit configmap $*
doskey kdcm=kubectl describe configmap $*
doskey kdelcm=kubectl delete configmap $*

@REM Secret management
doskey kgsec=kubectl get secret $*
doskey kgseca=kubectl get secret --all-namespaces $*
doskey kdsec=kubectl describe secret $*
doskey kdelsec=kubectl delete secret $*

@REM Deployment management.
doskey kgd=kubectl get deployment $*
doskey kgda=kubectl get deployment --all-namespaces $*
doskey kgdw=kgd --watch $*
doskey kgdwide=kgd -o wide $*
doskey ked=kubectl edit deployment $*
doskey kdd=kubectl describe deployment $*
doskey kdeld=kubectl delete deployment $*
doskey ksd=kubectl scale deployment $*
doskey krsd=kubectl rollout status deployment $*


@REM Rollout management.
doskey kgrs=kubectl get rs $*
doskey krh=kubectl rollout history $*
doskey kru=kubectl rollout undo $*

@REM Statefulset management.
doskey kgss=kubectl get statefulset $*
doskey kgssa=kubectl get statefulset --all-namespaces $*
doskey kgssw=kgss --watch $*
doskey kgsswide=kgss -o wide $*
doskey kess=kubectl edit statefulset $*
doskey kdss=kubectl describe statefulset $*
doskey kdelss=kubectl delete statefulset $*
doskey ksss=kubectl scale statefulset $*
doskey krsss=kubectl rollout status statefulset $*

@REM Port forwarding
doskey kpf=kubectl port-forward  $*

@REM Tools for accessing all information
doskey kga=kubectl get all $*
doskey kgaa=kubectl get all --all-namespaces $*

@REM Logs
doskey kl=kubectl logs $*
doskey kl1h=kubectl logs --since 1h $*
doskey kl1m=kubectl logs --since 1m $*
doskey kl1s=kubectl logs --since 1s $*
doskey klf=kubectl logs -f $*
doskey klf1h=kubectl logs --since 1h -f $*
doskey klf1m=kubectl logs --since 1m -f $*
doskey klf1s=kubectl logs --since 1s -f $*

@REM File copy
doskey kcp=kubectl cp $*

@REM Node Management
doskey kgno=kubectl get nodes $*
doskey keno=kubectl edit node $*
doskey kdno=kubectl describe node $*
doskey kdelno=kubectl delete node $*

@REM PVC management.
doskey kgpvc=kubectl get pvc $*
doskey kgpvca=kubectl get pvc --all-namespaces $*
doskey kgpvcw=kgpvc --watch $*
doskey kepvc=kubectl edit pvc $*
doskey kdpvc=kubectl describe pvc $*
doskey kdelpvc=kubectl delete pvc $*

@REM Service account management.
doskey kdsa=kubectl describe sa $*
doskey kdelsa=kubectl delete sa $*

@REM DaemonSet management.
doskey kgds=kubectl get daemonset $*
doskey kgdsw=kgds --watch $*
doskey keds=kubectl edit daemonset $*
doskey kdds=kubectl describe daemonset $*
doskey kdelds=kubectl delete daemonset $*

@REM CronJob management.
doskey kgcj=kubectl get cronjob $*
doskey kecj=kubectl edit cronjob $*
doskey kdcj=kubectl describe cronjob $*
doskey kdelcj=kubectl delete cronjob $*

@REM kubectl Tanzu login
doskey kvl=kubectl vsphere login --server $*
doskey kvli=kubectl vsphere login --insecure-skip-tls-verify --server $*
doskey kvlo=kubectl vsphere logout $*
