FILE(REMOVE_RECURSE
  "libstp.pdb"
  "libstp.so"
  "libstp.so.2.1.2"
  "libstp.so.2.1"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/libstp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
