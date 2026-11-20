# it006_L011_Y026_C008_torsion: OpenSeesPy vs Abaqus results

- OpenSees results: `results\it006_L011_Y026_C008_torsion.npz`
- Abaqus results: `it006_L011_Y026_C008_torsion_S4R_4p5mm_odb.npz` (ODB `it006_L011_Y026_C008_torsion_S4R_4p5mm.odb`, step Load, Abaqus Abaqus/Standard 2026, 2 frames)
- 23192 OpenSees shell nodes, 23192 Abaqus nodes; 23088 OpenSees facets, 23088 Abaqus shell elements
- Abaqus axes used as global (x, y, z) = Abaqus columns [0, 1, 2]; node pairing max distance 3.05e-05 mm, element centroids 2.43e-05 mm (element size 4.5 mm): **same mesh**
- laminates: flange: 22200 facets, [60/0/0/60]; web: 888 facets, [-60/0/0/-60/60/0/0/60]
- section points: 24 Abaqus stress section points paired with plies (layer, position): 1b, 1m, 1t, 2b, 2m, 2t, 3b, 3m, 3t, 4b, 4m, 4t, 5b, 5m, 5t, 6b, 6m, 6t, 7b, 7m, 7t, 8b, 8m, 8t

Peak = largest |OpenSees value|; Abaqus at the same point; diff = (Abaqus - OpenSees) / |peak|; rel. RMS = ||Abaqus - OpenSees|| / ||OpenSees|| over all points; scale = least-squares Abaqus/OpenSees. PASS: |diff| <= 3% and rel. RMS <= 9% (~0: OpenSees peak < 0.1% of the group, max |diff| <= 3% of the group).

