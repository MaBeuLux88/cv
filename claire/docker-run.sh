#!/bin/bash
docker run --rm -v $(pwd):/home --name cv-latex-builder -u 1000:1000 mabeulux88/cv-latex-builder:1.0
