#!/bin/bash
DB_DB="t3kit"
OUT_FILE=${1:-"t3kit8.sql"}

CLEAR_TABLES=(
    "be_sessions"
    "be_users"
    "cache_md5params"
    "cache_treelist"
    "cf_cache_hash"
    "cf_cache_hash_tags"
    "cf_cache_imagesizes"
    "cf_cache_imagesizes_tags"
    "cf_cache_pages"
    "cf_cache_pagesection"
    "cf_cache_pagesection_tags"
    "cf_cache_pages_tags"
    "cf_cache_rootline"
    "cf_cache_rootline_tags"
    "cf_extbase_datamapfactory_datamap"
    "cf_extbase_datamapfactory_datamap_tags"
    "cf_extbase_object"
    "cf_extbase_object_tags"
    "cf_extbase_reflection"
    "cf_extbase_reflection_tags"
    "fe_sessions"
    "sys_file_processedfile"
    "sys_history"
    "sys_log"
    "tx_extensionmanager_domain_model_extension"

    # extensions
    "cf_themes_cache"
    "cf_themes_cache_tags"
    "cf_cache_news_category_tags"
    "cf_cache_news_category"
    "cf_tx_solr"
    "cf_tx_solr_tags"
    "tx_solr_statistics"
    "tx_realurl_uniqalias_cache_map"
    "tx_solr_cache"
    "tx_solr_cache_tags"
    "tx_solr_indexqueue_item"
    "tx_solr_last_searches"
    "tx_realurl_pathdata"
    "tx_realurl_uniqalias"
    "tx_realurl_urldata"
)

echo "Clearing tables...";
for TABLE in "${CLEAR_TABLES[@]}"
do
mysql --defaults-extra-file=/t3kit_db/t3kit-mysql.cnf -e "TRUNCATE TABLE ${TABLE}" "$DB_DB"
done

echo "Updating data..."
# Empty initialized solr servers
mysql --defaults-extra-file=/t3kit_db/t3kit-mysql.cnf -e "UPDATE sys_registry SET entry_value = '' WHERE entry_namespace = 'tx_solr' AND entry_key = 'servers';" "$DB_DB"
# Empty constants and setup for sys_template 1
mysql --defaults-extra-file=/t3kit_db/t3kit-mysql.cnf -e "UPDATE sys_template SET constants = '', config = '' WHERE uid = 1;" "$DB_DB"

echo "Dumping db..."
mysqldump --defaults-extra-file=/t3kit_db/t3kit-mysql.cnf "$DB_DB" > /t3kit_db/"$OUT_FILE"

echo "Output in ${OUT_FILE}"

echo "Merge be_users.sql dump, must include admin user with password admin1234"
cat /t3kit_db/be_users.sql >> "/t3kit_db/${OUT_FILE}"