| quantity | component | where (OpenSees peak) | OpenSees | Abaqus same point | Abaqus peak | diff | rel. RMS | scale | verdict |
|---|---|---|---|---|---|---|---|---|---|
| displacement | ux | node at (882.9, -60.91, -3.737) | +5.5984e-05 | +5.6059e-05 | +5.6102e-05 | +0.13% | 1.40% | 0.9998 | PASS |
| displacement | uy | node at (1000, -5.329e-15, -65.28) | +0.0042072 | +0.0042223 | -0.0042223 | +0.36% | 0.35% | 1.0032 | PASS |
| displacement | uz | node at (1000, 78.61, 0) | +0.005066 | +0.0050842 | -0.0050842 | +0.36% | 0.34% | 1.0030 | PASS |
| rotation | rx | node at (991, -53.3, -33.4) | +7.3512e-05 | +7.5296e-05 | +8.0713e-05 | +2.43% | 1.78% | 1.0033 | PASS |
| rotation | ry | node at (986.5, -78.61, 0) | +1.6672e-05 | +1.791e-05 | +2.0606e-05 | +7.43% | 44.84% | 1.1794 | CHECK |
| rotation | rz | node at (4.505, -59.42, 26.5) | -1.1062e-05 | -1.2541e-05 | -1.9623e-05 | -13.37% | 50.59% | 1.0409 | CHECK |
| displacement | |u| | node at (1000, 78.61, 0) | +0.0050662 | +0.0050844 | +0.0050844 | +0.36% | 0.32% | 1.0031 | PASS |
| rigid end x0 | ux | reference point (1.6e-30 from the OpenSees node) | +0 | +0 | +0 |  | 0.00% |  | PASS (~0) |
| rigid end x0 | uy | reference point (1.6e-30 from the OpenSees node) | +0 | +0 | +0 |  | 0.00% |  | PASS (~0) |
| rigid end x0 | uz | reference point (1.6e-30 from the OpenSees node) | +0 | -0 | -0 |  | 0.00% |  | PASS (~0) |
| rigid end x0 | rx | reference point (1.6e-30 from the OpenSees node) | +0 | +1e-34 | +1e-34 |  | 10000000467011018967515459750118451621360651973256352270136120687585172453138652246085709730672087734789980591301762832316076019816481199717762949320963416953653172125828272414476078889423036750809797674169530317443023862839188371278795847282114719822143550619985641472.00% |  | PASS (~0) |
| rigid end x0 | ry | reference point (1.6e-30 from the OpenSees node) | +0 | +2.8026e-45 | +2.8026e-45 |  | 280259692864963382223612869571132214930734285357080431368664057218362422324412106913029227961026376391452327843805161874781599024956249874055985922101917277665896734018293479476130036873977193349189727617070255419291169019379050881867909675293488330852794368.00% |  | PASS (~0) |
| rigid end x0 | rz | reference point (1.6e-30 from the OpenSees node) | +0 | -0 | -0 |  | 0.00% |  | PASS (~0) |
| rigid end xL | ux | reference point (1.4e-12 from the OpenSees node) | +4.5547e-05 | +4.535e-05 | +4.535e-05 | -0.43% | 0.43% | 0.9957 | PASS |
| rigid end xL | uy | reference point (1.4e-12 from the OpenSees node) | +1.7214e-11 | -4.677e-13 | -4.677e-13 |  | 102.72% | -0.0272 | PASS (~0) |
| rigid end xL | uz | reference point (1.4e-12 from the OpenSees node) | +5.1215e-12 | -3.3028e-12 | -3.3028e-12 |  | 164.49% | -0.6449 | PASS (~0) |
| rigid end xL | rx | reference point (1.4e-12 from the OpenSees node) | +6.4447e-05 | +6.4679e-05 | +6.4679e-05 | +0.36% | 0.36% | 1.0036 | PASS |
| rigid end xL | ry | reference point (1.4e-12 from the OpenSees node) | +5.348e-15 | +8.4318e-17 | +8.4318e-17 |  | 98.42% | 0.0158 | PASS (~0) |
| rigid end xL | rz | reference point (1.4e-12 from the OpenSees node) | +4.4587e-15 | -9.3437e-16 | -9.3437e-16 |  | 120.96% | -0.2096 | PASS (~0) |
| membrane strain | exx (SE1) | element at (2.252, 62.89, 2.355) | +5.2204e-07 | +5.2393e-07 | +5.2393e-07 | +0.36% | 7.49% | 1.0051 | PASS |
| membrane strain | eyy (SE2) | element at (11.26, 58.23, -28.53) | +1.7928e-06 | +1.6194e-06 | +2.2205e-06 | -9.67% | 2.79% | 1.0037 | CHECK |
| membrane strain | gxy (SE3) | element at (11.26, 49.1, 38.28) | -3.8928e-06 | -3.8669e-06 | -4.418e-06 | +0.66% | 1.73% | 1.0031 | PASS |
| curvature | kxx (SK2) | element at (6.757, -22.03, 61.06) | +3.7089e-06 | +5.9842e-06 | +5.9842e-06 | +61.34% | 80.35% | 1.4602 | CHECK |
| curvature | kyy (SK1) | element at (11.26, 62.89, 2.355) | -2.5847e-06 | -2.808e-06 | -3.3275e-06 | -8.64% | 29.72% | 1.0366 | CHECK |
| curvature | kxy (SK3) | element at (2.252, -47.68, -42.28) | +2.7641e-06 | +3.6793e-06 | +3.6793e-06 | +33.11% | 82.18% | 1.0286 | CHECK |
| flange ply 1 (60 deg) bottom | s1 (S11) | element at (2.252, -55.17, 31.98) | -0.12142 | -0.10595 | -0.11 | +12.74% | 5.49% | 0.9984 | CHECK |
| flange ply 1 (60 deg) bottom | s2 (S22) | element at (6.757, 62.89, 2.355) | +0.021729 | +0.025812 | +0.025812 | +18.79% | 2.13% | 1.0037 | CHECK |
| flange ply 1 (60 deg) bottom | t12 (S12) | element at (6.757, 58.23, -28.53) | +0.019922 | +0.024684 | +0.024684 | +23.91% | 2.44% | 1.0038 | CHECK |
| flange ply 1 (60 deg) top | s1 (S11) | element at (2.252, -55.17, 31.98) | -0.11376 | -0.092816 | -0.095672 | +18.41% | 4.61% | 0.9968 | CHECK |
| flange ply 1 (60 deg) top | s2 (S22) | element at (6.757, 62.89, 2.355) | +0.020834 | +0.024297 | +0.024297 | +16.63% | 2.00% | 1.0035 | CHECK |
| flange ply 1 (60 deg) top | t12 (S12) | element at (6.757, 58.23, -28.53) | +0.019447 | +0.023564 | +0.023564 | +21.17% | 2.33% | 1.0036 | CHECK |
| flange ply 2 (0 deg) bottom | s1 (S11) | element at (6.757, 62.89, 2.355) | +0.092682 | +0.11202 | +0.11202 | +20.86% | 14.10% | 1.0158 | CHECK |
| flange ply 2 (0 deg) bottom | s2 (S22) | element at (15.77, 49.1, 38.28) | +0.016955 | +0.016857 | +0.020098 | -0.58% | 2.70% | 1.0037 | PASS |
| flange ply 2 (0 deg) bottom | t12 (S12) | element at (6.757, 58.23, -28.53) | -0.02092 | -0.024071 | -0.024071 | -15.06% | 1.72% | 1.0034 | CHECK |
| flange ply 2 (0 deg) top | s1 (S11) | element at (2.252, 62.89, 2.355) | +0.092362 | +0.093424 | +0.093424 | +1.15% | 5.15% | 1.0041 | PASS |
| flange ply 2 (0 deg) top | s2 (S22) | element at (11.26, 49.1, 38.28) | +0.016588 | +0.0165 | +0.020495 | -0.53% | 2.71% | 1.0037 | PASS |
| flange ply 2 (0 deg) top | t12 (S12) | element at (11.26, 49.1, 38.28) | -0.020943 | -0.020804 | -0.023769 | +0.66% | 1.73% | 1.0031 | PASS |
| flange ply 3 (0 deg) bottom | s1 (S11) | element at (2.252, 62.89, 2.355) | +0.092362 | +0.093424 | +0.093424 | +1.15% | 5.15% | 1.0041 | PASS |
| flange ply 3 (0 deg) bottom | s2 (S22) | element at (11.26, 49.1, 38.28) | +0.016588 | +0.0165 | +0.020495 | -0.53% | 2.71% | 1.0037 | PASS |
| flange ply 3 (0 deg) bottom | t12 (S12) | element at (11.26, 49.1, 38.28) | -0.020943 | -0.020804 | -0.023769 | +0.66% | 1.73% | 1.0031 | PASS |
| flange ply 3 (0 deg) top | s1 (S11) | element at (2.252, 62.89, 2.355) | +0.096524 | +0.10058 | +0.10058 | +4.20% | 12.75% | 1.0142 | CHECK |
| flange ply 3 (0 deg) top | s2 (S22) | element at (993.2, 45.85, -45.86) | +0.017394 | +0.02076 | +0.021083 | +19.35% | 2.79% | 1.0037 | CHECK |
| flange ply 3 (0 deg) top | t12 (S12) | element at (11.26, 49.1, 38.28) | -0.021007 | -0.021141 | -0.023467 | -0.64% | 1.76% | 1.0029 | PASS |
| flange ply 4 (60 deg) bottom | s1 (S11) | element at (2.252, -51.61, -34.82) | -0.11676 | -0.094436 | -0.099466 | +19.12% | 4.47% | 0.9944 | CHECK |
| flange ply 4 (60 deg) bottom | s2 (S22) | element at (11.26, -59.63, -5.789) | +0.021059 | +0.021073 | +0.023333 | +0.07% | 2.19% | 1.0033 | PASS |
| flange ply 4 (60 deg) bottom | t12 (S12) | element at (11.26, 58.23, -28.53) | +0.019361 | +0.018278 | +0.023114 | -5.59% | 2.25% | 1.0033 | CHECK |
| flange ply 4 (60 deg) top | s1 (S11) | element at (2.252, 58.23, -14.96) | -0.12323 | -0.11531 | -0.11531 | +6.43% | 5.23% | 0.9936 | CHECK |
| flange ply 4 (60 deg) top | s2 (S22) | element at (11.26, -59.63, -5.789) | +0.021639 | +0.022255 | +0.024788 | +2.84% | 2.48% | 1.0032 | PASS |
| flange ply 4 (60 deg) top | t12 (S12) | element at (11.26, 58.23, -28.53) | +0.019896 | +0.019144 | +0.024001 | -3.78% | 2.28% | 1.0032 | CHECK |
| web ply 1 (-60 deg) bottom | s1 (S11) | element at (11.26, 71.86, 8.882e-15) | -0.022373 | -0.027219 | -0.027219 | -21.66% | 34.76% | 1.0304 | CHECK |
| web ply 1 (-60 deg) bottom | s2 (S22) | element at (997.7, 76.36, 0) | -0.0032169 | -0.0027132 | -0.0038683 | +15.66% | 18.78% | 1.0476 | CHECK |
| web ply 1 (-60 deg) bottom | t12 (S12) | element at (2.252, 71.86, 8.882e-15) | +0.0014448 | +0.0012056 | -0.0017371 | -16.56% | 28.38% | 1.0085 | CHECK |
| web ply 1 (-60 deg) top | s1 (S11) | element at (11.26, 71.86, 8.882e-15) | -0.014512 | -0.016745 | -0.018929 | -15.39% | 58.40% | 1.0535 | CHECK |
| web ply 1 (-60 deg) top | s2 (S22) | element at (997.7, -71.86, 0) | +0.0026125 | +0.0030944 | -0.0031459 | +18.44% | 18.53% | 1.0412 | CHECK |
| web ply 1 (-60 deg) top | t12 (S12) | element at (2.252, 71.86, 8.882e-15) | +0.0010341 | +0.00078047 | -0.0014205 | -24.53% | 27.56% | 1.0045 | CHECK |
| web ply 2 (0 deg) bottom | s1 (S11) | element at (2.252, 71.86, 8.882e-15) | +0.050657 | +0.053695 | +0.053695 | +6.00% | 6.73% | 1.0086 | CHECK |
| web ply 2 (0 deg) bottom | s2 (S22) | element at (988.7, 71.86, 8.882e-15) | +0.0011301 | +0.0016926 | +0.0016926 | +49.77% | 46.33% | 1.0981 | CHECK |
| web ply 2 (0 deg) bottom | t12 (S12) | element at (988.7, 71.86, 8.882e-15) | +0.0012195 | +0.0016218 | -0.0021945 | +32.99% | 45.27% | 1.1011 | CHECK |
| web ply 2 (0 deg) top | s1 (S11) | element at (2.252, 71.86, 8.882e-15) | +0.036524 | +0.038392 | +0.038392 | +5.11% | 5.61% | 1.0020 | CHECK |
| web ply 2 (0 deg) top | s2 (S22) | element at (988.7, 71.86, 8.882e-15) | +0.00091294 | +0.0014023 | +0.0014023 | +53.60% | 50.88% | 1.1036 | CHECK |
| web ply 2 (0 deg) top | t12 (S12) | element at (2.252, -71.86, 0) | -0.0011519 | -0.002141 | -0.002141 | -85.87% | 56.32% | 1.1359 | CHECK |
| web ply 3 (0 deg) bottom | s1 (S11) | element at (2.252, 71.86, 8.882e-15) | +0.036524 | +0.038392 | +0.038392 | +5.11% | 5.61% | 1.0020 | CHECK |
| web ply 3 (0 deg) bottom | s2 (S22) | element at (988.7, 71.86, 8.882e-15) | +0.00091294 | +0.0014023 | +0.0014023 | +53.60% | 50.88% | 1.1036 | CHECK |
| web ply 3 (0 deg) bottom | t12 (S12) | element at (2.252, -71.86, 0) | -0.0011519 | -0.002141 | -0.002141 | -85.87% | 56.32% | 1.1359 | CHECK |
| web ply 3 (0 deg) top | s1 (S11) | element at (2.252, 71.86, 8.882e-15) | +0.022391 | +0.02309 | +0.02309 | +3.12% | 4.59% | 0.9970 | CHECK |
| web ply 3 (0 deg) top | s2 (S22) | element at (988.7, 71.86, 8.882e-15) | +0.00069576 | +0.001112 | +0.001112 | +59.82% | 56.25% | 1.1108 | CHECK |
| web ply 3 (0 deg) top | t12 (S12) | element at (2.252, -71.86, 0) | -0.0011374 | -0.0020876 | -0.0020876 | -83.54% | 71.58% | 1.1963 | CHECK |
| web ply 4 (-60 deg) bottom | s1 (S11) | element at (2.252, 71.86, 8.882e-15) | -0.013756 | -0.029196 | -0.029196 | -112.25% | 99.17% | 1.2655 | CHECK |
| web ply 4 (-60 deg) bottom | s2 (S22) | element at (2.252, 71.86, 8.882e-15) | +0.0014092 | +0.0017583 | +0.0017583 | +24.77% | 17.24% | 1.0201 | CHECK |
| web ply 4 (-60 deg) bottom | t12 (S12) | element at (2.252, -71.86, 0) | +0.0005289 | +0.0011676 | +0.0011676 | +120.76% | 23.66% | 1.0034 | CHECK |
| web ply 4 (-60 deg) top | s1 (S11) | element at (2.252, 71.86, 8.882e-15) | -0.017051 | -0.03433 | -0.03433 | -101.34% | 70.89% | 1.1798 | CHECK |
| web ply 4 (-60 deg) top | s2 (S22) | element at (2.252, 71.86, 8.882e-15) | +0.00080757 | +0.0010902 | +0.0010902 | +35.00% | 15.94% | 1.0062 | CHECK |
| web ply 4 (-60 deg) top | t12 (S12) | element at (997.7, 71.86, 8.882e-15) | +0.000925 | +0.0015393 | +0.0015393 | +66.41% | 20.80% | 1.0073 | CHECK |
| web ply 5 (60 deg) bottom | s1 (S11) | element at (2.252, -71.86, 0) | -0.017052 | -0.03433 | -0.03433 | -101.33% | 70.89% | 1.1798 | CHECK |
| web ply 5 (60 deg) bottom | s2 (S22) | element at (997.7, 71.86, 8.882e-15) | +0.00080757 | +0.0010902 | +0.0010902 | +35.00% | 15.94% | 1.0062 | CHECK |
| web ply 5 (60 deg) bottom | t12 (S12) | element at (2.252, 71.86, 8.882e-15) | -0.000925 | -0.0015393 | -0.0015393 | -66.41% | 20.80% | 1.0073 | CHECK |
| web ply 5 (60 deg) top | s1 (S11) | element at (2.252, -71.86, 0) | -0.013756 | -0.029196 | -0.029196 | -112.24% | 99.17% | 1.2655 | CHECK |
| web ply 5 (60 deg) top | s2 (S22) | element at (997.7, 71.86, 8.882e-15) | +0.0014092 | +0.0017583 | +0.0017583 | +24.77% | 17.24% | 1.0201 | CHECK |
| web ply 5 (60 deg) top | t12 (S12) | element at (997.7, -71.86, 0) | -0.0005289 | -0.0011676 | -0.0011676 | -120.76% | 23.66% | 1.0034 | CHECK |
| web ply 6 (0 deg) bottom | s1 (S11) | element at (997.7, 71.86, 8.882e-15) | +0.022391 | +0.02309 | +0.02309 | +3.12% | 4.59% | 0.9970 | CHECK |
| web ply 6 (0 deg) bottom | s2 (S22) | element at (11.26, 71.86, 8.882e-15) | +0.00069576 | +0.001112 | +0.001112 | +59.82% | 56.25% | 1.1108 | CHECK |
| web ply 6 (0 deg) bottom | t12 (S12) | element at (2.252, 71.86, 8.882e-15) | +0.0011374 | +0.0020876 | +0.0020876 | +83.55% | 71.58% | 1.1963 | CHECK |
| web ply 6 (0 deg) top | s1 (S11) | element at (997.7, 71.86, 8.882e-15) | +0.036524 | +0.038392 | +0.038392 | +5.11% | 5.61% | 1.0020 | CHECK |
| web ply 6 (0 deg) top | s2 (S22) | element at (11.26, 71.86, 8.882e-15) | +0.00091294 | +0.0014023 | +0.0014023 | +53.60% | 50.88% | 1.1036 | CHECK |
| web ply 6 (0 deg) top | t12 (S12) | element at (2.252, 71.86, 8.882e-15) | +0.0011519 | +0.002141 | +0.002141 | +85.87% | 56.32% | 1.1358 | CHECK |
| web ply 7 (0 deg) bottom | s1 (S11) | element at (997.7, 71.86, 8.882e-15) | +0.036524 | +0.038392 | +0.038392 | +5.11% | 5.61% | 1.0020 | CHECK |
| web ply 7 (0 deg) bottom | s2 (S22) | element at (11.26, 71.86, 8.882e-15) | +0.00091294 | +0.0014023 | +0.0014023 | +53.60% | 50.88% | 1.1036 | CHECK |
| web ply 7 (0 deg) bottom | t12 (S12) | element at (2.252, 71.86, 8.882e-15) | +0.0011519 | +0.002141 | +0.002141 | +85.87% | 56.32% | 1.1358 | CHECK |
| web ply 7 (0 deg) top | s1 (S11) | element at (997.7, 71.86, 8.882e-15) | +0.050657 | +0.053695 | +0.053695 | +6.00% | 6.73% | 1.0086 | CHECK |
| web ply 7 (0 deg) top | s2 (S22) | element at (11.26, 71.86, 8.882e-15) | +0.0011301 | +0.0016926 | +0.0016926 | +49.77% | 46.33% | 1.0980 | CHECK |
| web ply 7 (0 deg) top | t12 (S12) | element at (988.7, -71.86, 0) | -0.0012195 | -0.0016218 | +0.0021945 | -32.99% | 45.27% | 1.1011 | CHECK |
| web ply 8 (60 deg) bottom | s1 (S11) | element at (11.26, -71.86, 0) | -0.014512 | -0.016745 | -0.018929 | -15.39% | 58.40% | 1.0535 | CHECK |
| web ply 8 (60 deg) bottom | s2 (S22) | element at (997.7, 71.86, 8.882e-15) | +0.0026125 | +0.0030944 | -0.0031459 | +18.44% | 18.53% | 1.0412 | CHECK |
| web ply 8 (60 deg) bottom | t12 (S12) | element at (997.7, 71.86, 8.882e-15) | -0.0010341 | -0.00078047 | +0.0014205 | +24.53% | 27.56% | 1.0045 | CHECK |
| web ply 8 (60 deg) top | s1 (S11) | element at (988.7, 71.86, 8.882e-15) | -0.022373 | -0.027219 | -0.027219 | -21.66% | 34.76% | 1.0304 | CHECK |
| web ply 8 (60 deg) top | s2 (S22) | element at (2.252, 76.36, 0) | -0.0032169 | -0.0027132 | -0.0038683 | +15.66% | 18.78% | 1.0476 | CHECK |
| web ply 8 (60 deg) top | t12 (S12) | element at (997.7, 71.86, 8.882e-15) | -0.0014448 | -0.0012056 | +0.0017371 | +16.56% | 28.38% | 1.0085 | CHECK |
| section force (N/mm) | N11 (SF1) | element at (2.252, 62.89, 2.355) | +0.0053588 | +0.0056651 | -0.005754 | +5.71% | 9.18% | 1.0146 | CHECK |
| section force (N/mm) | N22 (SF2) | element at (2.252, 51.61, 34.82) | -0.0044348 | -0.0024547 | -0.0026722 | +44.65% | 51.32% | 0.6320 | CHECK |
| section force (N/mm) | N12 (SF3) | element at (2.252, -51.61, -34.82) | -0.0052404 | -0.004604 | -0.0050131 | +12.14% | 1.31% | 1.0014 | CHECK |
| section moment (N mm/mm) | M11 (SM1) | element at (997.7, 76.36, 0) | +0.00031867 | +0.00033637 | +0.00033637 | +5.55% | 37.78% | 1.1142 | CHECK |
| section moment (N mm/mm) | M22 (SM2) | element at (6.757, 62.89, 2.355) | -8.0875e-05 | -9.8276e-05 | -9.8276e-05 | -21.52% | 30.79% | 1.0328 | CHECK |
| section moment (N mm/mm) | M12 (SM3) | element at (11.26, -71.86, 0) | -5.0377e-05 | -5.6722e-05 | -5.6722e-05 | -12.60% | 30.15% | 1.0281 | CHECK |

