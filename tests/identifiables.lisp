(in-package :spider-test)

(plan nil)

(let ((i1 (make-instance 'has-identity))
      (i2 (make-instance 'has-identity))
      (i3 (make-instance 'has-identity
			 :uuid (uuid:make-uuid-from-string "08B33080-F1C2-11E7-82F1-95AE4F8E8E01")))
      (i4 (make-instance 'has-identity
			 :uuid (uuid:make-uuid-from-string "08B33080-F1C2-11E7-82F1-95AE4F8E8E01"))))
  (ok (not (equal-identity i1 i2)))
  (ok (equal-identity i3 i4)))

(finalize)
