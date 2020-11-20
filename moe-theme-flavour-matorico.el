;; ======================================================
;; Matorico flavour by <kyoken@kyoken.ninja>
;; Based on:
;;   Material colors and
;;   Emacs Orico theme (inspired by Original Coding) by <nikolay@blohin.org>
;; ======================================================
(defun moe-theme-flavour-matorico ()
  (interactive)

  ;; material colors palette
  (let ((mat-white            "#FFFFFF")
        (mat-black            "#000000")

        (mat-red-100          "#FFCDD2")
        (mat-red-500          "#F44336")
        (mat-red-700          "#D32F2F")
        (mat-red-900          "#B71C1C")

        (mat-pink-A400        "#F50057")
        (mat-pink-100         "#F8BBD0")
        (mat-pink-500         "#E91E63")
        (mat-pink-700         "#C2185B")
        (mat-pink-900         "#880E4F")

        (mat-purple-A400      "#D500F9")
        (mat-purple-100       "#E1BEE7")
        (mat-purple-500       "#9C27B0")
        (mat-purple-700       "#7b1fa2")
        (mat-purple-900       "#4A148C")

        (mat-light-blue-100   "#B3E5FC")
        (mat-light-blue-500   "#2196F3")
        (mat-light-blue-700   "#1976D2")
        (mat-light-blue-900   "#01579B")

        (mat-cyan-100         "#B2EBF2")
        (mat-cyan-500         "#00BCD4")
        (mat-cyan-700         "#0097A7")
        (mat-cyan-900         "#006064")

        (mat-light-green-100  "#DCEDC8")
        (mat-light-green-500  "#8BC34A")
        (mat-light-green-700  "#689F38")
        (mat-light-green-900  "#33691E")

        (mat-yellow-100       "#FFF9C4")
        (mat-yellow-500       "#FFEB3B")
        (mat-yellow-700       "#FBC02D")
        (mat-yellow-900       "#F57F17")

        (mat-orange-100       "#FFE0B2")
        (mat-orange-500       "#FF9800")
        (mat-orange-700       "#F57C00")
        (mat-orange-900       "#E65100")

        (mat-grey-100         "#F5F5F5")
        (mat-grey-500         "#9E9E9E")
        (mat-grey-700         "#616161")
        (mat-grey-900         "#212121")

        (mat-blue-grey-100    "#CFD8DC")
        (mat-blue-grey-300    "#90A4AE")
        (mat-blue-grey-500    "#607D8B")
        (mat-blue-grey-900    "#263238"))

   ;; make custom faces

   (font-lock-add-keywords 'python-mode (list
     (setq font-lock-operator-face (cons (regexp-opt
      '("[" "]" "|" "&" "!" "." "+" "=" "-" "/" "%" "*" "," "(" ")" "<" ">" "{" "}" ":"))
      (list 0 'font-lock-operator-face 'keep)))
     (setq font-lock-end-statement (cons (regexp-opt
      '(";"))
      (list 0 'font-lock-end-statement 'keep)))
     ))

   (font-lock-add-keywords 'cython-mode (list
     (setq font-lock-operator-face (cons (regexp-opt
      '("[" "]" "|" "&" "!" "." "+" "=" "-" "/" "%" "*" "," "(" ")" "<" ">" "{" "}" ":"))
      (list 0 'font-lock-operator-face 'keep)))
     (setq font-lock-end-statement (cons (regexp-opt
      '(";"))
      (list 0 'font-lock-end-statement 'keep)))
     ))

   (font-lock-add-keywords 'c-mode (list
     (setq font-lock-operator-face (cons (regexp-opt
      '("[" "]" "|" "&" "!" "." "+" "=" "-" "/" "%" "*" "," "(" ")" "<" ">" "{" "}" ":"))
      (list 0 'font-lock-operator-face 'keep)))
     (setq font-lock-end-statement (cons (regexp-opt
      '(";"))
      (list 0 'font-lock-end-statement 'keep)))
     ))

   (font-lock-add-keywords 'c++-mode (list
     (setq font-lock-operator-face (cons (regexp-opt
      '("[" "]" "|" "&" "!" "." "+" "=" "-" "/" "%" "*" "," "(" ")" "<" ">" "{" "}" ":"))
      (list 0 'font-lock-operator-face 'keep)))
     (setq font-lock-end-statement (cons (regexp-opt
      '(";"))
      (list 0 'font-lock-end-statement 'keep)))
     ))

   (font-lock-add-keywords 'glsl-mode (list
     (setq font-lock-operator-face (cons (regexp-opt
      '("[" "]" "|" "&" "!" "." "+" "=" "-" "/" "%" "*" "," "(" ")" "<" ">" "{" "}" ":"))
      (list 0 'font-lock-operator-face 'keep)))
     (setq font-lock-end-statement (cons (regexp-opt
      '(";"))
      (list 0 'font-lock-end-statement 'keep)))
     ))

   (font-lock-add-keywords 'cmake-mode (list
     (setq font-lock-operator-face (cons (regexp-opt
      '("$" "(" ")" "{" "}"))
      (list 0 'font-lock-operator-face 'keep)))
     (setq font-lock-end-statement (cons (regexp-opt
      '(";"))
      (list 0 'font-lock-end-statement 'keep)))
     ))

   (font-lock-add-keywords 'makefile-mode (list
     (setq font-lock-operator-face (cons (regexp-opt
      '("$" "(" ")" ":" "=" "%"))
      (list 0 'font-lock-operator-face 'keep)))
     (setq font-lock-end-statement (cons (regexp-opt
      '("\\"))
      (list 0 'font-lock-end-statement 'keep)))
     ))

   (font-lock-add-keywords 'sh-mode (list
     (setq font-lock-operator-face (cons (regexp-opt
      '("{" "}" "[" "]" "$" "=" "+"))
      (list 0 'font-lock-operator-face 'keep)))
     (setq font-lock-end-statement (cons (regexp-opt
      '(";"))
      (list 0 'font-lock-end-statement 'keep)))
     ))

   (font-lock-add-keywords 'emacs-lisp-mode (list
     (setq font-lock-operator-face (cons (regexp-opt
      '("(" ")" "'"))
      (list 0 'font-lock-operator-face 'keep)))
     (setq font-lock-end-statement (cons (regexp-opt
      '(";"))
      (list 0 'font-lock-end-statement 'keep)))
     ))

   (make-face 'font-lock-operator-face)
   (make-face 'font-lock-end-statement)
   (setq font-lock-operator-face 'font-lock-operator-face)
   (setq font-lock-end-statement 'font-lock-end-statement)

   ;; customize and load moe
   (setq moe-dark-bg                        "#212121")
   ;; (setq moe-dark-bg                        mat-blue-grey-900)
   (setq moe-dark-fg                        mat-white)
   (setq moe-dark-builtin                   mat-purple-A400)
   (setq moe-dark-comment-delimiter         mat-blue-grey-300)
   (setq moe-dark-comment                   mat-blue-grey-300)
   (setq moe-dark-constant                  mat-light-blue-500)
   (setq moe-dark-doc                       mat-red-700)
   (setq moe-dark-doc-string                mat-yellow-700)
   (setq moe-dark-function-name             mat-yellow-500)
   (setq moe-dark-keyword                   mat-light-green-500)
   (setq moe-dark-negation-char             mat-red-700)
   (setq moe-dark-preprocessor              mat-purple-A400)
   (setq moe-dark-regexp-grouping-backslash mat-yellow-100)
   (setq moe-dark-regexp-grouping-construct mat-purple-A400)
   (setq moe-dark-string                    mat-pink-A400)
   (setq moe-dark-type                      mat-cyan-500)
   (setq moe-dark-variable-name             mat-orange-500)
   (setq moe-dark-warning                   mat-red-500)
   (load-theme 'moe-dark)

   ;; override moe
   (custom-set-faces
    ;; custom faces
    `(font-lock-operator-face ((t (:foreground ,mat-orange-700))))
    `(font-lock-end-statement ((t (:foreground ,mat-orange-900))))

    ;; python
    `(py-class-name-face ((t (:foreground ,moe-dark-type :bold t))))
    `(py-decorators-face ((t (:foreground ,moe-dark-type :bold t))))
    `(py-variable-name-face ((t (:foreground ,moe-dark-variable-name))))
    `(py-number-face ((t (:foreground ,moe-dark-constant))))

    ;; make keywords bold
    `(font-lock-keyword-face ((t (:foreground ,moe-dark-keyword :bold t))))

    ;; ag (the_silver_searcher)
    `(ag-match-face ((t (:background nil :foreground ,mat-purple-A400 :bold t))))
    `(ag-hit-face ((t (:background nil :foreground ,mat-purple-A400 :bold t))))
    `(compilation-mode-line-exit ((t (:background nil :foreground ,mat-white :bold t))))  ;; mode-line :exit [0]
    `(compilation-error ((t (:background nil :foreground ,mat-white :bold t))))  ;; mode-line [X 0 0]
    `(compilation-info ((t (:background nil :foreground ,mat-white :bold t))))  ;; mode-line [0 0 X]

    ;; mode-line styles used by powerline
    `(mode-line-buffer-id ((t (:background nil :foreground ,mat-white))))

    ;; powerline inactive
    `(powerline-inactive0 ((t (:background ,mat-grey-700 :foreground ,mat-white))))
    `(powerline-inactive1 ((t (:background ,mat-grey-500 :foreground ,mat-white))))
    `(powerline-inactive2 ((t (:background ,mat-grey-100 :foreground ,mat-grey-700))))
    )

    ;; powerline active
   (cond ((eq moe-theme-mode-line-color 'blue)
          (custom-set-faces
           `(powerline-active0 ((t (:background ,mat-light-blue-900 :foreground ,mat-white))))
           `(powerline-active1 ((t (:background ,mat-light-blue-500 :foreground ,mat-white))))
           `(powerline-active2 ((t (:background ,mat-light-blue-100 :foreground ,mat-light-blue-900))))))
         ((eq moe-theme-mode-line-color 'green)
          (custom-set-faces
           `(powerline-active0 ((t (:background ,mat-light-green-900 :foreground ,mat-white))))
           `(powerline-active1 ((t (:background ,mat-light-green-500 :foreground ,mat-white))))
           `(powerline-active2 ((t (:background ,mat-light-green-100 :foreground ,mat-light-green-900))))))
         ((eq moe-theme-mode-line-color 'orange)
          (custom-set-faces
           `(powerline-active0 ((t (:background ,mat-orange-900 :foreground ,mat-white))))
           `(powerline-active1 ((t (:background ,mat-orange-500 :foreground ,mat-white))))
           `(powerline-active2 ((t (:background ,mat-orange-100 :foreground ,mat-orange-900))))))
         ((eq moe-theme-mode-line-color 'magenta)
          (custom-set-faces
           `(powerline-active0 ((t (:background ,mat-pink-900 :foreground ,mat-white))))
           `(powerline-active1 ((t (:background ,mat-pink-500 :foreground ,mat-white))))
           `(powerline-active2 ((t (:background ,mat-pink-100 :foreground ,mat-pink-900))))))
         ((eq moe-theme-mode-line-color 'yellow)
          (custom-set-faces
           `(powerline-active0 ((t (:background ,mat-yellow-900 :foreground ,mat-white))))
           `(powerline-active1 ((t (:background ,mat-yellow-500 :foreground ,mat-white))))
           `(powerline-active2 ((t (:background ,mat-yellow-100 :foreground ,mat-yellow-900))))))
         ((eq moe-theme-mode-line-color 'purple)
          (custom-set-faces
           `(powerline-active0 ((t (:background ,mat-purple-900 :foreground ,mat-white))))
           `(powerline-active1 ((t (:background ,mat-purple-500 :foreground ,mat-white))))
           `(powerline-active2 ((t (:background ,mat-purple-100 :foreground ,mat-purple-900))))))
         ((eq moe-theme-mode-line-color 'red)
          (custom-set-faces
           `(powerline-active0 ((t (:background ,mat-red-900 :foreground ,mat-white))))
           `(powerline-active1 ((t (:background ,mat-red-500 :foreground ,mat-white))))
           `(powerline-active2 ((t (:background ,mat-red-100 :foreground ,mat-red-900))))))
         ((eq moe-theme-mode-line-color 'cyan)
          (custom-set-faces
           `(powerline-active0 ((t (:background ,mat-cyan-900 :foreground ,mat-white))))
           `(powerline-active1 ((t (:background ,mat-cyan-500 :foreground ,mat-white))))
           `(powerline-active2 ((t (:background ,mat-cyan-100 :foreground ,mat-cyan-900))))))
         ((eq moe-theme-mode-line-color 'w/b)
          (custom-set-faces
           `(powerline-active0 ((t (:background ,mat-blue-grey-900 :foreground ,mat-white))))
           `(powerline-active1 ((t (:background ,mat-blue-grey-500 :foreground ,mat-white))))
           `(powerline-active2 ((t (:background ,mat-blue-grey-100 :foreground ,mat-blue-grey-900)))))))

   ;; apply updated powerline styles

   ;; (powerline-reset)  ;; don't work

   ))

(provide 'moe-theme-flavour-matorico)
