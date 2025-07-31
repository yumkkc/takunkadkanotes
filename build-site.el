(require 'ox-publish)

;; Definte the publishing project
(setq org-html-validation-link nil
      org-html-head-include-scripts nil
      org-html-head-include-default-style nil
      org-html-head "<link rel\"stylesheet\" href=\"https://cdn.simplecss.org/simple.min.css\" />")

(setq org-publish-project-alist
      (list
       (list "takunkkadka_blog"
             :recursive t
             :base-directory "./content"
             :publishing-directory "."
             :publishing-function 'org-html-publish-to-html
             :with-author nil
             :with-creator t
             :section-number nil
             :time-stamp-file nil)))

;; generate the site output
(org-publish-all t)

(message "Build Completed")
