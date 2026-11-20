# it007_L006_Y025_C008_torsion: OpenSeesPy vs Abaqus results

- OpenSees results: `Code for Project\11-17-26 (Tara)\boom_1m_lat50N_k25_tors1deg_hub100\iterations\it007\results\it007_L006_Y025_C008_torsion.npz`
- Abaqus results: `Code for Project\11-17-26 (Tara)\boom_1m_lat50N_k25_tors1deg_hub100\iterations\it007\it007_L006_Y025_C008_torsion_S4R_4p5mm_odb.npz` (ODB `it007_L006_Y025_C008_torsion_S4R_4p5mm.odb`, step Load, Abaqus Abaqus/Standard 2026, 2 frames)
- 23192 OpenSees shell nodes, 23192 Abaqus nodes; 23088 OpenSees facets, 23088 Abaqus shell elements
- Abaqus axes used as global (x, y, z) = Abaqus columns [0, 1, 2]; node pairing max distance 3.05e-05 mm, element centroids 2.43e-05 mm (element size 4.5 mm): **same mesh**
- laminates: flange: 22200 facets, [45/0/0/45]; web: 888 facets, [-45/0/0/-45/45/0/0/45]
- section points: 24 Abaqus stress section points paired with plies (layer, position): 1b, 1m, 1t, 2b, 2m, 2t, 3b, 3m, 3t, 4b, 4m, 4t, 5b, 5m, 5t, 6b, 6m, 6t, 7b, 7m, 7t, 8b, 8m, 8t

Peak = largest |OpenSees value|; Abaqus at the same point; diff = (Abaqus - OpenSees) / |peak|; rel. RMS = ||Abaqus - OpenSees|| / ||OpenSees|| over all points; scale = least-squares Abaqus/OpenSees. PASS: |diff| <= 3% and rel. RMS <= 9% (~0: OpenSees peak < 0.1% of the group, max |diff| <= 3% of the group).

