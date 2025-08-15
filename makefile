setup:
	@if [ -d "kubespray" ]; then \
		rm -rf kubespray; \
		echo "Removed kubespray"; \
	fi
	git clone https://github.com/kubernetes-sigs/kubespray.git
	cd kubespray && git checkout release-2.28

replace:
	./replace config/replacements.yaml kubespray/inventory/sample

clean:
	rm -rf kubespray