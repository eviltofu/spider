(in-package :cl-user)
(defpackage spider
  (:use :cl :uuid)
  (:export
   
   :has-tags
   :add-tag
   :get-tag
   :remove-tag

   :has-properties
   :add-property
   :get-property
   :remove-property

   :has-identity
   :equal-identity))

(in-package :spider)


