import json, numpy as np, scipy.linalg as sl, coarse_mode as cm, openseespy.opensees as ops
t = json.loads(open(cm.REPO/'Code for Project/11-06-26 (Orchestrator)/ts_1m_buck5N_opp2cm_hub40/iterations/it002/buckling.json').read())
t['laminate'] = {'json': str(cm.REPO/'Code for Project/11-06-26 (Orchestrator)/ts_1m_buck5N_opp2cm_hub40/iterations/it002/lam.json')}
sx, _, _ = cm.coarse_size_x(t, 5)
kw = dict(size=5, size_x=sx)
mesh, _ = cm.build(t, 'ShellNLDKGQ', **kw); K0 = cm.sb._dense_tangent(0.0)
mesh, _ = cm.build(t, 'ShellNLDKGQ', **kw); K1 = cm.sb._dense_tangent(0.05)
nodes = cm.grid_nodes(mesh)
eqs = np.array([ops.nodeDOFs(n) for n in nodes])
Kg = (K1-K0)/0.05; K0=(K0+K0.T)/2; Kg=(Kg+Kg.T)/2
n=K0.shape[0]
mu,V = sl.eigh(-Kg,K0,subset_by_index=[n-12,n-1]); o=np.argsort(-mu); mu,V=mu[o],V[:,o]
tr = eqs[:, :3].ravel(); ro = eqs[:, 3:].ravel()
for q in range(8):
    v=V[:,q]; et=np.sum(v[tr[tr>=0]]**2); er=np.sum(v[ro[ro>=0]]**2)
    T = np.zeros((len(nodes),3)); 
    for k in range(3):
        e=eqs[:,k]; T[e>=0,k]=v[e[e>=0]]
    a=np.linalg.norm(T,axis=1); kmax=int(np.argmax(a)); j,i=divmod(kmax, mesh.nx+1)
    print(f'mode {q+1}: lam {1/mu[q]:.4f}  translation share {et/(et+er):.2e}  max at station {i}/{mesh.nx}, line {j}/{mesh.ny};  #nodes >0.3max {np.sum(a>0.3*a.max())}')
# K0 alone: lowest eigenvalues (mechanisms?)
w = sl.eigh(K0, subset_by_index=[0,5], eigvals_only=True); print('K0 lowest eigenvalues', w)
