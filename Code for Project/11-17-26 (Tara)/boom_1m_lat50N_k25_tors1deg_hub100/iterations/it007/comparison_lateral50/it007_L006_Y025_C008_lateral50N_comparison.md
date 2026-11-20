# it007_L006_Y025_C008_lateral50N: OpenSeesPy vs Abaqus results

- OpenSees results: `Code for Project\11-17-26 (Tara)\boom_1m_lat50N_k25_tors1deg_hub100\iterations\it007\results\it007_L006_Y025_C008_lateral50N.npz`
- Abaqus results: `Code for Project\11-17-26 (Tara)\boom_1m_lat50N_k25_tors1deg_hub100\iterations\it007\it007_L006_Y025_C008_lateral50_S4R_4p5mm_odb.npz` (ODB `it007_L006_Y025_C008_lateral50_S4R_4p5mm.odb`, step Load, Abaqus Abaqus/Standard 2026, 2 frames)
- 23192 OpenSees shell nodes, 23192 Abaqus nodes; 23088 OpenSees facets, 23088 Abaqus shell elements
- Abaqus axes used as global (x, y, z) = Abaqus columns [0, 1, 2]; node pairing max distance 3.05e-05 mm, element centroids 2.43e-05 mm (element size 4.5 mm): **same mesh**
- laminates: flange: 22200 facets, [45/0/0/45]; web: 888 facets, [-45/0/0/-45/45/0/0/45]
- section points: 24 Abaqus stress section points paired with plies (layer, position): 1b, 1m, 1t, 2b, 2m, 2t, 3b, 3m, 3t, 4b, 4m, 4t, 5b, 5m, 5t, 6b, 6m, 6t, 7b, 7m, 7t, 8b, 8m, 8t

Peak = largest |OpenSees value|; Abaqus at the same point; diff = (Abaqus - OpenSees) / |peak|; rel. RMS = ||Abaqus - OpenSees|| / ||OpenSees|| over all points; scale = least-squares Abaqus/OpenSees. PASS: |diff| <= 3% and rel. RMS <= 9% (~0: OpenSees peak < 0.1% of the group, max |diff| <= 3% of the group).

