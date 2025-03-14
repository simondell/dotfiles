brew install terraform

if brew list terraform &>/dev/null; then
	echo "Terraform not installed, so will not intstall terraform autocompletions"
else
	terraform -install-autocomplete
fi
