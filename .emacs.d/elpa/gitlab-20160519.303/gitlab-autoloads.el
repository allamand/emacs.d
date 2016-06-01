;;; gitlab-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (gitlab-show-issues gitlab-show-project-description)
;;;;;;  "gitlab-mode" "gitlab-mode.el" (22349 39834 0 0))
;;; Generated autoloads from gitlab-mode.el

(autoload 'gitlab-show-project-description "gitlab-mode" "\
Doc string PROJECT.

\(fn PROJECT)" t nil)

(autoload 'gitlab-show-issues "gitlab-mode" "\
Show Gitlab issues.

\(fn)" t nil)

;;;***

;;;### (autoloads (gitlab-login) "gitlab-session" "gitlab-session.el"
;;;;;;  (22349 39834 0 0))
;;; Generated autoloads from gitlab-session.el

(autoload 'gitlab-login "gitlab-session" "\
Open a session.
If it works, return the private token to perform HTTP request to Gitlab.

\(fn)" t nil)

;;;***

;;;### (autoloads (gitlab-mode) "gitlab-ui" "gitlab-ui.el" (22349
;;;;;;  39834 0 0))
;;; Generated autoloads from gitlab-ui.el

(autoload 'gitlab-mode "gitlab-ui" "\
Special mode for Gitlab buffers.

\(fn)" t nil)

;;;***

;;;### (autoloads (gitlab-version) "gitlab-version" "gitlab-version.el"
;;;;;;  (22349 39834 0 0))
;;; Generated autoloads from gitlab-version.el

(autoload 'gitlab-version "gitlab-version" "\
Get the gitlab version as string.
If called interactively or if SHOW-VERSION is non-nil, show the
version in the echo area and the messages buffer.
The returned string includes both, the version from package.el
and the library version, if both a present and different.
If the version number could not be determined, signal an error,
if called interactively, or if SHOW-VERSION is non-nil, otherwise
just return nil.

\(fn &optional SHOW-VERSION)" t nil)

;;;***

;;;### (autoloads nil nil ("gitlab-api.el" "gitlab-groups.el" "gitlab-http.el"
;;;;;;  "gitlab-issues.el" "gitlab-milestones.el" "gitlab-notes.el"
;;;;;;  "gitlab-pkg.el" "gitlab-projects.el" "gitlab-users.el" "gitlab-utils.el"
;;;;;;  "gitlab.el") (22349 39834 693674 667000))

;;;***

(provide 'gitlab-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; gitlab-autoloads.el ends here
