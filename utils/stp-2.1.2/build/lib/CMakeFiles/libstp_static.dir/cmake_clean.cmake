FILE(REMOVE_RECURSE
  "libstp.pdb"
  "libstp.a"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/libstp_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
