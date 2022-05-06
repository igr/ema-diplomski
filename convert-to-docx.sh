#!/usr/bin/env bash

cp diplomski.tex diplomski-pandoc.tex
sed -i '' 's/%\\DeclareMathOperator/\\DeclareMathOperator/g' diplomski-pandoc.tex

pandoc -s diplomski-pandoc.tex --mathjax -f latex  -o diplomski.docx

rm diplomski-pandoc.tex