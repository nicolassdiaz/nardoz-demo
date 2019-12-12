# nardoz-demo

RunBook:

1) brew cask install multipass
2) multipass launch --cpus 4 --disk 5G --mem 3G --name nardoz-vm
3) multipass shell nardoz-vm
4) curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server --no-deploy traefik --write-kubeconfig-mode 644" sh -
5) curl -sfL https://get.rio.io | sh -
6) rio install --disable-features autoscaling --disable-features linkerd --disable-features dashboard
7) rio run --name nardoz-demo -p 80:8080 https://github.com/nicolassdiaz/nardoz-demo
8) rio ps
9) Edit your hosts file:
     As our ingress ( gloo ) is using the internal IP to serve traffic we have to create an entry to point 
     the app endpoint to that IP.
10) Commit and Push your change.

Enjoy.
