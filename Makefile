MODULES = wal2json

REGRESS = cmdline insert1 update1 update2 update3 update4 delete1 delete2 \
		  delete3 delete4 savepoint specialvalue toast bytea

# PG_CONFIG = pg_config
# PGXS := $(shell $(PG_CONFIG) --pgxs)
# include $(PGXS)

subdir = contrib/wal2json
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk

# make installcheck
#
# It can be run but you need to add the following parameters to
# postgresql.conf:
#
# wal_level = logical
# max_replication_slots = 4
#
# Also, you should start the server before executing it.