**29/103 PASS, 74 CHECK.**

Pictures: `it006_L011_Y026_C008_torsion_along_x.png`, `it006_L011_Y026_C008_torsion_deformed.png`, `it006_L011_Y026_C008_torsion_fields.png`, `it006_L011_Y026_C008_torsion_parity.png`

## Verifier's judgment (added 2026-11-19, from the two result files only)

**Verdict: agree.** Same mesh (23192 nodes / 23088 elements, pairing distance 3e-5 mm vs 4.5 mm elements,
axis order [0,1,2], both rigid-end reference points matched). Every displacement agrees within 0.4% (rel. RMS
<= 1.4%, scale 1.000-1.003); tip reference point rx +6.4447e-05 (OpenSees) vs +6.4679e-05 (Abaqus), +0.36%,
ux -0.43%: the torsional stiffness of the two models agrees within ~0.4%.

All 74 CHECK lines come from the two end zones (within ~50 mm of the rigid ends, x < 50 or x > 950), where the
rigid-end constraint excites a short, oscillating boundary layer of bending (see `_along_x.png`, kxx and s1;
`_fields.png`, difference maps non-zero only in two rings at the ends). S4R (reduced integration, hourglass
control) vs ASDShellQ4 resolve this layer differently at 4.5 mm: expected discretization difference, not an error.
No field has scale ~ -1, ~2 or ~0.5 globally; flange ply stresses have scale 0.994-1.016 everywhere.

