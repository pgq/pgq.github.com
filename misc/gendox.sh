#! /bin/sh

set -e

gendoc_sql() {
    pkg="$1"
    dst="$2"
    make -C ../${pkg} dox
    mkdir -p "$dst"
    cp -rp ../${pkg}/docs/html/* ${dst}
}

gendoc_sql pgq extension/pgq
gendoc_sql pgq-node extension/pgq_node
gendoc_sql pgq-coop extension/pgq_coop
gendoc_sql pgq-ext extension/pgq_ext
gendoc_sql londiste-sql extension/londiste

