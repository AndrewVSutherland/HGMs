Spaces
======

**Table** `mf_families`:

This table stores information for hypergeomtric families, each determined by hypergeometric data A,B (lists of integers)

Column | Type | Notes
-------|------|------
A | integer[] | list of integers giving the A parameters for the family (in cyclotomic format)
B | integer[] | list of integers giving the B parameters for the family (in cyclotomic format)
label | string | label of the family (for A=[5,3,3], B=[6,6,1,1,1,1] label is A5.3.3_B6.6.1.1.1.1.1)
degree | integer | degree of the family = sum([phi(a):a in A]) = sum([phi(b):b in B])
weight | integer | motivic weight of the family (width of the Hodge vector)
hodge_vector | integer[] | hodge vector for the family (previously famhodge)
hodge_structure | integer[] | list of list of integers giving Hodge structure (in Magma format, details TDB)
bezout_matrix | integer[] | list of list of integers of Bezout matrix (d x d) (previously bezout)
bezout_determinant | integer | determinant of the Bezout matrix (previously det)
bezout_module | integer[] | invariants of the Bezout module (as an abelian group = Z-module) (previously snf)
rotation_number | integer | rotation number (previously imprim = imprimitivity index)
wild_primes | integer[] | list of wild primes 
A2 | integer[] | 2-part of A
A3 | integer[] | 3-part of A
A5 | integer[] | 5-part of A
A7 | integer[] | 7-part of A
A2p | integer[] | prime-to-2 part of A
A3p | integer[] | prime-to-3 part of A
A5p | integer[] | prime-to-5 part of A
A7p | integer[] | prime-to-7 part of A
B2 | integer[] | 2-part of B
B3 | integer[] | 3-part of B
B5 | integer[] | 5-part of B
B7 | integer[] | 7-part of B
B2p | integer[] | prime-to-2 part of B
B3p | integer[] | prime-to-3 part of B
B5p | integer[] | prime-to-5 part of B
B7p | integer[] | prime-to-7 part of B
C2 | integer[] | common 2-part of A and B
C3 | integer[] | common 3-part of A and B
C5 | integer[] | common 5-part of A and B
C7 | integer[] | common 7-part of A and B
C2p | integer[] | prime-to-2 complement of C2
C3p | integer[] | prime-to-3 complement of C3
C5p | integer[] | prime-to-5 complement of C5
C7p | integer[] | prime-to-7 complement of C7

