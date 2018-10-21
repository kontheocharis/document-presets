LAYOUT='cat etc/before settings/layout'
FILTERS=$(cat settings/filters | awk '{print "--filter " $0}')
DIR_NAME=$(basename "$PWD")
EXT_FORMAT=$(cat settings/format | head -n 1)
OUT_FORMAT=$(cat settings/format | tail -n 1)
ENGINE=$(cat settings/engine)

if [ -s bibliography.bib ]
then
    LAYOUT+=' etc/after'
fi

pandoc $($LAYOUT) --pdf-engine=$ENGINE \
       -t $OUT_FORMAT \
       --include-in-header etc/header-includes.tex \
       --include-in-header settings/header-extras.tex \
       -o "out/$DIR_NAME.$EXT_FORMAT" \
       $FILTERS
