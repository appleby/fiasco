;;; -*- mode: Lisp; -*-
;;;
;;; Copyright (c) 2006 by the authors.
;;;
;;; See LICENCE for details.

(defsystem :fiasco
  :description "A Common Lisp test framework that treasures your failures. A logical continuation of the Stefil test framework."
  :author "João Távora <https://github.com/capitaomorte>"
  :license "BSD 2-clause"
  :depends-on (:alexandria)
  :components
  ((:module "src"
    :serial t
    :components
    ((:file "package")
     (:file "infrastructure")
     (:file "asserts")
     (:file "test")
     (:file "suite")))))

(asdf:defsystem :fiasco-self-tests
    :licence "BSD / Public domain"
  :depends-on (:fiasco)
  :serial t
  :components ((:module "test"
                :serial t
                :components
                ((:file "basic")
                 (:file "intro-example")))))

