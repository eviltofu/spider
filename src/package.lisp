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
   :has-identity-symbol
   :equal-identity

   :connection
   :equal-connection-source
   :equal-connection-destination
   :equal-connection

   :has-connections
   :add-connection
   :has-connection-to
   :has-connection-from
   :remove-connection))

(in-package :spider)


