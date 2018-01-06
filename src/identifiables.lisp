(in-package :spider)

(defclass has-identity ()
  ((uuid
    :initarg :uuid
    :initform (uuid:make-v1-uuid)
    :accessor has-identity-uuid)))
(defgeneric has-identity-symbol (i1))
(defgeneric equal-identity (i1 i2))

(defmethod has-identity-symbol ((i1 has-identity))
  (intern (princ-to-string (has-identity-uuid i1))))

(defmethod equal-identity ((i1 has-identity) (i2 has-identity))
  (let ((i1s (princ-to-string (has-identity-uuid i1)))
	(i2s (princ-to-string (has-identity-uuid i2))))
    (equal i1s i2s)))
