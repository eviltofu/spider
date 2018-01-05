(in-package :spider)

(defclass has-tags ()
  ((values
    :initarg :values
    :initform (make-hash-table)
    :accessor has-tags-values)))

(defgeneric add-tag (tag tags))
(defgeneric get-tag (tag tags))
(defgeneric remove-tag (tag tags))

(defmethod add-tag ((tag symbol) (tags has-tags))
  (with-accessors ((hash has-tags-values)) tags
    (setf (gethash tag hash) tag)))

(defmethod get-tag ((tag symbol) (tags has-tags))
  (with-accessors ((hash has-tags-values)) tags
    (gethash tag hash)))

(defmethod remove-tag ((tag symbol) (tags has-tags))
  (with-accessors ((hash has-tags-values)) tags
    (remhash tag hash)))

