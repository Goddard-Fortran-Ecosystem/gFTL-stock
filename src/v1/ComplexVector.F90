module gFTL1_ComplexVector

#if defined(_REAL_DEFAULT_KIND_IS_REAL32)

  use gFTL1_Complex32Vector, only: ComplexVector => Complex32Vector
  use gFTL1_Complex32Vector, only: ComplexVectorIterator => Complex32VectorIterator

#elif defined(_REAL_DEFAULT_KIND_IS_REAL64)

  use gFTL1_Complex64Vector, only: ComplexVector => Complex64Vector
  use gFTL1_Complex64Vector, only: ComplexVectorIterator => Complex64VectorIterator

#else

#  define _type type(complex)
#  define _vector ComplexVector
#  define _vectoriterator ComplexVectorIterator
#  include "templates/vector.inc"
#  undef _vectoriterator
#  undef _vector
#  undef _type

#endif
  
end module gFTL1_ComplexVector

module gFTL_ComplexVector
   use gFTL1_ComplexVector
end module gFTL_ComplexVector
