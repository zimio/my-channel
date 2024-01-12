(define-module (emacs-mypackages)
  #:use-module (guix packages)
  #:use-module (guix licenses)
  #:use-module (guix build-system emacs)
  #:use-module (guix git-download))

(define-public emacs-java-extensions
  (package
   (name "emacs-java-extensions")
   (version "0.0.1")
   (source (origin
            (method git-fetch)
            (uri (git-reference
                  (url "https://github.com/zimio/emacs-java-extensions")
                  (commit "4a115ba67f75e2b8de4628b0b6867e411cff56b8")))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "04v1svmqcv2kw39ghfsw41gzml8xc08cv1pamn42z3kgb3dgvk54"))))
   (build-system emacs-build-system)
   (home-page "")
   (synopsis "An attempt at extending java support without emacs.")
   (description
    "An attempt at extending java support without emacs.")
   (license gpl3+)))
