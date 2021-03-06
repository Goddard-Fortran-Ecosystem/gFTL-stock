module gFTL1_StringComplexMap

#if defined(_REAL_DEFAULT_KIND_IS_REAL32)

  use gFTL1_StringComplex32Map, only: StringComplexMap => StringComplex32Map
  use gFTL1_StringComplex32Map, only: StringComplexMapIterator => StringComplex32MapIterator

#elif defined(_REAL_DEFAULT_KIND_IS_REAL64)

  use gFTL1_StringComplex64Map, only: StringComplexMap => StringComplex64Map
  use gFTL1_StringComplex64Map, only: StringComplexMapIterator => StringComplex64MapIterator

#else
  
 
#  include "types/key_deferredLengthString.inc"
#  define _value type(complex)
#  define _map StringComplexMap
#  define _iterator StringComplexMapIterator
#  define _pair StringComplexPair
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL1_StringComplexMap

module gFTL_StringComplexMap
   use gFTL1_StringComplexMap
end module gFTL_StringComplexMap
