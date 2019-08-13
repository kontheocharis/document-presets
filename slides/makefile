runlatex: *
	pandoc -s header.yml *.md -t revealjs --slide-level=1 -o dist/index.html --template etc/template.html


token-url = https://reveal-js-multiplex-ccjbegmaii.now.sh

token:
	json_res=$$(curl -s $(token-url))
	yq -y ."socketio-secret"=$$(echo json_res | jq -r .secret) header.yml | sponge header.yml
	yq -y ."socketio-id"=$$(echo json_res | jq -r .socketId) header.yml | sponge header.yml
	yq -y ."socketio-url"=$(token-url) header.yml | sponge header.yml
