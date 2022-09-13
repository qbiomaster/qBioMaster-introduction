# "Sorry, something went wrong. Reload?" when viewing *.ipynb



# The issue

Getting the message *"Sorry, something went wrong. Reload?"* when viewing an *.ipynb on a GitHub blob page.

- Probably a problem with the GitHub notebook viewing tool - sometimes github fails to render the ipynb notebooks, I believe that is some *temporary* (and recurring) issue with *their* backend

# A workaround

Try to open that notebook that you want using nbviewer online, you don't need to install it.

- Open "https://nbviewer.jupyter.org/"
- Paste the link to your notebook
- If some notebook rendered in nbviewer appears different from rendered in github, then append "?flush_cache=true" to the end of the nbviewer version url to force it to rerender.
  e.g.
  `http://nbviewer.jupyter.org/github/iurisegtovich/PyTherm-applied-thermodynamics/blob/master/index.ipynb`
  becomes
  `http://nbviewer.jupyter.org/github/iurisegtovich/PyTherm-applied-thermodynamics/blob/master/index.ipynb?flush_cache=true`