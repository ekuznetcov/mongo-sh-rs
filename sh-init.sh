#! /bin/bash

mongos --configdb mongodb-config:27017
sh.addShard("mongodb-shard1:27017")
sh.addShard("mongodb-shard2:27017")
db.printShardingStatus()
use admin
sh.enableSharding("db_1")
db.printShardingStatus()