Same pairing as the tool, elements restricted away from the ends
(scratch script `it006_L011_Y026_C008_torsion_interior_check.py`):

| field (50 < x < 950, 20800 elements) | OpenSees peak | Abaqus same point | diff | rel. RMS | scale |
|---|---|---|---|---|---|
| exx / eyy / gxy | +2.135e-07 / +1.735e-06 / -3.788e-06 | +2.189e-07 / +1.733e-06 / -3.775e-06 | +2.5 / -0.1 / +0.3% | 1.2 / 0.4 / 0.4% | 1.006 / 1.002 / 1.002 |
| kyy | -2.300e-06 | -2.278e-06 | +1.0% | 6.5% | 1.007 |
| N11 / N12 | +0.002116 / -0.004119 | +0.002191 / -0.004090 | +3.5 / +0.7% | 1.8 / 0.4% | 1.009 / 1.002 |
| M22 / M12 | -5.45e-05 / -2.82e-05 | -5.11e-05 / -2.62e-05 | +6.2 / +7.2% | 7.1 / 9.2% | 0.970 / 0.954 |
| flange ply s1 / s2 / t12 (all plies) | -0.06961 / +0.01946 / -0.02043 | -0.06797 / +0.01948 / -0.02036 | +2.4 / +0.1 / +0.3% | 0.7 / 0.4 / 0.4% | 1.002 |
| web ply s1 / s2 / t12 (all plies) | +0.00954 / +0.000435 / +0.000329 | +0.009418 / +0.000429 / +0.000325 | -1.3 / -1.3 / -1.2% | 1.2 / 2.2 / 2.9% | 0.99-1.00 |

