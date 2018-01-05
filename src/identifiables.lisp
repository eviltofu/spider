(in-package :spider)

(defclass identifiable ()
  ((uuid
    :initarg :uuid
    :initform (uuid:make-v1-uuid)
    :accessor identifiable-uuid)))

(defgeneric equal-identifiable (i1 i2))

(defmethod equal-identifiable ((i1 identifiable) (i2 identifiable))
  (let ((i1s (princ-to-string (identifiable-uuid i1)))
	(i2s (princ-to-string (identifiable-uuid i2))))
    (equal i1s i2s)))
