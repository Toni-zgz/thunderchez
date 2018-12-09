#| Created and Maintained by Jack Lucas <silverbeard@protonmail.com>
see standalone repo at https://github.com/silverbeard00/siredis for license
|#

(library
    (redis)
  (export return-redis-closure redis-init)

  (import (chezscheme)
          (only (srfi s1 lists) take drop first)
          (posix)
          (socket))

  (include "redis/main.scm")

  (define (redis-init)
    (load-shared-object "libc.so.6")))
