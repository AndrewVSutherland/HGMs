**Table** `hgm_families`:

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
bezout_det | integer | determinant of the Bezout matrix (previously det)
bezout_module | integer[] | invariants of the Bezout module (as an abelian group = Z-module) (previously snf)
rotation_number | integer | rotation number (previously imprim = imprimitivity index)
variety_dim | integer | dimension of the canonical variety
wild_primes | integer[] | list of wild primes 
A2 | integer[] | 2-part of A
A3 | integer[] | 3-part of A
A5 | integer[] | 5-part of A
A7 | integer[] | 7-part of A
Au2 | integer[] | prime-to-2 part of A
Au3 | integer[] | prime-to-3 part of A
Au5 | integer[] | prime-to-5 part of A
Au7 | integer[] | prime-to-7 part of A
B2 | integer[] | 2-part of B
B3 | integer[] | 3-part of B
B5 | integer[] | 5-part of B
B7 | integer[] | 7-part of B
Bu2 | integer[] | prime-to-2 part of B
Bu3 | integer[] | prime-to-3 part of B
Bu5 | integer[] | prime-to-5 part of B
Bu7 | integer[] | prime-to-7 part of B
C2 | integer[] | common 2-part of A and B
C3 | integer[] | common 3-part of A and B
C5 | integer[] | common 5-part of A and B
C7 | integer[] | common 7-part of A and B
Cu2 | integer[] | common prime-to-2 part of A and B
Cu3 | integer[] | common prime-to-3 part of A and B
Cu5 | integer[] | common prime-to-5 part of A and B
Cu7 | integer[] | common prime-to-7 part of A and B


**Table** `hgm_monodromy`:

This table stores information for mod-ell monodromy groups associated to hypergeomtric families.  The ambient polar space V referred to below is the quadratic or symplectic space over F_ell determined by the Bezout matrix; it is determined up to isometry by the degree, weight, dimension of the radical, dimension of the maximal isotropic, and the Witt index (in fact the parity of the last two invariants suffice, and in odd characteristic only one of them is needed).

Column | Type | Notes
-------|------|------
A | integer[] | list of integers giving the A parameters of the hypergeometric family
B | integer[] | list of integers giving the B parameter of the hyeprgeometric family
family | string | label of a hypergoemetric family
ell | integer | a prime ell
Au | integer[] | list of integers giving the prime to ell part of A
Bu | integer[] | list of integers giving the prime to ell part of B
Cu | integer[] | list of integers giving the common part of A_local and B_local
degree | integer | degree d of the hypergeometric family (the mod-ell monodromy group is a subgroup of GL_d(F_ell))
weight | integer | weight of the hypergeometric family
type | integer | weight mod 2, determines type of ambient polar space V (0=orthogonal, 1=symplectic)
bezout_det | integer | determinant of Bezout matrix modulo ell
radical_dim | integer | dimension of the radical of V
isotropic_dim | integer | dimension of maximal isotropic subspace of V
witt_index | integer | half the dimension of maximal hyperbolic subspace of V
ambient_order | numeric | order of the ambient isotropy group G of V (list of pairs [p,e] with e=v_p(#G) > 0)
ambient_order_facctored | integer[] | factored order of the ambient isotropy group G of V (list of pairs [p,e] with e=v_p(#G) > 0)
monodromy_order | numeric | order of the monodromy group H
monodromy_order_factored | integer[] | factored order of the monodromy group H
monodromy_index | numeric | index [G:H] of the monodromy group H in G
monodromy_index | integer[] | factored index [G:H] of the monodromy group H in G
ambient_gens | integer[] | list of lists of lists of integers specifying d x d F_ell-matrix generators of G
monodromy_gens | itneger[] | pair of lists of lists of integers specifying d x d F_ell-matrices generators A,B of H
ambient_name | string | name of isotropy group of ambient polar space (e.g. Sp_8(F_3) or O_4+(F_7), ...)
ambient_matrix_group_label | string | label of the matrix group G (when it becomes available in the finite groups DB)
ambient_group_label | string | label of the abstract group G (when available in the finite group DB)
monodromy_matrix_group_label | string | label of the monodromy group H (when it becomes available in the finite groups DB)
monodromy_group_label | string | label of the abstract group H (when availalbe in the finite group DB)



