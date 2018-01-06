#|
  This file is a part of spider project.
  Copyright (c) 2018 Jerome Chan (eviltofu@mac.com)
|#

(defsystem "spider-test"
  :defsystem-depends-on ("prove-asdf")
  :author "Jerome Chan"
  :license "LGPL-3.0"
  :depends-on ("spider"
               "prove")
  :components ((:module "tests"
                :components
                ((:file "package")
		 (:test-file "tags")
		 (:test-file "properties")
		 (:test-file "identifiables")
		 (:test-file "connections"))))
  :description "Test system for spider"

  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))
