pathmunge () {
  if ! echo $PATH | egrep -q "(^|:)$1($|:)" ; then
    if [ "$2" = "after" ] ; then
      PATH=$PATH:$1
    else
      PATH=$1:$PATH
    fi
  fi
}
[ -h /usr/sbin ] || pathmunge /usr/sbin
[ -h /sbin ]     || pathmunge /sbin
[ -d ~/.gem/ruby/2.1.0/bin ] && pathmunge ~/.gem/ruby/2.1.0/bin
pathmunge /usr/local/bin
pathmunge ~/.remote
pathmunge ~/bin
