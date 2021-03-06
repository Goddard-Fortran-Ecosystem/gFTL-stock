module gFTL1_StringReal128Map
  use, intrinsic:: iso_fortran_env, only: REAL128

#include "types/key_deferredLengthString.inc"
#define _value type(real(kind=REAL128))
#define _map StringReal128Map
#define _iterator StringReal128MapIterator
#define _pair StringReal128Pair
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL1_StringReal128Map

module gFTL_StringReal128Map
   use gFTL1_StringReal128Map
end module gFTL_StringReal128Map
