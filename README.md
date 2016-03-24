# sidekiq-failover-test

*Experimental: don't use in production*


### Usage

0. Spin up Vagrant box. Run all commands inside it.
1. `install-redis.sh`. This installs 3 redis services running on ports 6371, 6372, 6373.
2. `start-redis.sh`. Starts all 3 redis services. This does not make them slaves of each other.
2. `start-sentinel.sh`. Starts all 3 sentinels. This does not make them slaves of each other.
3. `promote.sh 1`. Promotes redis running on port 6372 as a master and other 2 as slaves
  * *You need to do that for the first time or Sentinel doesn't find other redis servers*


### License and authors
* Author: Timur Batyrshin erthad@gmail.com
* License: MIT
