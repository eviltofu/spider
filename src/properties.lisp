(in-package :spider)

(defclass has-properties ()
  ((values
    :initarg :value
    :initform (make-hash-table)
    :accessor has-properties-values)))

(defgeneric add-property (key value settable))
(defgeneric get-property (key settable))
(defgeneric remove-property (key settable))

(defmethod add-property ((key symbol) value (properties has-properties))
  (with-accessors ((hash has-properties-values)) properties
    (setf (gethash key hash) value)))

(defmethod get-property ((key symbol) (properties has-properties))
  (with-accessors ((hash has-properties-values)) properties
    (gethash key hash)))

(defmethod remove-property ((key symbol) (properties has-properties))
  (with-accessors ((hash has-properties-values)) properties
    (remhash key hash)))
