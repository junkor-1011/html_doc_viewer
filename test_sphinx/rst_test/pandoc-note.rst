pandoc note
===========

-  markdown to rst

.. code:: bash

   pandoc -f markdown -t rst -o README.rst README.md

-  rst to html

.. code:: bash

   pandoc -f rst -t html -o README.html README.rst

- rst to pdf

.. code:: bash

   # wkhtmltopdfを使う場合（日本語でもOK）
   pandoc -f rst -t html5 -o pandoc-note.pdf pandoc-note.rst

   # latexを使う場合（日本語の設定は難しそう）
   pandoc -f rst -t latex -o pandoc-note.pdf pandoc-note.rst

