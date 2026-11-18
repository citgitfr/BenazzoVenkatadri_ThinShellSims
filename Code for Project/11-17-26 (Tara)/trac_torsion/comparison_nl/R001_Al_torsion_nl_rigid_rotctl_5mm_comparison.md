# R001_Al_torsion_nl_rigid_rotctl_5mm: OpenSeesPy vs Abaqus results

- OpenSees results: `results\R001_Al_torsion_nl_rigid_rotctl_5mm.npz`
- Abaqus results: `abaqus_nl\R001_Al_torsion_nl_abq_5mm_S4R_5mm_odb.npz` (ODB `R001_Al_torsion_nl_abq_5mm_S4R_5mm.odb`, step Load, Abaqus Abaqus/Standard 2026, 47 frames)
- 2211 OpenSees shell nodes, 2211 Abaqus nodes; 2000 OpenSees facets, 2000 Abaqus shell elements
- Abaqus axes used as global (x, y, z) = Abaqus columns [0, 1, 2]; node pairing max distance 2.75e-07 mm, element centroids 1.37e-07 mm (element size 5 mm): **same mesh**
- laminates: flange: 1600 facets, [0]; web: 400 facets, [0/0]
- section points: 3 Abaqus stress section points paired with plies (layer, position): 1b, 1m, 1t

Peak = largest |OpenSees value|; Abaqus at the same point; diff = (Abaqus - OpenSees) / |peak|; rel. RMS = ||Abaqus - OpenSees|| / ||OpenSees|| over all points; scale = least-squares Abaqus/OpenSees. PASS: |diff| <= 3% and rel. RMS <= 9% (~0: OpenSees peak < 0.1% of the group, max |diff| <= 3% of the group).

