SQLFILES=$(wildcard *.sql)

Mate.db: tablas.sql $(filter-out tablas.sql,${SQLFILES})
	sqlite3 Mate.db < $<
	cat $(filter-out $<,$^) | sqlite3 $@
