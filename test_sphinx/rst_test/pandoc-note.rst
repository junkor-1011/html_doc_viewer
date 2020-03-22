pandoc note
===========

-  markdown to rst

.. code:: bash

   pandoc -f markdown -t rst -o README.rst README.md

-  rst to html

::

   pandoc -f rst -t html -o README.html README.rst
