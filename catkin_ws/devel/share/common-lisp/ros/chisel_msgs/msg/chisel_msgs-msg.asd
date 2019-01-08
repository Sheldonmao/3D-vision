
(cl:in-package :asdf)

(defsystem "chisel_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ChunkListMessage" :depends-on ("_package_ChunkListMessage"))
    (:file "_package_ChunkListMessage" :depends-on ("_package"))
    (:file "ChunkMessage" :depends-on ("_package_ChunkMessage"))
    (:file "_package_ChunkMessage" :depends-on ("_package"))
  ))