# Source this file to enable Paasify collection PATH override.
# Usage: . DEVELOP_COLLECTIONS.sh

PRJ_PATH=$( dirname $( realpath "${BASH_SOURCE[0]}" ) )
export PAASIFY_COLLECTION_DIR=$PRJ_PATH/_collections


