module gFTL1_IntegerUnlimitedMap

#if defined(_INT_DEFAULT_KIND_IS_INT32)

  use gFTL1_Integer32UnlimitedMap, only: IntegerUnlimitedMap => Integer32UnlimitedMap
  use gFTL1_Integer32UnlimitedMap, only: IntegerUnlimitedMapIterator => Integer32UnlimitedMapIterator

#elif defined(_INT_DEFAULT_KIND_IS_INT64)

  use gFTL1_Integer64UnlimitedMap, only: IntegerUnlimitedMap => Integer64UnlimitedMap
  use gFTL1_Integer64UnlimitedMap, only: IntegerUnlimitedMapIterator => Integer64UnlimitedMapIterator

#else

 
#  define _key type(integer)
#  include "types/value_unlimitedPoly.inc"
#  define _map IntegerUnlimitedMap
#  define _iterator IntegerUnlimitedMapIterator
#  define _pair IntegerUnlimitedPair
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL1_IntegerUnlimitedMap

module gFTL_IntegerUnlimitedMap
   use gFTL1_IntegerUnlimitedMap
end module gFTL_IntegerUnlimitedMap
