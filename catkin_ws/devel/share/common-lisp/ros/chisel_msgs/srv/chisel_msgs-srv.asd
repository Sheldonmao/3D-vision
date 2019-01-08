
(cl:in-package :asdf)

(defsystem "chisel_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :chisel_msgs-msg
)
  :components ((:file "_package")
    (:file "GetAllChunksService" :depends-on ("_package_GetAllChunksService"))
    (:file "_package_GetAllChunksService" :depends-on ("_package"))
    (:file "PauseService" :depends-on ("_package_PauseService"))
    (:file "_package_PauseService" :depends-on ("_package"))
    (:file "ResetService" :depends-on ("_package_ResetService"))
    (:file "_package_ResetService" :depends-on ("_package"))
    (:file "SaveMeshService" :depends-on ("_package_SaveMeshService"))
    (:file "_package_SaveMeshService" :depends-on ("_package"))
  ))