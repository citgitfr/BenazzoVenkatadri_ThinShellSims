# ts_L001_000_linear_h2p5: OpenSeesPy vs Abaqus results

- OpenSees results: `results\ts_L001_000_linear_h2p5.npz`
- Abaqus results: `ts_L001_000_linear_h2p5_S4R_2p5mm_odb.npz` (ODB `ts_L001_000_linear_h2p5_S4R_2p5mm.odb`, step Load, Abaqus Abaqus/Standard 2026, 2 frames)
- 10426 OpenSees shell nodes, 10426 Abaqus nodes; 10000 OpenSees facets, 10000 Abaqus shell elements
- Abaqus axes used as global (x, y, z) = Abaqus columns [0, 1, 2]; node pairing max distance 9.08e-07 mm, element centroids 7.65e-07 mm (element size 2.5 mm): **same mesh**
- section points: 9 Abaqus stress section points paired with plies (layer, position): 1b, 1m, 1t, 2b, 2m, 2t, 3b, 3m, 3t

Peak = largest |OpenSees value|; Abaqus at the same point; diff = (Abaqus - OpenSees) / |peak|; rel. RMS = ||Abaqus - OpenSees|| / ||OpenSees|| over all points; scale = least-squares Abaqus/OpenSees. PASS: |diff| <= 3% and rel. RMS <= 9% (~0: OpenSees peak < 0.1% of the group, max |diff| <= 3% of the group).

