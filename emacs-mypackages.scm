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
                  (commit "4e085bff74e805b9be3ee72eea37b9a6c2f7f282")))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "0ld8wynx2sz6nan08wbvvdvlcsb1awlai9pdcfh1n0hdagjq889k"))))
   (build-system emacs-build-system)
   (home-page "")
   (synopsis "An attempt at extending java support without emacs.")
   (description
    "An attempt at extending java support without emacs.")
   (license gpl3+)))
