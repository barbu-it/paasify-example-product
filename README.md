# Demo project

This is a basic demo project, illustrating how Paasify works. Not mean to be run in production.

This repository is MEANT to be forked to track the state of your deployed infra.


## Quickstart

Clone this app:
```
git clone https://github.com/barbu-it/paasify-example-product
cd paasify-example-product
```

Check your environment variables and update your secrets:
```
$EDITOR vars.dev.yml
$EDITOR secrets.yml
```

Enable which env you want to deploy, synlink it to `vars.env.yml`:
```
ln -s vars.dev.yml vars.env.yml
```

Run temporary fix perms script:
```
monitoring/fix_perms.sh
```


Starts your stacks:
```
paasify -c myapp/ src-install
paasify -c myapp/ apply
paasify -c monitoring/ src-install
paasify -c monitoring/ apply
```

Enjoy

## Develop

To change default Paasify lookup PATH for collections:
```
. ./DEVELOP_COLLECTIONS.sh
```

Then ensure you cloned your collections repository in it, like:
```
# LANG=C tree -d  -L 2 _collections
_collections
|-- myuser-paasify-collection-personal
|   |-- app1/docker-compose.yml
|   |-- app2/...
|   |-- app3/...
|   `-- ...
|-- myuser-other-collection
|   `-- ...
...
```


