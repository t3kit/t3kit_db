#!/bin/bash
DB_DB="t3kit"
DB_USER="t3kit"
DB_PW="t3kit1234"
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
	if [ -f "/.dockerenv" ]; then
	mysql -hdb -u "$DB_USER" -p"$DB_PW" -e "TRUNCATE TABLE ${TABLE}" "$DB_DB"
	else
	mysql -u "$DB_USER" -p"$DB_PW" -e "TRUNCATE TABLE ${TABLE}" "$DB_DB"
	fi
done

echo "Dumping db..."
	if [ -f "/.dockerenv" ]; then
	mysqldump -hdb -u "$DB_USER" -p"$DB_PW" "$DB_DB" > /var/www/shared/db/"$OUT_FILE"
	else
	mysqldump -u "$DB_USER" -p"$DB_PW" "$DB_DB" > "$OUT_FILE"
	fi

echo "Output in ${OUT_FILE}"

echo "Merge be_users.sql dump, must include admin user with password admin1234"
	if [ -f "/.dockerenv" ]; then
	cat /var/www/shared/db/be_users.sql >> "/var/www/shared/db/${OUT_FILE}"
	else
	cat be_users.sql >> "${OUT_FILE}"
	fi
