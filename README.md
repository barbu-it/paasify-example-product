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
cp vars.dev.yml vars.env.yml
nano vars.env.yml
nano secrets.yml
```

Run temporary fix perms script (will be deprecated soon):
```
monitoring/fix_perms.sh
```

Install stack sources (will be deprecated soon):
```
paasify -c myapp/ src install
paasify -c monitoring/ src install
```


Starts your stacks:
```
cd myapp
paasify apply
```

Then on the monitoring stack:
```
cd ../monitoring
paasify apply
```

Enjoy

## Demo tour

Here is a list of sight your can discover in the browser:

  * Base:
    * Homepage, a good place to start
    * Traefik Dashboard
      * Show services
      * Show domains
  * Apps
    * Install and login into gitea
    * Test your internet speed with librespeed
  * Monitoring
    * Show Prometheus
    * Loop over exporters
    * Login into Grafana
      * Show default dashboards


In the code:

  * Multi project setup
      * Each sub dir is a project
      * Common variables on the top
  * Variable management:
      * vars.yml
      * vars.env.yml
      * secrets.yml
  * Paasify configs:
    * Global
        * Define global variables
        * Include variables files
    * Stacks
        * App reusability with collections
        * Homepage integration tag
        * Traefik integration tag
        * App name renaming (gitea)

With the cli:

  * Base:
      * paasify info
      * paasify apply
      * paasify path context
  * Operator:
      * paasify build/up/down
      * paasify explain
  


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


