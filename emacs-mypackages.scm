(define-module (emacs-mypackages)
  #:use-module (guix packages)
  #:use-module (guix licenses)
  #:use-module (guix build-system emacs)
  #:use-module (guix git-download))

(define-public emacs-java-extensions
  (package
   (name "emacs-java-extensions")
   (version "0.0.2")
   (source (origin
            (method git-fetch)
            (uri (git-reference
                  (url "https://github.com/zimio/emacs-java-extensions")
                  (commit "b73c7a8e790afc95007249dfbf19faaa31d572d1")))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "16dif35s5bb6jznb8nvyhr6dp12zks22byxvqnris600zzc6ij7r"))))
   (build-system emacs-build-system)
   (home-page "")
   (synopsis "An attempt at extending java support without emacs.")
   (description
    "An attempt at extending java support without emacs.")
   (license gpl3+)))
