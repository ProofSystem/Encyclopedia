Encyclopedia of Proof Systems
=============================

This is a collaborative and open Encyclopedia of Proof Systems.

It is licensed according to a Creative Commons license: 

[![License](http://i.creativecommons.org/l/by-nc-sa/3.0/88x31.png)](http://creativecommons.org/licenses/by-nc-sa/3.0/deed.en_US).



Instructions for Contribution
-----------------------------

If you would like to contribute to the encyclopedia, you must produce two files:

* A LaTeX source file (e.g. "SequentCalculus.tex") following the [Template](/mainmatter/Template.tex). 

* A bibliography (e.g. "SequentCalculus.bib") file containing only the bibitems cited in your entry.

Except for the file extension, both files should have the same name. This common name should also be the same as the unique ID of your entry chosen by you and specified inside your LaTeX source file.


When compiled, your entry should have exactly one page. If your proof system has too many inference rules and does not fit in one page, please [contact the editor](mailto:bruno@logic.at), send him a paper containing your proof system and ask for an exception.


If you have a Github account, you may then:

1. fork this repository to your own account and clone it to your local machine;

2. add your ".tex" file to the [/mainmatter](/mainmatter) folder;

3. add your ".bib" file to the [/bibliographies](/bibliographies) folder;

4. link your ".tex" file to the rest of the encyclopedia by writing an ```\includeProofSystem``` statement in the [proofsystems.tex](proofsystems.tex) file;

5. link your ".bib" file to the rest of the encyclopedia by writing an ```\addbibresource``` statement in the [bibliographies.sty](bibliographies.sty) file;

6. compile (see instructions below) and check that everything is fine (e.g. no overfull hboxes);

7. commit your changes and push them to your forked repository;

7. Make a *pull request* of your changes. (The editor will then merge your changes back into this repository); 

If you are not skilled in *git* yet and the instructions above were not understandable, it is highly recommended that you [learn git](https://help.github.com/articles/good-resources-for-learning-git-and-github/). If, however, this is not an option for you, you may also [send to the editor](mailto:bruno@logic.at) your ".tex" and ".bib" file.

By submitting an entry, you agree to the above mentioned Creative Commons license, and you additionally license your entry for publication as a chapter of the encyclopedia as a book in the future.


Criteria for Acceptance
-----------------------

1. In the spirit of encyclopedias, every entry 
must be about a proof system that has already been 
published in a conference or in a journal.

2. Every entry should be factually and historically correct.

3. An entry written by the original author of a proof system is preferred.
If you are planning to submit an entry about a proof system invented by somebody else, we advise you to seek his/her permission first.



Compilation Instructions
------------------------

The encyclopedia uses *biblatex* and *biber* to handle multiple bibliographies. These are modern alternatives to bibtex. Therefore, to compile, you must run:

```
$ pdflatex main

$ biber main

$ pdflatex main
```

