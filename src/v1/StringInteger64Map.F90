module gFTL1_StringInteger64Map
  use, intrinsic:: iso_fortran_env, only: INT64

#include "types/key_deferredLengthString.inc"
#define _value type(integer(kind=INT64))
#define _map StringInteger64Map
#define _iterator StringInteger64MapIterator
#define _pair StringInteger64Pair
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL1_StringInteger64Map

module gFTL_StringInteger64Map
   use gFTL1_StringInteger64Map
end module gFTL_StringInteger64Map
