project=uli-fx-$RANDOM
image=u1ih/yoisho-currency

#acs publish $project --delete_oldest --force --image $image --app_version 0.1

#acs config --set PORT=8080 $project

# amplify acs login
acs new $project --force
acs config --set PORT=8080 $project
acs server --set Small $project

acs publish $project --delete_oldest --force --image $image --app_version 0.1

acs list $project

# update image
# amplify acs publish simplenodeapp --delete_oldest --force --image simplenodeapp --app_version 0.2

