#|
  This file is a part of spider project.
  Copyright (c) 2018 Jerome Chan (eviltofu@mac.com)
|#

#|
  A simple graph database

  Author: Jerome Chan (eviltofu@mac.com)
|#

(defsystem "spider"
  :version "0.1.0"
  :author "Jerome Chan"
  :license "LGPL-3.0"
  :depends-on (:uuid)
  :components ((:module "src"
                :components
                ((:file "package")
		 (:file "tags")
		 (:file "properties")
		 (:file "identifiables")
		 (:file "connections"))))
  :description "A simple graph database"
  :long-description
  #.(read-file-string
     (subpathname *load-pathname* "README.markdown"))
  :in-order-to ((test-op (test-op "spider-test"))))
