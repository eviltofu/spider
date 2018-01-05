(in-package :spider-test)

;; NOTE: To run this test file, execute `(asdf:test-system :spider)' in your Lisp.

(plan nil)

(let ((instance (make-instance 'has-tags)))
  (ok (not (get-tag 'hello instance)))
  (ok (not (get-tag 'goodbye instance)))
  (ok (not (get-tag 'moo instance)))
  (add-tag 'hello instance)
  (ok (get-tag 'hello instance))
  (ok (not (get-tag 'goodbye instance)))
  (ok (not (get-tag 'moo instance)))
  (add-tag 'goodbye instance)
  (ok (get-tag 'hello instance))
  (ok (get-tag 'goodbye instance))
  (ok (not (get-tag 'moo instance)))
  (remove-tag 'hello instance)
  (ok (not (get-tag 'hello instance)))
  (ok (get-tag 'goodbye instance))
  (ok (not (get-tag 'moo instance)))
  (remove-tag 'goodbye instance)
  (ok (not (get-tag 'hello instance)))
  (ok (not (get-tag 'goodbye instance)))
  (ok (not (get-tag 'moo instance))))

(finalize)