| quantity | component | where (OpenSees peak) | OpenSees | Abaqus same point | Abaqus peak | diff | rel. RMS | scale | verdict |
|---|---|---|---|---|---|---|---|---|---|
| displacement | ux | node at (955, 78.61, 0) | -0.14829 | -0.14842 | +0.14842 | -0.08% | 0.09% | 1.0008 | PASS |
| displacement | uy | node at (1000, -5.329e-15, -65.28) | +1.4612 | +1.463 | +1.463 | +0.12% | 0.12% | 1.0012 | PASS |
| displacement | uz | node at (464, -41.23, 49.74) | -0.038445 | -0.038353 | -0.038353 | +0.24% | 0.55% | 0.9988 | PASS |
| rotation | rx | node at (54.05, -64.87, 0.9737) | +0.0017312 | +0.0016508 | -0.0021526 | -4.64% | 17.45% | 1.0005 | CHECK |
| rotation | ry | node at (9.009, -78.61, 0) | +0.0010797 | +0.00076757 | -0.001464 | -28.91% | 42.50% | 0.9654 | CHECK |
| rotation | rz | node at (995.5, -44.63, -47.49) | +0.0023693 | +0.0024395 | +0.0027566 | +2.96% | 3.06% | 1.0083 | PASS |
| displacement | |u| | node at (1000, 78.61, 0) | +1.4687 | +1.4705 | +1.4705 | +0.12% | 0.12% | 1.0012 | PASS |
| rigid end x0 | ux | reference point (1.6e-30 from the OpenSees node) | +0 | -1.2639e-35 | -1.2639e-35 |  | 1263859182690320260694256651512255359829894796286311835975262165556717385260979196038822050956893125767014614242129753400305500462742550235059385182741868174584459791811826078400304004500472059546650388877157408753456975028718652015514782819702746778458247160515264512.00% |  | PASS (~0) |
| rigid end x0 | uy | reference point (1.6e-30 from the OpenSees node) | +0 | +5.0301e-35 | +5.0301e-35 |  | 5030067174947635912385707457827262332759533482245953799710546738368703479387499296624894643571847196101624838948524013285668113198870553501854680905161274471760023581325336814580535200832200842336935878595032460804398576144056232521848517374983488263832541456781803520.00% |  | PASS (~0) |
| rigid end x0 | uz | reference point (1.6e-30 from the OpenSees node) | +0 | +8.697e-38 | +8.697e-38 |  | 8697020470543701620950677586629719012282710605586142835996513232287027724461660048601402402545408811422338197329540162919348676016253388015278392006662316867137350522657409423142698252637030889024277866423440403236421455533784440724900569560489266253512046576402432.00% |  | PASS (~0) |
| rigid end x0 | rx | reference point (1.6e-30 from the OpenSees node) | +0 | -6.0386e-36 | -6.0386e-36 |  | 603861937352985933290442045932736683392844463230063396102983290942428186148794999538619817172046899665754560086795855122344770548047923986096223985993376787042775490769447636383160483790525620917196522852897362930619578246070414615779844262430568527697316328496955392.00% |  | PASS (~0) |
| rigid end x0 | ry | reference point (1.6e-30 from the OpenSees node) | +0 | -6.3358e-36 | -6.3358e-36 |  | 633577608022307785303976329755284892276913169919313868026523896202352226803639550666323586853694508391263473018912560663961373408925187436770719652087869249269268896864428992847210004932549557526813843316319420246305557763988796085705830055425404854484940155919532032.00% |  | PASS (~0) |
| rigid end x0 | rz | reference point (1.6e-30 from the OpenSees node) | +0 | +4.9151e-32 | +4.9151e-32 |  | 4915087182253537753801730733171153668265838425121806174781434284499897285119974937054774433528802590637662727687509176629302450274685590345626842900968537940908216519094787424875992218259873306291121684105823558153410753847562025495326896272579932095319519320309577547776.00% |  | PASS (~0) |
| rigid end xL | ux | reference point (1.4e-12 from the OpenSees node) | -8.913e-12 | -2.5335e-11 | -2.5335e-11 |  | 184.25% | 2.8425 | PASS (~0) |
| rigid end xL | uy | reference point (1.4e-12 from the OpenSees node) | +1.4612 | +1.463 | +1.463 | +0.12% | 0.12% | 1.0012 | PASS |
| rigid end xL | uz | reference point (1.4e-12 from the OpenSees node) | +0.012663 | +0.012606 | +0.012606 | -0.45% | 0.45% | 0.9955 | PASS |
| rigid end xL | rx | reference point (1.4e-12 from the OpenSees node) | +8.5432e-12 | -2.5661e-13 | -2.5661e-13 |  | 103.00% | -0.0300 | PASS (~0) |
| rigid end xL | ry | reference point (1.4e-12 from the OpenSees node) | -0.00015932 | -0.00015919 | -0.00015919 |  | 0.09% | 0.9991 | PASS (~0) |
| rigid end xL | rz | reference point (1.4e-12 from the OpenSees node) | +0.0018814 | +0.0018829 | +0.0018829 | +0.08% | 0.08% | 1.0008 | PASS |
| membrane strain | exx (SE1) | element at (11.26, 76.36, 0) | -0.00029489 | -0.00029225 | +0.00029814 | +0.90% | 0.42% | 1.0009 | PASS |
| membrane strain | eyy (SE2) | element at (20.27, -76.36, 0) | -0.00022199 | -0.00022035 | -0.0002305 | +0.74% | 2.97% | 1.0034 | PASS |
| membrane strain | gxy (SE3) | element at (11.26, 31.58, 53.72) | +0.0002289 | +0.0002308 | +0.00023863 | +0.83% | 1.79% | 1.0022 | PASS |
| curvature | kxx (SK2) | element at (6.757, -42.93, 48.62) | -0.0002976 | -0.00045669 | -0.00045669 | -53.46% | 74.00% | 1.3744 | CHECK |
| curvature | kyy (SK1) | element at (11.26, -62.89, 2.355) | +0.00047129 | +0.000524 | +0.000524 | +11.18% | 24.39% | 1.0068 | CHECK |
| curvature | kxy (SK3) | element at (2.252, 39.25, -50.24) | +0.00027001 | +0.00034408 | -0.00034408 | +27.43% | 98.44% | 1.1446 | CHECK |
| flange ply 1 (45 deg) bottom | s1 (S11) | element at (2.252, 67.24, 0.4868) | -14.814 | -13.915 | +13.915 | +6.07% | 4.22% | 0.9985 | CHECK |
| flange ply 1 (45 deg) bottom | s2 (S22) | element at (2.252, -58.23, -28.53) | +1.6634 | +1.643 | -1.6459 | -1.22% | 2.26% | 1.0023 | PASS |
| flange ply 1 (45 deg) bottom | t12 (S12) | element at (6.757, 58.23, -28.53) | +1.5086 | +1.7678 | -1.7678 | +17.18% | 2.22% | 1.0024 | CHECK |
| flange ply 1 (45 deg) top | s1 (S11) | element at (2.252, 67.24, 0.4868) | -14.276 | -13.486 | +13.486 | +5.53% | 3.30% | 0.9982 | CHECK |
| flange ply 1 (45 deg) top | s2 (S22) | element at (2.252, -58.23, -28.53) | +1.6709 | +1.6538 | -1.6538 | -1.02% | 2.17% | 1.0022 | PASS |
| flange ply 1 (45 deg) top | t12 (S12) | element at (20.27, -67.24, 0.4868) | -1.5064 | -1.483 | -1.7126 | +1.55% | 2.08% | 1.0024 | PASS |
| flange ply 2 (0 deg) bottom | s1 (S11) | element at (11.26, 67.24, 0.4868) | -40.618 | -42.08 | -42.08 | -3.60% | 0.65% | 1.0009 | CHECK |
| flange ply 2 (0 deg) bottom | s2 (S22) | element at (15.77, -13.79, 60.82) | -1.0582 | -1.0487 | -1.2468 | +0.89% | 3.11% | 1.0034 | PASS |
| flange ply 2 (0 deg) bottom | t12 (S12) | element at (11.26, 31.58, 53.72) | +0.89197 | +0.88819 | +0.93937 | -0.42% | 1.78% | 1.0024 | PASS |
| flange ply 2 (0 deg) top | s1 (S11) | element at (15.77, -67.24, -0.4868) | +39.902 | +39.741 | -40.714 | -0.41% | 0.36% | 1.0008 | PASS |
| flange ply 2 (0 deg) top | s2 (S22) | element at (20.27, 18.01, -61.21) | +1.0124 | +1.0385 | -1.2854 | +2.57% | 3.12% | 1.0034 | PASS |
| flange ply 2 (0 deg) top | t12 (S12) | element at (11.26, 31.58, 53.72) | +0.89272 | +0.90013 | +0.93065 | +0.83% | 1.78% | 1.0022 | PASS |
| flange ply 3 (0 deg) bottom | s1 (S11) | element at (15.77, -67.24, -0.4868) | +39.902 | +39.741 | -40.714 | -0.41% | 0.36% | 1.0008 | PASS |
| flange ply 3 (0 deg) bottom | s2 (S22) | element at (20.27, 18.01, -61.21) | +1.0124 | +1.0385 | -1.2854 | +2.57% | 3.12% | 1.0034 | PASS |
| flange ply 3 (0 deg) bottom | t12 (S12) | element at (11.26, 31.58, 53.72) | +0.89272 | +0.90013 | +0.93065 | +0.83% | 1.78% | 1.0022 | PASS |
| flange ply 3 (0 deg) top | s1 (S11) | element at (6.757, -67.24, -0.4868) | +40.588 | +40.492 | +40.542 | -0.24% | 0.56% | 1.0009 | PASS |
| flange ply 3 (0 deg) top | s2 (S22) | element at (29.28, 22.03, -61.06) | +1.031 | +1.059 | -1.324 | +2.72% | 3.22% | 1.0034 | PASS |
| flange ply 3 (0 deg) top | t12 (S12) | element at (11.26, 31.58, 53.72) | +0.89346 | +0.91206 | +0.92194 | +2.08% | 1.83% | 1.0021 | PASS |
| flange ply 4 (45 deg) bottom | s1 (S11) | element at (2.252, 67.24, 0.4868) | -13.198 | -12.629 | +12.629 | +4.32% | 3.20% | 0.9979 | CHECK |
| flange ply 4 (45 deg) bottom | s2 (S22) | element at (2.252, -58.23, -28.53) | +1.686 | +1.6755 | -1.6755 | -0.63% | 2.33% | 1.0021 | PASS |
| flange ply 4 (45 deg) bottom | t12 (S12) | element at (11.26, 58.23, -28.53) | +1.5419 | +1.5197 | -1.6076 | -1.44% | 1.95% | 1.0023 | PASS |
| flange ply 4 (45 deg) top | s1 (S11) | element at (2.252, 67.24, 0.4868) | -12.66 | -12.2 | +12.2 | +3.63% | 4.07% | 0.9979 | CHECK |
| flange ply 4 (45 deg) top | s2 (S22) | element at (2.252, -58.23, -28.53) | +1.6936 | +1.6863 | -1.6863 | -0.43% | 2.55% | 1.0021 | PASS |
| flange ply 4 (45 deg) top | t12 (S12) | element at (11.26, 58.23, -28.53) | +1.5775 | +1.5531 | -1.6425 | -1.55% | 1.99% | 1.0023 | PASS |
| web ply 1 (-45 deg) bottom | s1 (S11) | element at (2.252, 76.36, 0) | -26.209 | -20.568 | -20.568 | +21.52% | 7.65% | 0.9741 | CHECK |
| web ply 1 (-45 deg) bottom | s2 (S22) | element at (2.252, -76.36, 0) | +1.1426 | +1.0101 | -1.1313 | -11.60% | 6.93% | 0.9953 | CHECK |
| web ply 1 (-45 deg) bottom | t12 (S12) | element at (15.77, -76.36, 0) | +2.0204 | +2.0229 | -2.1097 | +0.12% | 1.50% | 1.0013 | PASS |
| web ply 1 (-45 deg) top | s1 (S11) | element at (2.252, 76.36, 0) | -25.672 | -20.399 | -20.399 | +20.54% | 7.20% | 0.9773 | CHECK |
| web ply 1 (-45 deg) top | s2 (S22) | element at (2.252, -76.36, 0) | +1.1707 | +1.0144 | -1.0765 | -13.35% | 6.56% | 0.9937 | CHECK |
| web ply 1 (-45 deg) top | t12 (S12) | element at (15.77, -76.36, 0) | +2.0175 | +2.0253 | -2.0724 | +0.39% | 1.47% | 1.0013 | PASS |
| web ply 2 (0 deg) bottom | s1 (S11) | element at (2.252, 76.36, 0) | -48.055 | -49.619 | -49.619 | -3.26% | 0.64% | 1.0009 | CHECK |
| web ply 2 (0 deg) bottom | s2 (S22) | element at (15.77, 71.86, 8.882e-15) | +0.97954 | +0.94006 | +1.0907 | -4.03% | 4.58% | 1.0003 | CHECK |
| web ply 2 (0 deg) bottom | t12 (S12) | element at (2.252, 76.36, 0) | +0.4866 | +0.42261 | +0.42261 | -13.15% | 15.29% | 0.9566 | CHECK |
| web ply 2 (0 deg) top | s1 (S11) | element at (2.252, 76.36, 0) | -47.012 | -48.733 | -48.733 | -3.66% | 0.63% | 1.0009 | CHECK |
| web ply 2 (0 deg) top | s2 (S22) | element at (15.77, 71.86, 8.882e-15) | +0.93239 | +0.90479 | +1.026 | -2.96% | 4.45% | 1.0003 | PASS |
| web ply 2 (0 deg) top | t12 (S12) | element at (2.252, 76.36, 0) | +0.47661 | +0.41263 | +0.41263 | -13.42% | 14.68% | 0.9551 | CHECK |
| web ply 3 (0 deg) bottom | s1 (S11) | element at (2.252, 76.36, 0) | -47.012 | -48.733 | -48.733 | -3.66% | 0.63% | 1.0009 | CHECK |
| web ply 3 (0 deg) bottom | s2 (S22) | element at (15.77, 71.86, 8.882e-15) | +0.93239 | +0.90479 | +1.026 | -2.96% | 4.45% | 1.0003 | PASS |
| web ply 3 (0 deg) bottom | t12 (S12) | element at (2.252, 76.36, 0) | +0.47661 | +0.41263 | +0.41263 | -13.42% | 14.68% | 0.9551 | CHECK |
| web ply 3 (0 deg) top | s1 (S11) | element at (11.26, -76.36, 0) | +46.543 | +46.162 | -47.847 | -0.82% | 0.62% | 1.0009 | PASS |
| web ply 3 (0 deg) top | s2 (S22) | element at (29.28, 76.36, 0) | +0.90443 | +0.89131 | +0.96549 | -1.45% | 4.37% | 1.0003 | PASS |
| web ply 3 (0 deg) top | t12 (S12) | element at (2.252, 76.36, 0) | +0.46662 | +0.40265 | +0.40265 | -13.71% | 14.29% | 0.9542 | CHECK |
| web ply 4 (-45 deg) bottom | s1 (S11) | element at (2.252, 76.36, 0) | -24.599 | -20.06 | -20.06 | +18.45% | 6.69% | 0.9838 | CHECK |
| web ply 4 (-45 deg) bottom | s2 (S22) | element at (2.252, -76.36, 0) | +1.2269 | +1.023 | +1.023 | -16.62% | 6.05% | 0.9905 | CHECK |
| web ply 4 (-45 deg) bottom | t12 (S12) | element at (15.77, -76.36, 0) | +2.0117 | +2.0301 | -2.0511 | +0.91% | 1.44% | 1.0013 | PASS |
| web ply 4 (-45 deg) top | s1 (S11) | element at (2.252, 76.36, 0) | -24.062 | -19.891 | -19.891 | +17.34% | 6.65% | 0.9870 | CHECK |
| web ply 4 (-45 deg) top | s2 (S22) | element at (2.252, -76.36, 0) | +1.2551 | +1.0273 | +1.0273 | -18.14% | 5.96% | 0.9888 | CHECK |
| web ply 4 (-45 deg) top | t12 (S12) | element at (20.27, -76.36, 0) | +2.0094 | +2.0022 | +2.0426 | -0.36% | 1.44% | 1.0013 | PASS |
| web ply 5 (45 deg) bottom | s1 (S11) | element at (2.252, -76.36, 0) | +24.062 | +19.891 | +19.891 | -17.34% | 6.65% | 0.9870 | CHECK |
| web ply 5 (45 deg) bottom | s2 (S22) | element at (2.252, 76.36, 0) | -1.2551 | -1.0273 | -1.0273 | +18.14% | 5.96% | 0.9888 | CHECK |
| web ply 5 (45 deg) bottom | t12 (S12) | element at (20.27, -76.36, 0) | -2.0094 | -2.0022 | -2.0426 | +0.36% | 1.44% | 1.0013 | PASS |
| web ply 5 (45 deg) top | s1 (S11) | element at (2.252, -76.36, 0) | +24.599 | +20.06 | +20.06 | -18.45% | 6.69% | 0.9838 | CHECK |
| web ply 5 (45 deg) top | s2 (S22) | element at (2.252, 76.36, 0) | -1.2269 | -1.023 | -1.023 | +16.62% | 6.05% | 0.9905 | CHECK |
| web ply 5 (45 deg) top | t12 (S12) | element at (15.77, 76.36, 0) | +2.0117 | +2.0301 | -2.0511 | +0.91% | 1.44% | 1.0013 | PASS |
| web ply 6 (0 deg) bottom | s1 (S11) | element at (11.26, 76.36, 0) | -46.543 | -46.162 | +47.847 | +0.82% | 0.62% | 1.0009 | PASS |
| web ply 6 (0 deg) bottom | s2 (S22) | element at (29.28, -76.36, 0) | -0.90443 | -0.89131 | -0.96549 | +1.45% | 4.37% | 1.0003 | PASS |
| web ply 6 (0 deg) bottom | t12 (S12) | element at (2.252, -76.36, 0) | +0.46662 | +0.40265 | +0.40265 | -13.71% | 14.29% | 0.9542 | CHECK |
| web ply 6 (0 deg) top | s1 (S11) | element at (2.252, -76.36, 0) | +47.012 | +48.733 | +48.733 | +3.66% | 0.63% | 1.0009 | CHECK |
| web ply 6 (0 deg) top | s2 (S22) | element at (15.77, -71.86, 0) | -0.93239 | -0.90479 | -1.026 | +2.96% | 4.45% | 1.0003 | PASS |
| web ply 6 (0 deg) top | t12 (S12) | element at (2.252, -76.36, 0) | +0.47661 | +0.41263 | +0.41263 | -13.42% | 14.68% | 0.9551 | CHECK |
| web ply 7 (0 deg) bottom | s1 (S11) | element at (2.252, -76.36, 0) | +47.012 | +48.733 | +48.733 | +3.66% | 0.63% | 1.0009 | CHECK |
| web ply 7 (0 deg) bottom | s2 (S22) | element at (15.77, -71.86, 0) | -0.93239 | -0.90479 | -1.026 | +2.96% | 4.45% | 1.0003 | PASS |
| web ply 7 (0 deg) bottom | t12 (S12) | element at (2.252, -76.36, 0) | +0.47661 | +0.41263 | +0.41263 | -13.42% | 14.68% | 0.9551 | CHECK |
| web ply 7 (0 deg) top | s1 (S11) | element at (2.252, -76.36, 0) | +48.055 | +49.619 | +49.619 | +3.26% | 0.64% | 1.0009 | CHECK |
| web ply 7 (0 deg) top | s2 (S22) | element at (15.77, -71.86, 0) | -0.97954 | -0.94006 | -1.0907 | +4.03% | 4.58% | 1.0003 | CHECK |
| web ply 7 (0 deg) top | t12 (S12) | element at (2.252, -76.36, 0) | +0.4866 | +0.42261 | +0.42261 | -13.15% | 15.29% | 0.9566 | CHECK |
| web ply 8 (45 deg) bottom | s1 (S11) | element at (2.252, -76.36, 0) | +25.672 | +20.399 | +20.399 | -20.54% | 7.20% | 0.9773 | CHECK |
| web ply 8 (45 deg) bottom | s2 (S22) | element at (2.252, 76.36, 0) | -1.1707 | -1.0144 | +1.0765 | +13.35% | 6.56% | 0.9937 | CHECK |
| web ply 8 (45 deg) bottom | t12 (S12) | element at (15.77, 76.36, 0) | +2.0175 | +2.0253 | -2.0724 | +0.39% | 1.47% | 1.0013 | PASS |
| web ply 8 (45 deg) top | s1 (S11) | element at (2.252, -76.36, 0) | +26.209 | +20.568 | +20.568 | -21.52% | 7.65% | 0.9741 | CHECK |
| web ply 8 (45 deg) top | s2 (S22) | element at (2.252, 76.36, 0) | -1.1426 | -1.0101 | +1.1313 | +11.60% | 6.93% | 0.9953 | CHECK |
| web ply 8 (45 deg) top | t12 (S12) | element at (15.77, 76.36, 0) | +2.0204 | +2.0229 | -2.1097 | +0.12% | 1.50% | 1.0013 | PASS |
| section force (N/mm) | N11 (SF1) | element at (2.252, -76.36, 0) | +7.6389 | +7.7427 | +7.7427 | +1.36% | 0.40% | 1.0006 | PASS |
| section force (N/mm) | N22 (SF2) | element at (2.252, 76.36, 0) | -0.93257 | -0.63461 | +0.9722 | +31.95% | 36.78% | 0.7719 | CHECK |
| section force (N/mm) | N12 (SF3) | element at (2.252, 76.36, 0) | +0.76793 | +0.6185 | +0.6185 | -19.46% | 2.21% | 1.0003 | CHECK |
| section moment (N mm/mm) | M11 (SM1) | element at (2.252, -76.36, 0) | +0.072172 | +0.057033 | +0.057033 | -20.98% | 26.82% | 0.9328 | CHECK |
| section moment (N mm/mm) | M22 (SM2) | element at (2.252, 76.36, 0) | +0.047829 | +0.034718 | +0.034718 | -27.41% | 30.37% | 0.9086 | CHECK |
| section moment (N mm/mm) | M12 (SM3) | element at (2.252, 76.36, 0) | -0.071796 | -0.058542 | +0.066464 | +18.46% | 6.88% | 0.9804 | CHECK |

**55/103 PASS, 48 CHECK.**

Pictures: `it007_L006_Y025_C008_lateral50N_along_x.png`, `it007_L006_Y025_C008_lateral50N_deformed.png`, `it007_L006_Y025_C008_lateral50N_fields.png`, `it007_L006_Y025_C008_lateral50N_parity.png`
