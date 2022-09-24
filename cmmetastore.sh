kubectl create configmap metastore-cfg --dry-run=client \
--from-file=hive_metastore/metastore-site.xml \
--from-file=hive_metastore/core-site.xml \
--from-file=hive_metastore/metastore-log4j2.properties \
-o yaml | kubectl apply -f -

kubectl create secret generic my-s3-keys --from-literal access-key=toto --from-literal secret-key=titi