| quantity | component | where (OpenSees peak) | OpenSees | Abaqus same point | Abaqus peak | diff | rel. RMS | scale | verdict |
|---|---|---|---|---|---|---|---|---|---|
| displacement | ux | node at (805, -12.5, 12.5) | -0.025048 | -0.027412 | -0.027441 | -9.44% | 7.69% | 1.0660 | CHECK |
| displacement | uy | node at (1000, 0, -8) | +8.0216 | +8.2324 | +8.2324 | +2.63% | 4.03% | 1.0367 | PASS |
| displacement | uz | node at (1000, -12.5, 12.5) | -8.9641 | -9.317 | -9.317 | -3.94% | 3.81% | 1.0362 | CHECK |
| rotation | rx | node at (995, 12.5, 12.5) | +0.64733 | +0.67298 | +0.67303 | +3.96% | 3.74% | 1.0369 | CHECK |
| rotation | ry | node at (580, -12.5, 12.5) | +0.010515 | +0.010882 | +0.010909 | +3.49% | 6.22% | 1.0458 | CHECK |
| rotation | rz | node at (440, 0, -8) | +0.010302 | +0.010456 | +0.010456 | +1.49% | 6.10% | 1.0442 | PASS |
| displacement | |u| | node at (1000, 12.5, 12.5) | +9.1945 | +9.5992 | +9.5992 | +4.40% | 3.75% | 1.0365 | CHECK |
| rigid end xL | ux | reference point (1.1e-07 from the OpenSees node) | -0.014955 | -0.016059 | -0.016059 | -7.38% | 7.38% | 1.0738 | CHECK |
| rigid end xL | uy | reference point (1.1e-07 from the OpenSees node) | -0.10983 | -0.1728 | -0.1728 | -57.32% | 57.32% | 1.5732 | CHECK |
| rigid end xL | uz | reference point (1.1e-07 from the OpenSees node) | -0.0070124 | +0.0044619 | +0.0044619 | +163.63% | 163.63% | -0.6363 | CHECK |
| rigid end xL | rx | reference point (1.1e-07 from the OpenSees node) | +0.6473 | +0.673 | +0.673 | +3.97% | 3.97% | 1.0397 | CHECK |
| rigid end xL | ry | reference point (1.1e-07 from the OpenSees node) | -6.023e-05 | -0.00012488 | -0.00012488 |  | 107.33% | 2.0733 | PASS (~0) |
| rigid end xL | rz | reference point (1.1e-07 from the OpenSees node) | +9.9516e-06 | -6.5427e-09 | -6.5427e-09 |  | 100.07% | -0.0007 | PASS (~0) |
| membrane strain | exx (SE1) | element at (7.5, 5.689, 10.19) | -6.132e-05 | -6.6777e-05 | -6.8188e-05 | -8.90% | 10.17% | 1.0662 | CHECK |
| membrane strain | eyy (SE2) | element at (7.5, 5.689, 10.19) | +2.225e-05 | +2.4722e-05 | +2.5831e-05 | +11.11% | 12.52% | 1.0711 | CHECK |
| membrane strain | gxy (SE3) | element at (7.5, -0.4758, 2.392) | -1.1933e-05 | -1.2974e-05 | -1.2974e-05 | -8.72% | 12.81% | 1.0164 | CHECK |
| curvature | kxx (SK2) | element at (2.5, 1.225e-16, -6) | +0.00015851 | +0.00018299 | +0.00018299 | +15.44% | 21.52% | 1.1076 | CHECK |
| curvature | kyy (SK1) | element at (37.5, 0.4758, 2.392) | -0.00017155 | -0.00018318 | -0.00018674 | -6.77% | 13.17% | 0.9928 | CHECK |
| curvature | kxy (SK3) | element at (527.5, 5.689, 10.19) | -0.00157 | -0.0015933 | -0.0015959 | -1.48% | 4.09% | 1.0336 | PASS |
| flange ply 1 (0 deg) bottom | s1 (S11) | element at (2.5, 5.689, 10.19) | -4.7033 | -5.1564 | -5.1564 | -9.63% | 9.89% | 1.0623 | CHECK |
| flange ply 1 (0 deg) bottom | s2 (S22) | element at (2.5, 5.689, 10.19) | -0.71242 | -0.43677 | +0.75455 | +38.69% | 19.93% | 0.9790 | CHECK |
| flange ply 1 (0 deg) bottom | t12 (S12) | element at (462.5, -5.689, 10.19) | +2.0396 | +2.0673 | +2.0681 | +1.36% | 4.13% | 1.0334 | PASS |
| flange ply 1 (0 deg) top | s1 (S11) | element at (7.5, 2.306, 6.811) | -4.1322 | -4.6969 | -4.6969 | -13.67% | 10.41% | 1.0664 | CHECK |
| flange ply 1 (0 deg) top | s2 (S22) | element at (37.5, 0.4758, 2.392) | -0.70084 | -0.74973 | -0.7708 | -6.97% | 17.20% | 0.9764 | CHECK |
| flange ply 1 (0 deg) top | t12 (S12) | element at (512.5, 0.4758, 2.392) | -2.0376 | -2.0706 | -2.0706 | -1.62% | 4.07% | 1.0332 | PASS |
| web ply 1 (0 deg) bottom | s1 (S11) | element at (527.5, 1.225e-16, -6) | +1.3851 | +1.4569 | +1.457 | +5.19% | 8.85% | 1.0785 | CHECK |
| web ply 1 (0 deg) bottom | s2 (S22) | element at (32.5, 3.674e-16, -2) | -0.331 | -0.36807 | -0.37066 | -11.20% | 9.75% | 1.0468 | CHECK |
| web ply 1 (0 deg) bottom | t12 (S12) | element at (502.5, 3.674e-16, -2) | +4.07 | +4.1398 | +4.1398 | +1.71% | 4.15% | 1.0345 | PASS |
| web ply 1 (0 deg) top | s1 (S11) | element at (497.5, 1.225e-16, -6) | +1.3846 | +1.4563 | +1.457 | +5.18% | 29.03% | 1.0789 | CHECK |
| web ply 1 (0 deg) top | s2 (S22) | element at (2.5, 3.674e-16, -2) | +0.0014848 | +0.33136 | -0.37062 |  | 30673.28% | 6.7129 | CHECK (~0 in OpenSees) |
| web ply 1 (0 deg) top | t12 (S12) | element at (12.5, 3.674e-16, -2) | -0.025548 | -0.81737 | -4.1398 | -3099.38% | 29805.33% | 0.5706 | CHECK (factor 2: tensor vs engineering?) |
| section force (N/mm) | N11 (SF1) | element at (2.5, 5.689, 10.19) | -0.44098 | -0.48075 | -0.48075 | -9.02% | 9.80% | 1.0674 | CHECK |
| section force (N/mm) | N22 (SF2) | element at (2.5, 5.689, 10.19) | -0.059808 | -0.03099 | +0.044406 | +48.18% | 55.48% | 0.6532 | CHECK |
| section force (N/mm) | N12 (SF3) | element at (7.5, -0.4758, 2.392) | -0.030954 | -0.033653 | -0.033653 | -8.72% | 12.76% | 1.0155 | CHECK |
| section moment (N mm/mm) | M11 (SM1) | element at (2.5, 1.225e-16, -6) | +0.0080065 | +0.0090902 | +0.0090902 | +13.54% | 10.99% | 1.0708 | CHECK |
| section moment (N mm/mm) | M22 (SM2) | element at (32.5, 3.674e-16, -2) | +0.0022054 | +0.002456 | +0.0024657 | +11.36% | 11.56% | 1.0245 | CHECK |
| section moment (N mm/mm) | M12 (SM3) | element at (497.5, 3.674e-16, -2) | -0.027133 | -0.027599 | -0.027599 | -1.72% | 4.14% | 1.0345 | PASS |

**9/37 PASS, 28 CHECK.**

Pictures: `R001_Al_torsion_nl_rigid_rotctl_5mm_along_x.png`, `R001_Al_torsion_nl_rigid_rotctl_5mm_deformed.png`, `R001_Al_torsion_nl_rigid_rotctl_5mm_fields.png`, `R001_Al_torsion_nl_rigid_rotctl_5mm_parity.png`
