from sage.modular.hypergeometric_motive import HypergeometricData as HGData
from sage.modular.hypergeometric_motive import possible_hypergeometric_data as possible
import time

bnd = 2^18
max_rank = 10
f = open("modpsurvey-sage.txt", "w")

def hgm_label(H):
  A, B = H.cyclotomic_data()
  return "A" + '.'.join(str(a) for a in reversed(A)) + "_B" + '.'.join(str(b) for b in reversed(B))

def magma_list_repr(l):
  return "{" + ",".join(str(x) for x in l) + "}"

for d in [2..max_rank]:
  Hdats = possible(d)
  bndd = floor(bnd^(1/(d/2+1)))
  for H in Hdats:
    if H.alpha()[0] < H.beta()[0]: H1 = H.swap_alpha_beta()
    else: H1 = H
    w = H1.weight()
    A, B = H1.cyclotomic_data()
    badps = list(set(flatten([prime_factors(x) for x in H1.gamma_array()])))
    cputime = time.time()
    for p in prime_range(bndd+1):
      if p in badps or p==2: continue
      f.write("{}:{}:{}:{}:{}:".format(d, magma_list_repr(reversed(A)), magma_list_repr(reversed(B)), hgm_label(H1), p))
      f.write(magma_list_repr([magma_list_repr(H1.euler_factor(t,p, cache_p=True).list()) for t in [2..p-1]]))
      f.write("\n")
    print(d,H.alpha_beta(),bndd,time.time()-cputime)
f.close()
