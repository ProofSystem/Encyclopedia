Our goal is to produce a concise
encyclopaedia of proof systems. Every entry in this encyclopaedia
follows a given template and is preferably exactly one page (and no more than two pages) long,
displaying the inference rules of the proof system and a few
clarifications and technical or historical remarks.

This project is currently coordinated and maintained by [Bruno Woltzenlogel Paleo](http://paleo.woltzenlogel.org).


Upcoming Tableaux/FroCoS/ITP Event
----------------------------------

To promote the encyclopaedia, [Giselle Reis](http://www.gisellereis.com) and [Bruno Woltzenlogel Paleo](http://paleo.woltzenlogel.org) are organizing an event affiliated with the [Tableaux](http://tableaux2017.cic.unb.br), [FroCoS](http://frocos2017.cic.unb.br/) and [ITP](http://itp2017.cic.unb.br/) conferences in Brasilia, the capital of Brazil. The event will consist of:

* a poster session in the afternoon of the 24th of September 2017, during which submitted entries will be displayed as posters.
* an interactive and hands-on meeting in the morning of the 25th of September 2017, for those who would like to contribute to the continuous improvement of the Encyclopaedia. The activities planned for this meeting will be announced closer to the event.

For this event, **entries should be submitted before the 1st of August 2017**.


Submission Instructions
-----------------------

You must produce two files:

* A LaTeX source file (e.g. "SequentCalculus.tex") following the [template](https://github.com/ProofSystem/Encyclopedia/blob/master/Source/Template.tex). 

* A bibliography (e.g. "SequentCalculus.bib") file containing only the bibitems cited in your entry.

Except for the file extensions (".tex", ".bib"), both files should have the same name. This common name should also be the same as the unique ID of your entry chosen by you and specified inside your LaTeX source file.

When compiled, your entry should have exactly one page. If your proof system has too many inference rules and does not fit in one page, please [contact the coordinators](mailto:eps-coordinators@googlegroups.com), send them a paper containing your proof system and ask for an exception.

[Examples of entries](https://github.com/ProofSystem/Encyclopedia/tree/master/Source/mainmatter) can be found in the [current version of the encyclopedia](https://github.com/ProofSystem/Encyclopedia/blob/master/main.pdf?raw=true).
Please conform to the examples.


**If you have a Github account and are familiarised with git**, you should:

1. [fork the repository](https://github.com/ProofSystem/Encyclopedia/fork) to your own account and clone it to your local machine;

2. add your ".tex" file to the [/mainmatter](https://github.com/ProofSystem/Encyclopedia/blob/master/Source/mainmatter) folder;

3. add your ".bib" file to the [/bibliographies](https://github.com/ProofSystem/Encyclopedia/blob/master/Source/bibliographies) folder;

4. link your ".tex" file to the rest of the encyclopedia by writing an ```\includeProofSystem``` statement in the [proofsystems.tex](https://github.com/ProofSystem/Encyclopedia/blob/master/Source/proofsystems.tex) file;

5. link your ".bib" file to the rest of the encyclopedia by writing an ```\addbibresource``` statement in the [bibliographies.sty](https://github.com/ProofSystem/Encyclopedia/blob/master/Source/bibliographies.sty) file;

6. compile (see instructions below) and check that everything is fine (e.g. no overfull hboxes);

7. commit your changes and push them to your forked repository;

8. Make a *pull request* of your changes. (The coordinator will then merge your changes back into this repository); 


**If you do not know how to use git and Github**, you may instead:

1. [download the encyclopedia](https://github.com/ProofSystem/Encyclopedia/zipball/master)

2. add your ".tex" file to the [/mainmatter](https://github.com/ProofSystem/Encyclopedia/blob/master/Source/mainmatter) folder;

3. add your ".bib" file to the [/bibliographies](https://github.com/ProofSystem/Encyclopedia/blob/master/Source/bibliographies) folder;

4. link your ".tex" file to the rest of the encyclopedia by writing an ```\includeProofSystem``` statement in the [proofsystems.tex](https://github.com/ProofSystem/Encyclopedia/blob/master/Source/proofsystems.tex) file;

5. link your ".bib" file to the rest of the encyclopedia by writing an ```\addbibresource``` statement in the [bibliographies.sty](https://github.com/ProofSystem/Encyclopedia/blob/master/Source/bibliographies.sty) file;

6. compile (see instructions below) and check that everything is fine (e.g. no overfull hboxes);

7. [Send to the coordinators](mailto:eps-coordinators@googlegroups.com) your ".tex" and ".bib" files. 


Compilation Instructions
------------------------

To compile, run:

```
$ make clean
$ make
```

This will automatically execute *pdflatex* and [biber](http://biblatex-biber.sourceforge.net) for you. 

*biber* is a modern alternative to *bibtex*. When used in conjunction with *biblatex*, it is more convenient for handling multiple bibliographies. It comes pre-installed in most modern distributions of *LaTeX*. If your *LaTeX* distribution is too old, it might not contain *biber* and you might see error messages. In this case, the easiest solution is to install a newer LaTeX distribution, such as [TeX-Live](https://www.tug.org/texlive/) or [MacTeX](https://www.tug.org/mactex/). The Encyclopaedia is known to compile well with Tex-Live 2016. Please ensure that your LaTeX installation is updated.

If you face any difficulties to compile, [contact the coordinators](mailto:eps-coordinators@googlegroups.com).


Criteria for Acceptance
-----------------------

1. the proof system must have been published in journals or conference proceedings before.

2. the entry should be factually and historically correct.

If you are planning to submit an entry about a proof system invented by somebody else, we advise you to seek his/her permission first.


Peer-Reviewing
--------------

All entries are reviewed by the [coordinators](mailto:eps-coordinators@googlegroups.com).

Additionally, peer-reviewing is open: everyone is encouraged to review entries within his/her domain of expertise. If you have improvement suggestions for an existing entry, please contact the authors of the entry directly, including the [coordinators](mailto:eps-coordinators@googlegroups.com) in "cc:". Your peer-reviewing will be acknowledged. Moreover, if your suggestions lead to a substantial modification of the entry, the coordinators will ensure co-authorship of the entry for you.

We kindly ask (but do not require) all entry authors to review a few entries authored by others.

Anonymous peer-reviewing is also allowed. You may send your suggestions to the [coordinators](mailto:eps-coordinators@googlegroups.com), who will then contact the authors on your behalf.

Technical issues related to layout and organization of the encyclopaedia can be reported in the [Repository's Issues Page](https://github.com/ProofSystem/Encyclopedia/issues)

Important Dates
---------------

Submission to the online repository is currently open. 


Citations
---------

If you would like to cite the whole encyclopaedia, please use the following BibTeX entry:

    @book{EPS,
      title = {Towards an Encyclopaedia of Proof Systems},   
      editor = {Woltzenlogel Paleo, Bruno}, 
      publisher = {College Publications}, 
      address = {London, UK},
      url = {https://github.com/ProofSystem/Encyclopedia/blob/master/main.pdf},
      year = {2017},
      month = {1},
      edition = {1},
      isbn = {978-1-84890-233-6}
    }

If you would like to cite a single entry of the encyclopaedia, please use the following BibTeX entry (replacing bracketed placeholders by content corresponding to the entry):

    @incollection{[bibentry key],
      booktitle = {Towards an Encyclopaedia of Proof Systems},
      editor = {Woltzenlogel Paleo, Bruno},
      title = {[entry title]},
      author    = {[entry authors]},
      pages     = {[page range of the entry]}, 
      publisher = {College Publications}, 
      address = {London, UK},
      url       = {https://github.com/ProofSystem/Encyclopedia/blob/master/main.pdf},
      year      = {2017},
      month = {1},
      edition = {1}
    }


Related Community-Wide Initiatives
----------------------------------

* The [Theorem Prover Museum](https://theoremprover-museum.github.io) collects the source code of old theorem provers. Many theorem provers are based on logical calculi described in this encyclopaedia. Conversely, many logical calculi were invented to abstractly describe theorem proving procedures. If you have access to the source code of any old theorem prover, please consider submitting it to the museum.

License
-------

By submitting an entry to the encyclopedia, you agree to the following Creative Commons license, and you additionally license your entry for publication as a chapter of the encyclopedia as a book in the future.

[![License](http://i.creativecommons.org/l/by-nc-sa/3.0/88x31.png)](http://creativecommons.org/licenses/by-nc-sa/3.0/deed.en_US).


