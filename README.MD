<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>BarMap-QA - Cotranscriptional Folding Simulation</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        Hosted at <a href="http://www.bioinf.uni-leipzig.de/" title="Bioinf Homepage">Bioinformatics, Leipzig University</a>, Germany.

        <h1>Homepage of BarMap-QA</h1>

        BarMap-QA &ndash; cotranscriptional folding simulations of RNA molecules with
        quality assurance.

        <h2>Description</h2>
            <p>
            BarMap-QA is a pipeline enabling the user to easily conduct cotranscriptional
            folding analyses of a given RNA sequence and to assess the quality of the generated
            data. It builds on the
            <a target="_blank" rel="noopener noreferrer"
                href="https://github.com/ViennaRNA/BarMap"
                title="BarMap GitHub">
                    latest version</a>
            of the more general
            <a target="_blank" rel="noopener noreferrer"
                href="https://www.tbi.univie.ac.at/RNA/bar_map/"
                title="BarMap Homepage">
                    BarMap framework</a>
            and adds a lot of helpful scripts and programs around it that generate the required
            input, perform pre- and post-processing tasks, evaluate the simulation quality, and
            finally plot the results. <strong>The publication accompanying this distribution
            contains a comprehensive step-by-step tutorial</strong> to help you getting started
            with our analysis work flow.

        <h2>Copyright and license</h2>
            <p>
            Copyright 2018&ndash;2019 Felix K&uuml;hnl
            <p>
            <strong>This program is free software</strong>: you can
            redistribute it and/or modify
            it under the terms of the GNU General Public License as published by
            the Free Software Foundation, either version 3 of the License, or
            (at your option) any later version.
            <p>
            This program is distributed in the hope that it will be useful,
            but WITHOUT ANY WARRANTY; without even the implied warranty of
            MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
            GNU General Public License for more details.
            <p>
            A copy of the GNU General Public License
            can be obtained from the official
            <a target="_blank" rel="noopener noreferrer" href="https://www.gnu.org/licenses/gpl-3.0.en.html" title="GNU GPLv3 website">GNU GPLv3 website</a>.

        <h2>Docker image</h2>
            <p>
            BarMap-QA is available as a portable, easy-to-use Docker image that runs
            on all major platforms and has no requirements but a standard installation of
            the Docker Community Edition and at least 8 GB of main memory. It is hosted on
            <a target="_blank" rel="noopener noreferrer" href="https://hub.docker.com/r/xilef1337/barmap-qa">Docker Hub</a>
            and can be obtained by simply running
            <code>docker pull xilef1337/barmap-qa</code>
            on the command line.
            <p>
            To <strong>download and update the image</strong> and run the
            container, we provide
            <a href="run_barmap-qa.sh" title="BarMap-QA wrapper script for Linux">this wrapper script</a>
            for Linux. On Windows and macOS, open a PowerShell or a terminal (respectively) and run
            <code>docker run --rm -v C:\path\to\my\directory:/host -it xilef1337/barmap-qa</code>,
            where <code>C:\path\to\my\directory</code> is the working directory that is
            mounted inside the <code>/host</code> directory of the container. All output
            files will be written there.

        <h2>Source distribution</h2>
            <p>
            Here you can download the
            <a href="BarMap_QA.tar.gz" title="BarMap-QA source distribution">latest version of the BarMap-QA</a>
            as a source distribution for Linux. However, we recommend to use the
            provided Docker image (see above), which is already properly set
            up and requires no external dependencies. If you choose to perform
            a manual installation, please extract the downloaded archive and
            follow the steps in the file README.md.

        <h2>Citation</h2>
            <p>
            If you use this software for your research, please <strong>cite
            the following publication:</strong>
            <p>
            Felix K&uuml;hnl, Peter F. Stadler, Sven Findei&szlig; <br>
            <em>&quot;Assessing the Quality of Cotranscriptional Folding Simulations&quot;</em><br>
            Sept 2019, submitted to Springer Nature.
            <p>
            A preprint of this publication is available on
            <a target="_blank" rel="noopener noreferrer" href="https://doi.org/10.1101/2020.01.06.895607">bioRxiv</a>.
        <h2>Contact</h2>
            <p>
            Should you have any questions, suggestions, or bug reports, do not
            hesitate to write us an email.
            <p>
            Corresponding author: Sven Findei&szlig;, <a href="mailto:sven@bioinf.uni-leipzig.de">sven@bioinf.uni-leipzig.de</a>
            <p>
            <a href="http://www.bioinf.uni-leipzig.de/" title="Bioinf Homepage">Bioinformatics, Leipzig University</a>, Germany.
    </body>
</html>

