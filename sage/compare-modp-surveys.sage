## WARNING: this depends on patches to Sage 8.9; these should be integrated into 8.10.

import re
prog = re.compile("(.*):\{(.*)\}:\{(.*)\}:A(.*)_B(.*):(.*):\{\{(.*)\}\}\n")

def split_rev_join(s, separator):
    l = s.split(separator)
    return separator.join(reversed(l))

def reverse_labels(s):
    m = prog.match(s).groups()
    return m[0] + ":{" + split_rev_join(m[1],",") + "}:{" + split_rev_join(m[2],",") + "}:A" + \
        split_rev_join(m[3],".") + "_B" + split_rev_join(m[4], ".") + ":" + \
        m[5] + ":{{" + m[6] + "}}\n"

f1 = open("modpsurvey-18.out", "r")
l1 = list(f1)[3:]
l1 = [reverse_labels(s) for s in l1] ## Omit this after corrected datafile is provided
l1.sort()
f1.close()

f2 = open("modpsurvey-sage.txt", "r")
l2 = list(f2)
l2.sort()
f2.close()
print(l1 == l2)

P.<t> = QQ[]
for s in l2:
    m = prog.match(s).groups()
    p = int(m[5])
    s1 = "{{" + m[6] + "}}"
    s1 = re.sub("\{", "[", s1)
    s1 = re.sub("\}", "]", s1)
    l = eval(s1)
    for m in l:
        assert(P(m).is_weil_polynomial())
print("All answers are Weil polynomials")

f3 = open("modpsurvey-fs-sage.txt", "r")
l3 = list(f3)
f3.close()
print(all(s in l2 for s in l3))