Within 100 < x < 900 the flange ply stresses agree to 0.5% RMS and the web ply stresses to <= 2.6% RMS.
The interior fields that still differ in relative terms (kxx, kxy, N22) are near-zero there: kxx peak 3.8e-08
vs kyy 2.0e-06 (2% of the curvature group), N22 1.3e-05 vs N12 4.1e-03 N/mm (0.3%): numerical noise, not a
discrepancy.

Global peak values (all at the ends): flange ply 4 (60 deg) top s1 -0.1232 (OpenSees) vs -0.1153 MPa (Abaqus,
+6.4%), flange ply 1 bottom t12 +0.0199 vs +0.0247 (+24%), web ply 2 bottom s1 +0.0507 vs +0.0537 (+6%).
End-zone peaks differ by up to ~20% in the flanges and up to ~100% in the small web stresses (web peaks
<= 0.05 MPa vs 0.12 MPa flange). For a strength check the end-zone peaks are mesh-dependent in both codes;
a run of both at about half the element size (2.25 mm) near the ends would settle the peak values.

Note on `it006_L011_Y026_C008_torsion_S4R_4p5mm_results.txt`: its three stress CHECK lines compare Abaqus
section point 24 (which exists only on the 8-ply web elements, i.e. web ply 8 top, peak -0.0272 MPa) with the
OpenSees flange top ply (ply 4 top, peak -0.1232 MPa). That is a pairing mismatch in that quick check, not a
model difference; the per-element pairing above (flange ply 4 top: -0.1232 vs -0.1153; web ply 8 top: -0.0224
vs -0.0272) is the valid comparison.
