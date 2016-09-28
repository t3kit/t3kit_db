#!/bin/bash
DB_DB="dockertypo3"
DB_USER="root"
DB_PW="root"
OUT_FILE=${1:-"t3kit.sql"}

CLEAR_TABLES=(
	"cf_cache_hash" 
	"cf_cache_hash_tags" 
	"cf_cache_pages" 
	"cf_cache_pages_tags" 
	"cf_cache_pagesection" 
	"cf_cache_pagesection_tags" 
	"cf_cache_rootline" 
	"cf_cache_rootline_tags" 
	"cf_extbase_datamapfactory_datamap" 
	"cf_extbase_datamapfactory_datamap_tags" 
	"cf_extbase_object" 
	"cf_extbase_object_tags" 
	"cf_extbase_reflection" 
	"cf_extbase_reflection_tags" 
	"cf_extbase_typo3dbbackend_tablecolumns" 
	"cf_extbase_typo3dbbackend_tablecolumns_tags" 
	"cf_news_categorycache" 
	"cf_news_categorycache_tags" 
	"cf_tx_solr" 
	"cf_tx_solr_tags"
	"tx_solr_statistics"
	"tx_pxasolr_searchstat"
	"tx_realurl_chashcache"
	"tx_realurl_pathcache"
	"tx_realurl_errorlog"
	"tx_realurl_urldecodecache"
	"tx_realurl_urlencodecache"
	"sys_log"
	"sys_history"
	"cache_imagesizes"
	"cache_md5params"
	"cache_treelist"
	"cache_typo3temp_log"
	"be_sessions"
	"be_users"
	"tx_extensionmanager_domain_model_extension"
	"sys_file_processedfile"
)


echo "Clearing tables...";
for TABLE in "${CLEAR_TABLES[@]}"
do
	mysql -hdb -u "$DB_USER" -p"$DB_PW" -e "TRUNCATE TABLE ${TABLE}" "$DB_DB"
done

echo "Dumping db..."
mysqldump -hdb -u "$DB_USER" -p"$DB_PW" "$DB_DB" > "$OUT_FILE"

echo "Output in ${OUT_FILE}"

echo "Merge be_users.sql dump, must include admin user with password admin1234"
cat be_users.sql >> "${OUT_FILE}"
