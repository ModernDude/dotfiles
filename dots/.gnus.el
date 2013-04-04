(setq user-mail-address "jeff@jeffsigmon.com")
(setq user-full-name "Jeff Sigmon")

(setq gnus-select-method '(nnnil))

(setq gnus-secondary-select-methods '((nntp "news.gwene.org")))


(add-to-list 'gnus-secondary-select-methods
             '(nnimap "gmail"
                      (nnimap-address "imap.gmail.com")
                      (nnimap-server-port 993)
                      (nnimap-stream ssl)))

(add-to-list 'gnus-secondary-select-methods
             '(nnimap "ferguson"
                      (nnimap-address "outlook.office365.com")
                      (nnimap-server-port 993)
                      (nnimap-stream ssl)))


                                        ; You need install the ClI brower 'w3m' and Emacs plugin 'w3m'
(setq mm-text-html-renderer 'w3m)

(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-starttls-credentials '(("smtp.gmail.com" 465 nil nil))
      smtpmail-auth-credentials '(("smtp.gmail.com" 465 "jeff@jeffsigmon.com" nil))
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 465
      smtpmail-stream-type 'ssl
      smtpmail-local-domain "homepc")



;; display chars
(setq gnus-score-over-mark ?\u2191          ; \u2191 \u2600
      gnus-score-below-mark ?\u2193         ; \u2193 \u2602
      gnus-ticked-mark ?\u2691
      gnus-dormant-mark ?\u2690
      gnus-expirable-mark ?\u267b
      gnus-read-mark ?\u2713
      gnus-del-mark ?\u2717
      gnus-killed-mark ?\u2620
      gnus-replied-mark ?\u27f2
      gnus-forwarded-mark ?\u2933
      gnus-cached-mark ?\u260d
      gnus-recent-mark ?\u2605
      gnus-unseen-mark ?\u2729
      gnus-unread-mark ?\u2709
      gnus-summary-line-format (concat "%{|%}"
                                       "%U%R%z"
                                       "%{|%}"
                                       "%(%-18,18f"
                                       "%{|%}"
                                       "%*%{%B%} %s%)"
                                       "\n"))