| quantity | component | where (OpenSees peak) | OpenSees | Abaqus same point | Abaqus peak | diff | rel. RMS | scale | verdict |
|---|---|---|---|---|---|---|---|---|---|
| displacement | ux | node at (977.5, -64.87, -0.9737) | +0.00015496 | +0.00015481 | +0.00015568 | -0.10% | 0.42% | 0.9994 | PASS |
| displacement | uy | node at (1000, -5.329e-15, -65.28) | +0.0037087 | +0.0037199 | -0.0037199 | +0.30% | 0.31% | 1.0026 | PASS |
| displacement | uz | node at (1000, 78.61, 0) | +0.0044658 | +0.0044792 | -0.0044792 | +0.30% | 0.30% | 1.0024 | PASS |
| rotation | rx | node at (991, 53.3, 33.4) | +6.8869e-05 | +7.5375e-05 | +7.6645e-05 | +9.45% | 2.78% | 1.0029 | CHECK |
| rotation | ry | node at (986.5, 78.61, 0) | -1.623e-05 | -1.7497e-05 | -2.0265e-05 | -7.81% | 46.84% | 1.1794 | CHECK |
| rotation | rz | node at (4.505, -59.42, 26.5) | -1.1308e-05 | -1.1776e-05 | -1.9414e-05 | -4.14% | 52.62% | 1.0446 | CHECK |
| displacement | |u| | node at (1000, 78.61, 0) | +0.0044684 | +0.0044818 | +0.0044818 | +0.30% | 0.27% | 1.0025 | PASS |
| rigid end x0 | ux | reference point (1.6e-30 from the OpenSees node) | +0 | -0 | -0 |  | 0.00% |  | PASS (~0) |
| rigid end x0 | uy | reference point (1.6e-30 from the OpenSees node) | +0 | +0 | +0 |  | 0.00% |  | PASS (~0) |
| rigid end x0 | uz | reference point (1.6e-30 from the OpenSees node) | +0 | +0 | +0 |  | 0.00% |  | PASS (~0) |
| rigid end x0 | rx | reference point (1.6e-30 from the OpenSees node) | +0 | +1e-34 | +1e-34 |  | 10000000467011018967515459750118451621360651973256352270136120687585172453138652246085709730672087734789980591301762832316076019816481199717762949320963416953653172125828272414476078889423036750809797674169530317443023862839188371278795847282114719822143550619985641472.00% |  | PASS (~0) |
| rigid end x0 | ry | reference point (1.6e-30 from the OpenSees node) | +0 | -0 | -0 |  | 0.00% |  | PASS (~0) |
| rigid end x0 | rz | reference point (1.6e-30 from the OpenSees node) | +0 | +0 | +0 |  | 0.00% |  | PASS (~0) |
| rigid end xL | ux | reference point (1.4e-12 from the OpenSees node) | +0.00015241 | +0.00015221 | +0.00015221 | -0.13% | 0.13% | 0.9987 | PASS |
| rigid end xL | uy | reference point (1.4e-12 from the OpenSees node) | +1.7109e-11 | -5.0611e-13 | -5.0611e-13 |  | 102.96% | -0.0296 | PASS (~0) |
| rigid end xL | uz | reference point (1.4e-12 from the OpenSees node) | +9.6185e-12 | -2.8759e-12 | -2.8759e-12 |  | 129.90% | -0.2990 | PASS (~0) |
| rigid end xL | rx | reference point (1.4e-12 from the OpenSees node) | +5.6812e-05 | +5.6983e-05 | +5.6983e-05 | +0.30% | 0.30% | 1.0030 | PASS |
| rigid end xL | ry | reference point (1.4e-12 from the OpenSees node) | +2.5026e-15 | -2.2714e-17 | -2.2714e-17 |  | 100.91% | -0.0091 | PASS (~0) |
| rigid end xL | rz | reference point (1.4e-12 from the OpenSees node) | +7.3953e-15 | -1.0207e-15 | -1.0207e-15 |  | 113.80% | -0.1380 | PASS (~0) |
| membrane strain | exx (SE1) | element at (2.252, 62.89, 2.355) | +5.8586e-07 | +5.7676e-07 | +5.7676e-07 | -1.55% | 3.77% | 0.9995 | PASS |
| membrane strain | eyy (SE2) | element at (11.26, -58.23, 28.53) | +2.2478e-06 | +2.1847e-06 | +2.7473e-06 | -2.80% | 2.83% | 1.0034 | PASS |
| membrane strain | gxy (SE3) | element at (11.26, 59.63, 5.789) | -3.4466e-06 | -3.4452e-06 | -3.7947e-06 | +0.04% | 1.62% | 1.0026 | PASS |
| curvature | kxx (SK2) | element at (6.757, -22.03, 61.06) | +3.658e-06 | +5.7258e-06 | +5.7278e-06 | +56.53% | 77.67% | 1.4226 | CHECK |
| curvature | kyy (SK1) | element at (11.26, 62.89, 2.355) | -3.858e-06 | -4.6602e-06 | +5.1581e-06 | -20.79% | 36.49% | 1.0443 | CHECK |
| curvature | kxy (SK3) | element at (2.252, -47.68, -42.28) | +3.0732e-06 | +3.9937e-06 | +4.0039e-06 | +29.95% | 95.95% | 1.0790 | CHECK |
| flange ply 1 (45 deg) bottom | s1 (S11) | element at (997.7, 18.01, 61.21) | -0.12789 | -0.11494 | -0.11915 | +10.13% | 3.78% | 1.0007 | CHECK |
| flange ply 1 (45 deg) bottom | s2 (S22) | element at (6.757, 62.89, 2.355) | +0.021965 | +0.026381 | +0.026381 | +20.10% | 2.18% | 1.0033 | CHECK |
| flange ply 1 (45 deg) bottom | t12 (S12) | element at (988.7, -59.63, -5.789) | +0.0091095 | +0.0095474 | +0.012087 | +4.81% | 3.59% | 1.0037 | CHECK |
| flange ply 1 (45 deg) top | s1 (S11) | element at (2.252, -55.17, 31.98) | -0.12069 | -0.10117 | -0.10474 | +16.17% | 2.90% | 0.9997 | CHECK |
| flange ply 1 (45 deg) top | s2 (S22) | element at (15.77, 49.1, 38.28) | +0.021269 | +0.021279 | +0.024914 | +0.04% | 2.10% | 1.0031 | PASS |
| flange ply 1 (45 deg) top | t12 (S12) | element at (988.7, -59.63, -5.789) | +0.0089597 | +0.0092729 | +0.011273 | +3.50% | 3.37% | 1.0036 | CHECK |
| flange ply 2 (0 deg) bottom | s1 (S11) | element at (6.757, 62.89, 2.355) | +0.097242 | +0.11701 | +0.11701 | +20.33% | 5.88% | 1.0023 | CHECK |
| flange ply 2 (0 deg) bottom | s2 (S22) | element at (15.77, -13.79, 60.82) | +0.017832 | +0.017779 | +0.020882 | -0.30% | 2.71% | 1.0034 | PASS |
| flange ply 2 (0 deg) bottom | t12 (S12) | element at (11.26, 59.63, 5.789) | -0.013384 | -0.013281 | -0.014967 | +0.78% | 1.63% | 1.0028 | PASS |
| flange ply 2 (0 deg) top | s1 (S11) | element at (2.252, 62.89, 2.355) | +0.095268 | +0.094525 | +0.094525 | -0.78% | 2.85% | 1.0005 | PASS |
| flange ply 2 (0 deg) top | s2 (S22) | element at (11.26, 58.23, -28.53) | +0.017472 | +0.01695 | +0.021332 | -2.99% | 2.70% | 1.0034 | PASS |
| flange ply 2 (0 deg) top | t12 (S12) | element at (11.26, 59.63, 5.789) | -0.013442 | -0.013436 | -0.014799 | +0.04% | 1.62% | 1.0026 | PASS |
| flange ply 3 (0 deg) bottom | s1 (S11) | element at (2.252, 62.89, 2.355) | +0.095268 | +0.094525 | +0.094525 | -0.78% | 2.85% | 1.0005 | PASS |
| flange ply 3 (0 deg) bottom | s2 (S22) | element at (11.26, 58.23, -28.53) | +0.017472 | +0.01695 | +0.021332 | -2.99% | 2.70% | 1.0034 | PASS |
| flange ply 3 (0 deg) bottom | t12 (S12) | element at (11.26, 59.63, 5.789) | -0.013442 | -0.013436 | -0.014799 | +0.04% | 1.62% | 1.0026 | PASS |
| flange ply 3 (0 deg) top | s1 (S11) | element at (2.252, 62.89, 2.355) | +0.10106 | +0.10371 | +0.10371 | +2.62% | 5.13% | 1.0019 | PASS |
| flange ply 3 (0 deg) top | s2 (S22) | element at (29.28, 2.018, 64.93) | +0.017593 | +0.017946 | +0.021782 | +2.01% | 2.78% | 1.0034 | PASS |
| flange ply 3 (0 deg) top | t12 (S12) | element at (11.26, 59.63, 5.789) | -0.013499 | -0.013592 | -0.014693 | -0.69% | 1.66% | 1.0023 | PASS |
| flange ply 4 (45 deg) bottom | s1 (S11) | element at (2.252, -51.61, -34.82) | -0.12552 | -0.1064 | -0.11575 | +15.24% | 2.68% | 0.9981 | CHECK |
| flange ply 4 (45 deg) bottom | s2 (S22) | element at (11.26, -59.63, -5.789) | +0.0219 | +0.022465 | +0.024926 | +2.58% | 2.22% | 1.0030 | PASS |
| flange ply 4 (45 deg) bottom | t12 (S12) | element at (11.26, 58.23, -28.53) | +0.0089245 | +0.0087449 | +0.011419 | -2.01% | 3.20% | 1.0035 | PASS |
| flange ply 4 (45 deg) top | s1 (S11) | element at (997.7, -58.23, -14.96) | -0.1312 | -0.12567 | -0.12662 | +4.22% | 3.42% | 0.9976 | CHECK |
| flange ply 4 (45 deg) top | s2 (S22) | element at (11.26, -59.63, -5.789) | +0.022388 | +0.023391 | +0.025784 | +4.48% | 2.41% | 1.0029 | CHECK |
| flange ply 4 (45 deg) top | t12 (S12) | element at (11.26, 58.23, -28.53) | +0.0093182 | +0.009153 | +0.012153 | -1.77% | 3.27% | 1.0036 | PASS |
| web ply 1 (-45 deg) bottom | s1 (S11) | element at (11.26, 71.86, 8.882e-15) | -0.020296 | -0.022926 | +0.023489 | -12.96% | 21.51% | 0.9838 | CHECK |
| web ply 1 (-45 deg) bottom | s2 (S22) | element at (997.7, -71.86, 0) | +0.0024897 | +0.0026746 | -0.0028288 | +7.43% | 20.99% | 1.0406 | CHECK |
| web ply 1 (-45 deg) bottom | t12 (S12) | element at (2.252, 71.86, 8.882e-15) | +0.0022027 | +0.0023744 | +0.0023744 | +7.80% | 5.03% | 0.9985 | CHECK |
| web ply 1 (-45 deg) top | s1 (S11) | element at (11.26, 71.86, 8.882e-15) | -0.012371 | -0.013191 | +0.017241 | -6.63% | 27.57% | 0.9928 | CHECK |
| web ply 1 (-45 deg) top | s2 (S22) | element at (997.7, -71.86, 0) | +0.0021118 | +0.002256 | -0.0023626 | +6.83% | 21.61% | 1.0397 | CHECK |
| web ply 1 (-45 deg) top | t12 (S12) | element at (2.252, 71.86, 8.882e-15) | +0.0018566 | +0.002034 | +0.002034 | +9.56% | 4.90% | 0.9982 | CHECK |
| web ply 2 (0 deg) bottom | s1 (S11) | element at (2.252, 71.86, 8.882e-15) | +0.060067 | +0.061472 | +0.061472 | +2.34% | 2.25% | 0.9996 | PASS |
| web ply 2 (0 deg) bottom | s2 (S22) | element at (984.2, 71.86, 8.882e-15) | +0.0010058 | +0.0012194 | -0.0014427 | +21.23% | 16.57% | 0.9992 | CHECK |
| web ply 2 (0 deg) bottom | t12 (S12) | element at (2.252, -71.86, 0) | -0.0010592 | -0.0016704 | -0.0016704 | -57.71% | 32.57% | 1.0882 | CHECK |
| web ply 2 (0 deg) top | s1 (S11) | element at (2.252, 71.86, 8.882e-15) | +0.047204 | +0.047832 | +0.047832 | +1.33% | 1.98% | 0.9991 | PASS |
| web ply 2 (0 deg) top | s2 (S22) | element at (6.757, 71.86, 8.882e-15) | -0.00075584 | -0.0012413 | -0.0012413 | -64.23% | 16.30% | 0.9980 | CHECK |
| web ply 2 (0 deg) top | t12 (S12) | element at (2.252, -71.86, 0) | -0.0010484 | -0.0016326 | -0.0016326 | -55.72% | 39.63% | 1.1270 | CHECK |
| web ply 3 (0 deg) bottom | s1 (S11) | element at (2.252, 71.86, 8.882e-15) | +0.047204 | +0.047832 | +0.047832 | +1.33% | 1.98% | 0.9991 | PASS |
| web ply 3 (0 deg) bottom | s2 (S22) | element at (6.757, 71.86, 8.882e-15) | -0.00075584 | -0.0012413 | -0.0012413 | -64.23% | 16.30% | 0.9980 | CHECK |
| web ply 3 (0 deg) bottom | t12 (S12) | element at (2.252, -71.86, 0) | -0.0010484 | -0.0016326 | -0.0016326 | -55.72% | 39.63% | 1.1270 | CHECK |
| web ply 3 (0 deg) top | s1 (S11) | element at (2.252, 71.86, 8.882e-15) | +0.03434 | +0.034192 | +0.034192 | -0.43% | 1.79% | 0.9988 | PASS |
| web ply 3 (0 deg) top | s2 (S22) | element at (6.757, 71.86, 8.882e-15) | -0.00055499 | -0.00104 | -0.00104 | -87.38% | 16.12% | 0.9971 | CHECK |
| web ply 3 (0 deg) top | t12 (S12) | element at (2.252, -71.86, 0) | -0.0010377 | -0.0015949 | -0.0015949 | -53.69% | 48.70% | 1.1880 | CHECK |
| web ply 4 (-45 deg) bottom | s1 (S11) | element at (997.7, 71.86, 8.882e-15) | +0.019934 | +0.025376 | +0.025376 | +27.30% | 33.04% | 1.0475 | CHECK |
| web ply 4 (-45 deg) bottom | s2 (S22) | element at (997.7, -71.86, 0) | +0.001356 | +0.0014188 | -0.0014302 | +4.63% | 22.90% | 1.0325 | CHECK |
| web ply 4 (-45 deg) bottom | t12 (S12) | element at (2.252, 71.86, 8.882e-15) | +0.0011644 | +0.0013532 | +0.0014652 | +16.21% | 4.75% | 0.9978 | CHECK |
| web ply 4 (-45 deg) top | s1 (S11) | element at (997.7, 71.86, 8.882e-15) | +0.025655 | +0.031448 | +0.031448 | +22.58% | 30.74% | 1.0587 | CHECK |
| web ply 4 (-45 deg) top | s2 (S22) | element at (2.252, 71.86, 8.882e-15) | +0.00097814 | +0.0010002 | +0.0010002 | +2.26% | 23.17% | 1.0234 | CHECK |
| web ply 4 (-45 deg) top | t12 (S12) | element at (497.7, -76.36, 0) | +0.001098 | +0.0010927 | +0.0013639 | -0.48% | 4.73% | 0.9978 | PASS |
| web ply 5 (45 deg) bottom | s1 (S11) | element at (2.252, 71.86, 8.882e-15) | +0.025655 | +0.031448 | +0.031448 | +22.58% | 30.73% | 1.0587 | CHECK |
| web ply 5 (45 deg) bottom | s2 (S22) | element at (997.7, 71.86, 8.882e-15) | +0.00097813 | +0.0010002 | +0.0010002 | +2.26% | 23.17% | 1.0234 | CHECK |
| web ply 5 (45 deg) bottom | t12 (S12) | element at (497.7, -76.36, 0) | -0.001098 | -0.0010927 | -0.0013639 | +0.48% | 4.73% | 0.9978 | PASS |
| web ply 5 (45 deg) top | s1 (S11) | element at (2.252, 71.86, 8.882e-15) | +0.019934 | +0.025376 | +0.025376 | +27.30% | 33.03% | 1.0475 | CHECK |
| web ply 5 (45 deg) top | s2 (S22) | element at (997.7, 71.86, 8.882e-15) | +0.001356 | +0.0014188 | -0.0014302 | +4.63% | 22.90% | 1.0325 | CHECK |
| web ply 5 (45 deg) top | t12 (S12) | element at (997.7, 71.86, 8.882e-15) | -0.0011644 | -0.0013532 | -0.0014652 | -16.21% | 4.75% | 0.9978 | CHECK |
| web ply 6 (0 deg) bottom | s1 (S11) | element at (997.7, 71.86, 8.882e-15) | +0.03434 | +0.034192 | +0.034192 | -0.43% | 1.79% | 0.9988 | PASS |
| web ply 6 (0 deg) bottom | s2 (S22) | element at (993.2, 71.86, 8.882e-15) | -0.00055499 | -0.00104 | -0.00104 | -87.38% | 16.12% | 0.9971 | CHECK |
| web ply 6 (0 deg) bottom | t12 (S12) | element at (997.7, -71.86, 0) | +0.0010377 | +0.0015949 | +0.0015949 | +53.69% | 48.70% | 1.1879 | CHECK |
| web ply 6 (0 deg) top | s1 (S11) | element at (997.7, 71.86, 8.882e-15) | +0.047204 | +0.047832 | +0.047832 | +1.33% | 1.98% | 0.9991 | PASS |
| web ply 6 (0 deg) top | s2 (S22) | element at (993.2, 71.86, 8.882e-15) | -0.00075584 | -0.0012413 | -0.0012413 | -64.23% | 16.30% | 0.9980 | CHECK |
| web ply 6 (0 deg) top | t12 (S12) | element at (997.7, -71.86, 0) | +0.0010484 | +0.0016326 | +0.0016326 | +55.72% | 39.63% | 1.1270 | CHECK |
| web ply 7 (0 deg) bottom | s1 (S11) | element at (997.7, 71.86, 8.882e-15) | +0.047204 | +0.047832 | +0.047832 | +1.33% | 1.98% | 0.9991 | PASS |
| web ply 7 (0 deg) bottom | s2 (S22) | element at (993.2, 71.86, 8.882e-15) | -0.00075584 | -0.0012413 | -0.0012413 | -64.23% | 16.30% | 0.9980 | CHECK |
| web ply 7 (0 deg) bottom | t12 (S12) | element at (997.7, -71.86, 0) | +0.0010484 | +0.0016326 | +0.0016326 | +55.72% | 39.63% | 1.1270 | CHECK |
| web ply 7 (0 deg) top | s1 (S11) | element at (997.7, 71.86, 8.882e-15) | +0.060067 | +0.061472 | +0.061472 | +2.34% | 2.25% | 0.9996 | PASS |
| web ply 7 (0 deg) top | s2 (S22) | element at (15.77, 71.86, 8.882e-15) | +0.0010058 | +0.0012194 | -0.0014427 | +21.23% | 16.57% | 0.9992 | CHECK |
| web ply 7 (0 deg) top | t12 (S12) | element at (997.7, -71.86, 0) | +0.0010591 | +0.0016704 | +0.0016704 | +57.71% | 32.57% | 1.0882 | CHECK |
| web ply 8 (45 deg) bottom | s1 (S11) | element at (11.26, -71.86, 0) | -0.012371 | -0.013191 | +0.017241 | -6.63% | 27.57% | 0.9928 | CHECK |
| web ply 8 (45 deg) bottom | s2 (S22) | element at (997.7, 71.86, 8.882e-15) | +0.0021118 | +0.002256 | -0.0023626 | +6.83% | 21.61% | 1.0397 | CHECK |
| web ply 8 (45 deg) bottom | t12 (S12) | element at (997.7, 71.86, 8.882e-15) | -0.0018566 | -0.002034 | -0.002034 | -9.56% | 4.90% | 0.9982 | CHECK |
| web ply 8 (45 deg) top | s1 (S11) | element at (11.26, -71.86, 0) | -0.020296 | -0.022926 | +0.023489 | -12.96% | 21.51% | 0.9838 | CHECK |
| web ply 8 (45 deg) top | s2 (S22) | element at (997.7, 71.86, 8.882e-15) | +0.0024897 | +0.0026746 | -0.0028288 | +7.43% | 20.99% | 1.0406 | CHECK |
| web ply 8 (45 deg) top | t12 (S12) | element at (997.7, 71.86, 8.882e-15) | -0.0022027 | -0.0023744 | -0.0023744 | -7.80% | 5.03% | 0.9985 | CHECK |
| section force (N/mm) | N11 (SF1) | element at (997.7, -62.89, -2.355) | -0.004264 | -0.0049302 | -0.0049302 | -15.62% | 8.56% | 1.0014 | CHECK |
| section force (N/mm) | N22 (SF2) | element at (2.252, 51.61, 34.82) | -0.003181 | -0.0018491 | -0.0019954 | +41.87% | 48.56% | 0.6589 | CHECK |
| section force (N/mm) | N12 (SF3) | element at (2.252, -51.61, -34.82) | -0.0054454 | -0.004609 | -0.0050363 | +15.36% | 1.54% | 1.0008 | CHECK |
| section moment (N mm/mm) | M11 (SM1) | element at (997.7, 76.36, 0) | +0.00031601 | +0.00032983 | +0.00032983 | +4.37% | 38.93% | 1.0872 | CHECK |
| section moment (N mm/mm) | M22 (SM2) | element at (6.757, 62.89, 2.355) | -6.2528e-05 | -8.0348e-05 | -8.0348e-05 | -28.50% | 36.57% | 1.0494 | CHECK |
| section moment (N mm/mm) | M12 (SM3) | element at (6.757, 62.89, 2.355) | -5.5598e-05 | -7.0696e-05 | -7.0696e-05 | -27.16% | 34.71% | 1.0444 | CHECK |

**44/103 PASS, 59 CHECK.**

Pictures: `it007_L006_Y025_C008_torsion_along_x.png`, `it007_L006_Y025_C008_torsion_deformed.png`, `it007_L006_Y025_C008_torsion_fields.png`, `it007_L006_Y025_C008_torsion_parity.png`
