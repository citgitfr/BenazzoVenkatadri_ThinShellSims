import sys, time, json
sys.path.insert(0, '..')
import ctm_model as cm
REF = dict(axial=545.0, Mx=11610.0, My=10270.0)
if __name__ == '__main__':
    load, size = sys.argv[1], float(sys.argv[2])
    d = (25.62, 1.5708)
    c = cm.compliance(d, load, size)
    pmax = 1.5 * REF[load] * c
    print(load, size, 'pmax', pmax, flush=True)
    r = cm.scan_A(d, load, size, pmax, pmax / 20, workers=16)
    r.pop('mode')
    print(json.dumps({k: v for k, v in r.items() if k != 'evaluations'}, indent=1, default=float), flush=True)
