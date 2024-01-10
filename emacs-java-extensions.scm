(use-modules (guix packages)
             (guix git-download)
             (guix licenses)
             (guix build-system emacs))

(define-public emacs-java-extensions
  (package
   (name "emacs-java-extensions")
   (version "0.0.1")
   (source (origin
            (method git-fetch)
            (uri (git-reference
                  (url "https://github.com/zimio/emacs-java-extensions")
                  (commit "a14836ebf8be91734e7bf022b833cbe832730c54")))
            (file-name (git-file-name name version))
            (sha256
             (base32
              "1r17kg26jz5386r7a4cdfm9g0zarivc0v5smpgq3jifblvbnbn5k"))))
   (build-system emacs-build-system)
   (propagated-inputs
    (list tree-sitter tree-sitter-java))
   (home-page "")
   (synopsis "An attempt at extending java support without emacs.")
   (description
    "An attempt at extending java support without emacs.")
   (license gpl3+)))
