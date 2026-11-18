# M008_Al_torsion_2p5mm: OpenSeesPy vs Abaqus results

- OpenSees results: `results\M008_Al_torsion_2p5mm.npz`
- Abaqus results: `M008_Al_torsion_2p5mm_S4R_2p5mm_odb.npz` (ODB `M008_Al_torsion_2p5mm_S4R_2p5mm.odb`, step Load, Abaqus Abaqus/Standard 2026, 2 frames)
- 40902 OpenSees shell nodes, 40902 Abaqus nodes; 40800 OpenSees facets, 40800 Abaqus shell elements
- Abaqus axes used as global (x, y, z) = Abaqus columns [0, 1, 2]; node pairing max distance 1.66e-06 mm, element centroids 1.47e-06 mm (element size 2.5 mm): **same mesh**
- laminates: flange: 39200 facets, [0]; web: 1600 facets, [0/0]
- section points: 3 Abaqus stress section points paired with plies (layer, position): 1b, 1m, 1t

Peak = largest |OpenSees value|; Abaqus at the same point; diff = (Abaqus - OpenSees) / |peak|; rel. RMS = ||Abaqus - OpenSees|| / ||OpenSees|| over all points; scale = least-squares Abaqus/OpenSees. PASS: |diff| <= 3% and rel. RMS <= 9% (~0: OpenSees peak < 0.1% of the group, max |diff| <= 3% of the group).

