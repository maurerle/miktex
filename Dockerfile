from miktex/miktex
RUN apt-get update && apt-get install -y \
  texlive-lang-ngerman \
  texlive-lang-english
RUN mpm --admin --require=biblatex,graphics,oberdiek,ifxetex,geometry-de,geometry,graphics-cfg,graphics-def,setspace,ec,arabi,babel-german,hyperref,url,pdfpages,tools,eso-pic,xcolor,amsmath,wrapfig,listings,multirow,colortbl,datetime,etoolbox,fmtcount,xkeyval,acronym,bigfoot,xstring,caption,mptopdf
RUN fmtutil -sys --all
