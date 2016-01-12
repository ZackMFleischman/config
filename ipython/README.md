
# Enable autocall by default:
Run:
>ipython profile create

Then modify ~/.ipython/profile_default/ipython_config.py

Change this line:
c.TerminalInteractiveShell.autocall = 2