| quantity | component | where (OpenSees peak) | OpenSees | Abaqus same point | Abaqus peak | diff | rel. RMS | scale | verdict |
|---|---|---|---|---|---|---|---|---|---|
| displacement | ux | node at (500, -23.55, -24.14) | +4.8915e-07 | +4.9037e-07 | -4.9037e-07 | +0.25% | 0.29% | 1.0027 | PASS |
| displacement | uy | node at (1000, -1.261, -38.47) | +6.8969e-05 | +6.9005e-05 | -6.9005e-05 | +0.05% | 0.06% | 1.0006 | PASS |
| displacement | uz | node at (1000, 43, 0) | +7.709e-05 | +7.7131e-05 | -7.7131e-05 | +0.05% | 0.05% | 1.0005 | PASS |
| rotation | rx | node at (930, 26.02, -17.02) | +1.8858e-06 | +1.8881e-06 | +1.8881e-06 | +0.12% | 0.09% | 1.0006 | PASS |
| rotation | ry | node at (995, -43, 0) | +4.1054e-07 | +4.1926e-07 | +4.1926e-07 | +2.12% | 9.75% | 0.9913 | CHECK |
| rotation | rz | node at (967.5, 26.5, -12) | +5.4195e-08 | +5.3764e-08 | -5.3764e-08 | -0.80% | 16.25% | 0.9617 | CHECK |
| displacement | |u| | node at (1000, 43, 0) | +7.709e-05 | +7.7131e-05 | +7.7131e-05 | +0.05% | 0.05% | 1.0005 | PASS |
| rigid end xL | ux | reference point (1e-12 from the OpenSees node) | +1.0795e-16 | -1.5625e-17 | -1.5625e-17 | -114.47% | 114.47% | -0.1447 | CHECK |
| rigid end xL | uy | reference point (1e-12 from the OpenSees node) | +9.1758e-15 | -4.0636e-14 | -4.0636e-14 | -542.86% | 542.86% | -4.4286 | CHECK |
| rigid end xL | uz | reference point (1e-12 from the OpenSees node) | +2.27e-15 | +4.9855e-15 | +4.9855e-15 | +119.62% | 119.62% | 2.1962 | CHECK |
| rigid end xL | rx | reference point (1e-12 from the OpenSees node) | +1.7928e-06 | +1.7937e-06 | +1.7937e-06 | +0.05% | 0.05% | 1.0005 | PASS |
| rigid end xL | ry | reference point (1e-12 from the OpenSees node) | -3.1171e-18 | -6.7798e-18 | -6.7798e-18 |  | 117.50% | 2.1750 | PASS (~0) |
| rigid end xL | rz | reference point (1e-12 from the OpenSees node) | +1.2392e-17 | +1.2069e-17 | +1.2069e-17 | -2.61% | 2.61% | 0.9739 | PASS |
| membrane strain | exx (SE1) | element at (1.25, -35.03, -0.572) | +1.2059e-08 | +1.2455e-08 | -1.2455e-08 | +3.28% | 1.43% | 1.0051 | CHECK |
| membrane strain | eyy (SE2) | element at (3.75, -32.87, -1.468) | -3.1755e-09 | -3.5329e-09 | +3.5604e-09 | -11.25% | 4.36% | 1.0113 | CHECK |
| membrane strain | gxy (SE3) | element at (3.75, 30.92, -2.769) | -5.4805e-08 | -5.4534e-08 | -5.4534e-08 | +0.49% | 0.29% | 1.0005 | PASS |
| curvature | kxx (SK2) | element at (998.8, -39.62, 0) | -1.2958e-07 | -1.3091e-07 | +1.3091e-07 | -1.02% | 8.99% | 0.9997 | PASS |
| curvature | kyy (SK1) | element at (988.8, -32.87, 1.468) | -7.4837e-08 | -7.5097e-08 | +7.5097e-08 | -0.35% | 1.70% | 1.0033 | PASS |
| curvature | kxy (SK3) | element at (993.8, -39.62, 0) | -9.1376e-08 | -9.7372e-08 | -9.7372e-08 | -6.56% | 6.53% | 0.9955 | CHECK |
| flange ply 1 (0 deg) bottom | s1 (S11) | element at (1.25, -35.03, -0.572) | +0.0012057 | +0.0012254 | -0.0012254 | +1.64% | 2.26% | 1.0058 | PASS |
| flange ply 1 (0 deg) bottom | s2 (S22) | element at (1.25, -37.33, -0.1153) | +0.00040253 | +0.00044335 | -0.00044335 | +10.14% | 2.94% | 1.0041 | CHECK |
| flange ply 1 (0 deg) bottom | t12 (S12) | element at (3.75, 30.92, -2.769) | -0.0014198 | -0.0014147 | -0.0014147 | +0.36% | 0.30% | 1.0006 | PASS |
| flange ply 1 (0 deg) top | s1 (S11) | element at (3.75, -35.03, -0.572) | +0.00076633 | +0.00076809 | -0.00076809 | +0.23% | 1.95% | 1.0028 | PASS |
| flange ply 1 (0 deg) top | s2 (S22) | element at (3.75, 37.33, 0.1153) | +0.00049012 | +0.00050505 | -0.00050505 | +3.05% | 2.77% | 1.0036 | CHECK |
| flange ply 1 (0 deg) top | t12 (S12) | element at (3.75, 32.87, 1.468) | -0.0014504 | -0.0014496 | -0.0014496 | +0.06% | 0.29% | 1.0005 | PASS |
| web ply 1 (0 deg) bottom | s1 (S11) | element at (998.8, -39.62, 0) | +0.0010051 | +0.0010126 | -0.0010126 | +0.75% | 3.96% | 1.0012 | PASS |
| web ply 1 (0 deg) bottom | s2 (S22) | element at (998.8, -39.62, 0) | +0.00033617 | +0.00033124 | -0.00033124 | -1.47% | 3.20% | 0.9951 | PASS |
| web ply 1 (0 deg) bottom | t12 (S12) | element at (993.8, -39.62, 0) | +0.00023703 | +0.00025258 | +0.00025258 | +6.56% | 6.33% | 1.0257 | CHECK |
| web ply 1 (0 deg) top | s1 (S11) | element at (1.25, -41.88, 0) | +9.6526e-14 | +0.00086718 | +0.0010126 |  | 155062690944.33% | 14931901.4189 | CHECK (~0 in OpenSees) |
| web ply 1 (0 deg) top | s2 (S22) | element at (1.25, -39.62, 0) | +1.6843e-14 | +0.00033124 | +0.00033124 |  | 3542618660286.45% | 23172058392.1970 | CHECK (~0 in OpenSees) |
| web ply 1 (0 deg) top | t12 (S12) | element at (1.25, -41.88, 0) | +8.9928e-15 | +5.3803e-05 | -0.00025258 |  | 6000949232645.05% | -1298233832.3466 | CHECK (~0 in OpenSees) |
| section force (N/mm) | N11 (SF1) | element at (1.25, -35.03, -0.572) | +9.0872e-05 | +9.2688e-05 | -9.2688e-05 | +2.00% | 1.52% | 1.0045 | PASS |
| section force (N/mm) | N22 (SF2) | element at (1.25, -37.33, -0.1153) | +3.4502e-05 | +3.927e-05 | -3.927e-05 | +13.82% | 15.61% | 1.0270 | CHECK |
| section force (N/mm) | N12 (SF3) | element at (3.75, 30.92, -2.769) | -0.00014216 | -0.00014146 | -0.00014146 | +0.49% | 0.29% | 1.0005 | PASS |
| section moment (N mm/mm) | M11 (SM1) | element at (998.8, -39.62, 0) | -6.7005e-06 | -6.7504e-06 | +6.7504e-06 | -0.75% | 4.19% | 1.0014 | PASS |
| section moment (N mm/mm) | M22 (SM2) | element at (998.8, -39.62, 0) | -2.2411e-06 | -2.2083e-06 | +2.2083e-06 | +1.47% | 2.16% | 1.0021 | PASS |
| section moment (N mm/mm) | M12 (SM3) | element at (993.8, -39.62, 0) | -1.5802e-06 | -1.6839e-06 | -1.6839e-06 | -6.56% | 6.35% | 1.0228 | CHECK |

**21/37 PASS, 16 CHECK.**

Pictures: `M008_Al_torsion_2p5mm_along_x.png`, `M008_Al_torsion_2p5mm_deformed.png`, `M008_Al_torsion_2p5mm_fields.png`, `M008_Al_torsion_2p5mm_parity.png`
