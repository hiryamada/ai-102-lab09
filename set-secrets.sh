csname=`az cognitiveservices account list --query '[].name' -otsv`
groupname=`az group list --query '[].name' -otsv`
endpoint=`az cognitiveservices account show -n $csname -g $groupname --query properties.endpoint -otsv`
key1=`az cognitiveservices account keys list -n "$csname" -g "$groupname" --query key1 -otsv`
dotnet user-secrets set 'CognitiveServices:Endpoint' "$endpoint"
dotnet user-secrets set 'CognitiveServices:SubscriptionKey' "$key1"
