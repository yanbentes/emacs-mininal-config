(setq initial-scratch-message "
					       ██████████ ███▙     ▟███        ▟████  ▂▟████▙▂   ▂▟████▙▂
					       ███        ████▙   ▟████       ▟█████ ▟██▛  ▜██▙ ▟██▛  ▜██▙
					       ███        █████▙▂▟█████      ▟██▛███ ███    ███ ▜██▙▂
					       ███████    ███▜█████▛███     ▟██▛ ███ ███         ▀▜███▙▂
					       ███        ███ ▜███▛ ███    ▟██▛  ███ ███            ▀▜██▙▂
					       ███        ███  ▜█▛  ███   ▟██▛   ███ ███    ███       ▀███
					       ███        ███   ▀   ███  ▟██████████ ▜██▙  ▟██▛ ▜██▙  ▟██▛
					       ██████████ ███       ███ ▟██▛     ███  ▀▜████▛▀   ▀▜████▛▀


					       VISIT FILE ------------ C-x C-f	    SPLIT HORIZONTALY ----- C-x 2

					       SAVE FILE ------------- C-x C-s      SPLIT VERTICALY ------- C-x 3

					       LIST BUFFERS ---------- C-x C-b	    NEXT WINDOW ----------- C-x o

					       KILL BUFFER ----------- C-x k	    DELETE WINDOW --------- C-x 0

					       COPY ------------------ M-w          ISEARCH --------------- C-s

					       CUT ------------------ C-w	    EXECUTE SHELL COMMAND - M-!

					       PASTE ----------------- C-y	    SYSTEM SHELL ---------- M-x shell

					       QUIT COMMAND ---------- ESC	    HELP ------------------ C-h t

							       EXIT EMACS ------------ C-x C-c
")
(defun fix-scratch ()
  (beginning-of-buffer)
  (display-line-numbers-mode 0))