| quantity | component | where (OpenSees peak) | OpenSees | Abaqus same point | Abaqus peak | diff | rel. RMS | scale | verdict |
|---|---|---|---|---|---|---|---|---|---|
| displacement | ux | node at (992.5, -20, 20) | +0.16102 | +0.16215 | +0.16215 | +0.70% | 0.70% | 1.0070 | PASS |
| displacement | uy | node at (175, 20, 20) | -0.01441 | -0.01434 | +0.01434 | +0.49% | 0.66% | 0.9943 | PASS |
| displacement | uz | node at (1000, -20, 20) | -8.5231 | -8.5825 | -8.5825 | -0.70% | 0.70% | 1.0070 | PASS |
| rotation | rx | node at (170, 20, 20) | +0.00084957 | +0.00084441 | -0.00084441 | -0.61% | 1.60% | 0.9943 | PASS |
| rotation | ry | node at (997.5, -1.256, 0.03947) | +0.012811 | +0.012898 | +0.0129 | +0.68% | 0.70% | 1.0070 | PASS |
| rotation | rz | node at (2.5, -19.37, 15.03) | +0.00049123 | +0.00048342 | +0.00053135 | -1.59% | 15.94% | 1.0017 | CHECK |
| displacement | |u| | node at (1000, -20, 20) | +8.5246 | +8.584 | +8.584 | +0.70% | 0.70% | 1.0070 | PASS |
| rigid end xL | ux | reference point (9.9e-08 from the OpenSees node) | +1.8125e-07 | +2.1647e-07 | +2.1647e-07 |  | 19.43% | 1.1943 | PASS (~0) |
| rigid end xL | uy | reference point (9.9e-08 from the OpenSees node) | -3.1307e-09 | +6.8932e-14 | +6.8932e-14 |  | 100.00% | -0.0000 | PASS (~0) |
| rigid end xL | uz | reference point (9.9e-08 from the OpenSees node) | -8.5231 | -8.5825 | -8.5825 | -0.70% | 0.70% | 1.0070 | PASS |
| rigid end xL | rx | reference point (9.9e-08 from the OpenSees node) | +2.4983e-10 | -4.5951e-15 | -4.5951e-15 |  | 100.00% | -0.0000 | PASS (~0) |
| rigid end xL | ry | reference point (9.9e-08 from the OpenSees node) | +0.012662 | +0.012751 | +0.012751 | +0.70% | 0.70% | 1.0070 | PASS |
| membrane strain | exx (SE1) | element at (1.25, -19.92, 18.75) | +0.00029111 | +0.00029379 | +0.00029379 | +0.92% | 0.70% | 1.0070 | PASS |
| membrane strain | eyy (SE2) | element at (8.75, -19.92, 18.75) | -9.2189e-05 | -9.3931e-05 | -9.5909e-05 | -1.89% | 1.04% | 1.0074 | PASS |
| membrane strain | gxy (SE3) | element at (6.25, -15.38, 7.277) | +7.428e-05 | +7.3769e-05 | +7.4072e-05 | -0.69% | 0.52% | 1.0018 | PASS |
| curvature | kxx (SK2) | element at (1.25, -1.665e-15, 0.03947) | +0.00023911 | +0.00024282 | +0.00024282 | +1.55% | 6.37% | 1.0115 | PASS |
| curvature | kyy (SK1) | element at (6.25, -19.61, 16.26) | +0.00010311 | +0.00013577 | +0.00013625 | +31.67% | 7.76% | 1.0010 | CHECK |
| curvature | kxy (SK3) | element at (1.25, -19.92, 18.75) | -0.00015467 | -0.00025884 | -0.00025884 | -67.35% | 28.53% | 1.0762 | CHECK |
| ply 1 (0 deg) bottom | s1 (S11) | element at (1.25, -19.92, 18.75) | +47.207 | +47.376 | +47.376 | +0.36% | 0.70% | 1.0070 | PASS |
| ply 1 (0 deg) bottom | s2 (S22) | element at (1.25, -19.61, 16.26) | +0.47346 | +0.50579 | +0.50579 | +6.83% | 12.66% | 0.9785 | CHECK |
| ply 1 (0 deg) bottom | t12 (S12) | element at (1.25, -19.92, 18.75) | +0.36809 | +0.37765 | +0.37765 | +2.60% | 0.58% | 1.0019 | PASS |
| ply 1 (0 deg) top | s1 (S11) | element at (1.25, -19.92, 18.75) | +46.584 | +46.903 | +46.903 | +0.69% | 0.70% | 1.0070 | PASS |
| ply 1 (0 deg) top | s2 (S22) | element at (1.25, -19.61, 16.26) | +0.46369 | +0.49188 | +0.49188 | +6.08% | 11.77% | 0.9736 | CHECK |
| ply 1 (0 deg) top | t12 (S12) | element at (6.25, -15.38, 7.277) | +0.34429 | +0.34128 | +0.34443 | -0.88% | 0.53% | 1.0019 | PASS |
| ply 2 (0 deg) bottom | s1 (S11) | element at (1.25, -19.92, 18.75) | +46.584 | +46.903 | +46.903 | +0.69% | 0.70% | 1.0070 | PASS |
| ply 2 (0 deg) bottom | s2 (S22) | element at (1.25, -19.61, 16.26) | +0.46369 | +0.49188 | +0.49188 | +6.08% | 11.77% | 0.9736 | CHECK |
| ply 2 (0 deg) bottom | t12 (S12) | element at (6.25, -15.38, 7.277) | +0.34429 | +0.34128 | +0.34443 | -0.88% | 0.53% | 1.0019 | PASS |
| ply 2 (0 deg) top | s1 (S11) | element at (3.75, -19.92, 18.75) | +46.074 | +46.29 | +46.431 | +0.47% | 0.70% | 1.0070 | PASS |
| ply 2 (0 deg) top | s2 (S22) | element at (1.25, -19.61, 16.26) | +0.45392 | +0.47797 | +0.47797 | +5.30% | 9.17% | 0.9760 | CHECK |
| ply 2 (0 deg) top | t12 (S12) | element at (6.25, -15.38, 7.277) | +0.34948 | +0.34773 | +0.34773 | -0.50% | 0.53% | 1.0018 | PASS |
| ply 3 (0 deg) bottom | s1 (S11) | element at (3.75, -19.92, 18.75) | +46.074 | +46.29 | +46.431 | +0.47% | 0.70% | 1.0070 | PASS |
| ply 3 (0 deg) bottom | s2 (S22) | element at (1.25, -19.61, 16.26) | +0.45392 | +0.47797 | +0.47797 | +5.30% | 9.17% | 0.9760 | CHECK |
| ply 3 (0 deg) bottom | t12 (S12) | element at (6.25, -15.38, 7.277) | +0.34948 | +0.34773 | +0.34773 | -0.50% | 0.53% | 1.0018 | PASS |
| ply 3 (0 deg) top | s1 (S11) | element at (3.75, -19.92, 18.75) | +46.142 | +46.216 | +46.329 | +0.16% | 0.71% | 1.0070 | PASS |
| ply 3 (0 deg) top | s2 (S22) | element at (1.25, -19.61, 16.26) | +0.44415 | +0.46405 | +0.46405 | +4.48% | 6.12% | 0.9847 | CHECK |
| ply 3 (0 deg) top | t12 (S12) | element at (6.25, -15.38, 7.277) | +0.35466 | +0.35417 | +0.35425 | -0.14% | 0.57% | 1.0018 | PASS |
| section force (N/mm) | N11 (SF1) | element at (1.25, -19.92, 18.75) | +4.8586 | +4.9 | +4.9 | +0.85% | 0.70% | 1.0070 | PASS |
| section force (N/mm) | N22 (SF2) | element at (1.25, -19.61, 16.26) | +0.048174 | +0.050917 | +0.050917 | +5.69% | 10.66% | 0.9736 | CHECK |
| section force (N/mm) | N12 (SF3) | element at (6.25, -15.38, 7.277) | +0.036423 | +0.036173 | +0.036321 | -0.69% | 0.52% | 1.0018 | PASS |
| section moment (N mm/mm) | M11 (SM1) | element at (1.25, -1.665e-15, 0.03947) | +0.0036762 | +0.003732 | +0.003732 | +1.52% | 6.52% | 1.0117 | PASS |
| section moment (N mm/mm) | M22 (SM2) | element at (3.75, -19.61, 16.26) | +0.00010594 | +0.00014869 | +0.00014869 | +40.34% | 8.64% | 1.0009 | CHECK |
| section moment (N mm/mm) | M12 (SM3) | element at (1.25, -19.92, 18.75) | -6.9681e-05 | -0.00011661 | -0.00011661 |  | 28.53% | 1.0762 | PASS (~0) |

**31/42 PASS, 11 CHECK.**

Pictures: `ts_L001_000_linear_h2p5_along_x.png`, `ts_L001_000_linear_h2p5_deformed.png`, `ts_L001_000_linear_h2p5_fields.png`, `ts_L001_000_linear_h2p5_parity.png`
