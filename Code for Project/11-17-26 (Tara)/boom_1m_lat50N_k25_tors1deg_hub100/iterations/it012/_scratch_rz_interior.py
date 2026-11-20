import numpy as np
from scipy.spatial import cKDTree
o=np.load('results/it012_L038_Y031_C005.npz'); a=np.load('it012_L038_Y031_C005_S4R_4p5mm_odb.npz')
P=o['points']; d=o['disp']; X=a['node_xyz']; UR=a['UR'][-1]
dist,j=cKDTree(X).query(P); ok=dist<1e-3
x=P[:,0]
for name,m in [('all',ok),('20<x<980',ok&(x>20)&(x<980)),('50<x<950',ok&(x>50)&(x<950))]:
    s=d[m,5]; t=UR[j[m],2]
    print(name, m.sum(), 'rz relRMS %.1f%%'%(100*np.linalg.norm(t-s)/np.linalg.norm(s)), 'scale %.4f'%((s@t)/(s@s)))
# where is the largest rz error
e=np.abs(UR[j[ok],2]-d[ok,5]); k=np.argsort(e)[-5:]
print('largest rz errors at', P[ok][k].round(1), e[k])
z=P[:,2]
for lim in [2,5,10]:
    m=ok&(np.abs(z)>lim); s=d[m,5]; t=UR[j[m],2]
    print('|z|>%g'%lim, m.sum(), 'rz relRMS %.1f%%'%(100*np.linalg.norm(t-s)/np.linalg.norm(s)), 'scale %.4f'%((s@t)/(s@s)))
m=ok&(np.abs(z)<=2); print('|z|<=2 nodes',m.sum(),'max|rz| OS %.3g Abq %.3g'%(np.abs(d[m,5]).max(),np.abs(UR[j[m],2]).max()))
