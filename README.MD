Hosted at <a href="http://www.bioinf.uni-leipzig.de/" title="Bioinf Homepage">Bioinformatics, Leipzig University</a>, Germany.

# Git Reposetory of BarMap-QA

BarMap-QA - cotranscriptional folding simulations of RNA molecules with
quality assurance.

## Description

BarMap-QA is a pipeline enabling the user to easily conduct
cotranscriptional folding analyses of a given RNA sequence and to
assess the quality of the generated data. It builds on the latest
version <a target="_blank" rel="noopener noreferrer"
href="https://github.com/ViennaRNA/BarMap" title="BarMap GitHub">
latest version</a> of the more general <a target="_blank"
rel="noopener noreferrer"
href="https://www.tbi.univie.ac.at/RNA/bar_map/" title="BarMap
Homepage"> BarMap framework</a> and adds a lot of helpful scripts and
programs around it that generate the required input, perform pre- and
post-processing tasks, evaluate the simulation quality, and finally
plot the results. **The publication accompanying this distribution
contains a comprehensive step-by-step tutorial** to help you getting
started with our analysis work flow.

## Copyright and license

Copyright 2018-2019 Felix K&uuml;hnl

**This program is free software**: you can redistribute it and/or
modify it under the terms of the GNU General Public License as
published by the Free Software Foundation, either version 3 of the
License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.

A copy of the GNU General Public License can be obtained from the
official
<a target="_blank" rel="noopener noreferrer" href="https://www.gnu.org/licenses/gpl-3.0.en.html" title="GNU GPLv3 website">GNU GPLv3 website</a>.
  
## Docker image

BarMap-QA is available as a portable, easy-to-use Docker image that
runs on all major platforms and has no requirements but a standard
installation of the Docker Community Edition and at least 8 GB of main
memory. It is hosted on
<a target="_blank" rel="noopener noreferrer" href="https://hub.docker.com/r/xilef1337/barmap-qa">Docker Hub</a>
and can be obtained by simply running

```
docker pull xilef1337/barmap-qa
```

on the command line.

To **download and update the image** and run the container, we provide
the BarMap-QA wrapper script [run_barmap-qa.sh](./run_barmap-qa.sh)
for Linux.

On Windows and macOS, open a PowerShell or a terminal (respectively)
and run

```
docker run --rm -v C:\path\to\my\directory:/host -it xilef1337/barmap-qa
```

where `C:\path\to\my\directory` is the working directory that is
mounted inside the `/host` directory of the container. All output
files will be written there.

## Source distribution

Here you can download the latest version of the [BarMap-QA as a source
distribution](./BarMap_QA.tar.gz) for Linux. However, we recommend to
use the provided Docker image (see above), which is already properly
set up and requires no external dependencies. If you choose to perform
a manual installation, please extract the downloaded archive and
follow the steps in the corresponding README.md file.

## Citation

If you use this software for your research, please **cite the
  following publication:**

Felix K&uuml;hnl, Peter F. Stadler, Sven Findei&szlig; <br>
*&quot;Assessing the Quality of Cotranscriptional Folding Simulations&quot;*
Sept 2019, submitted to Springer Nature.

A preprint of this publication is available on
<a target="_blank" rel="noopener noreferrer" href="https://doi.org/10.1101/2020.01.06.895607">bioRxiv</a>.

## Contact

Should you have any questions, suggestions, or bug reports, do not
hesitate to write us an email.

Corresponding author: Sven
Findei&szlig;, <a href="mailto:sven@bioinf.uni-leipzig.de">sven@bioinf.uni-leipzig.de</a>
<a href="http://www.bioinf.uni-leipzig.de/" title="Bioinf Homepage">Bioinformatics, Leipzig University</a>, Germany.


