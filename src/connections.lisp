(in-package :spider)

(defclass connection-base ()
  ((source
    :initarg :source
    :initform (error "Source not defined.")
    :accessor connection-source)
   (destination
    :initarg :destination
    :initform (error "Destination not defined."))))
