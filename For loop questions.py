
# with range reverse
abc="sri vasu"
for i in range(len(abc)-1,-1,-1):
    print(abc[i],end="")

cds="sasi kumar"
res = ""
for g in cds:
    res = g + res
    print(res)
# list to reverse with out range
a = ["vasu", "sasi", "sampath", "jagan"]

res = []

for h in a:
    res.append(h)

print(res)
#list reverse using range
d = ["vasu", "sasi", "sampath", "jagan"]
res=[]
for f in range(len(d)-1, -1, -1):
    res.append(d[f])
    print(res,end="")
#  duplicate from list
q=["vaasu","apple","bannanan","orange","vaasu"]
op=[] 
for k in q:
    if k not in op :
        op.append=(1)
        print(k)

# accurace in dic
a = ["vasu", "sasi", "vasu", "jagan", "sasi", "vasu"]

d = {}

for i in a:
    if i in d:
        d[i] += 1
    else:
        d[i] = 1

print(d)

