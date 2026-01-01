bootstrap:
ifndef cluster
$(error "Please set the cluster variable. Example: make bootstrap cluster=dev-cluster")
endif

	@echo "Bootstrapping the repository for cluster: $(cluster)"
	helm upgrade -i k8s-state-core-workload ./charts/bootstrap --namespace argocd --set clusterName=$(cluster)
