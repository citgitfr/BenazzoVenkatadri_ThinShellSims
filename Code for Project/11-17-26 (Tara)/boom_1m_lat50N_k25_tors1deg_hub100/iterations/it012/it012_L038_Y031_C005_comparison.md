# it012_L038_Y031_C005: OpenSeesPy vs Abaqus results

- OpenSees results: `Code for Project\11-17-26 (Tara)\boom_1m_lat50N_k25_tors1deg_hub100\iterations\it012\results\it012_L038_Y031_C005.npz`
- Abaqus results: `Code for Project\11-17-26 (Tara)\boom_1m_lat50N_k25_tors1deg_hub100\iterations\it012\it012_L038_Y031_C005_S4R_4p5mm_odb.npz` (ODB `it012_L038_Y031_C005_S4R_4p5mm.odb`, step Load, Abaqus Abaqus/Standard 2026, 2 frames)
- 22746 OpenSees shell nodes, 22746 Abaqus nodes; 22644 OpenSees facets, 22644 Abaqus shell elements
- Abaqus axes used as global (x, y, z) = Abaqus columns [0, 1, 2]; node pairing max distance 3.03e-05 mm, element centroids 2.43e-05 mm (element size 4.5 mm): **same mesh**
- laminates: flange: 21756 facets, [0/0/0/0/0]; web: 888 facets, [0/0/0/0/0/0/0/0/0/0]
- section points: 30 Abaqus stress section points paired with plies (layer, position): 1b, 1m, 1t, 2b, 2m, 2t, 3b, 3m, 3t, 4b, 4m, 4t, 5b, 5m, 5t, 6b, 6m, 6t, 7b, 7m, 7t, 8b, 8m, 8t, 9b, 9m, 9t, 10b, 10m, 10t

Peak = largest |OpenSees value|; Abaqus at the same point; diff = (Abaqus - OpenSees) / |peak|; rel. RMS = ||Abaqus - OpenSees|| / ||OpenSees|| over all points; scale = least-squares Abaqus/OpenSees. PASS: |diff| <= 3% and rel. RMS <= 9% (~0: OpenSees peak < 0.1% of the group, max |diff| <= 3% of the group).

| quantity | component | where (OpenSees peak) | OpenSees | Abaqus same point | Abaqus peak | diff | rel. RMS | scale | verdict |
|---|---|---|---|---|---|---|---|---|---|
| displacement | ux | node at (936.9, -2.34, -63.96) | -0.050146 | -0.050176 | +0.050176 | -0.06% | 0.06% | 1.0006 | PASS |
| displacement | uy | node at (774.8, -48.2, -11.05) | -0.0084146 | -0.0086249 | +0.0086249 | -2.50% | 1.95% | 1.0105 | PASS |
| displacement | uz | node at (1000, 69.17, 0) | -0.70424 | -0.70513 | -0.70513 | -0.13% | 0.14% | 1.0013 | PASS |
| rotation | rx | node at (103.6, 60.17, -7.105e-15) | -0.0017668 | -0.0017632 | +0.0017632 | +0.20% | 1.79% | 1.0063 | PASS |
| rotation | ry | node at (977.5, 69.17, 0) | +0.0015406 | +0.0015557 | +0.0015557 | +0.98% | 2.22% | 1.0075 | PASS |
| rotation | rz | node at (4.505, 17.19, -48.33) | -0.00017034 | -0.00016854 | -0.00019579 | +1.06% | 37.66% | 0.8107 | CHECK |
| displacement | |u| | node at (1000, 2.34, 63.96) | +0.70601 | +0.7069 | +0.7069 | +0.13% | 0.14% | 1.0013 | PASS |
| rigid end x0 | ux | reference point (6.3e-30 from the OpenSees node) | +0 | +8.6651e-37 | +8.6651e-37 |  | 86651122318877636632978243126319786876167647848919975063998847729071611767608140371176510229097057908241169324069235899395268897980150750220580684852380087012584698330922632584288144570181395560613453088435366983543915506714889638416477855148850905596776441068912640.00% |  | PASS (~0) |
| rigid end x0 | uy | reference point (6.3e-30 from the OpenSees node) | +0 | +2.9318e-37 | +2.9318e-37 |  | 29317908176587708126418913689179494290750153026099776955604565158169285306806725268050079440244019042600186878914347921944188478814669549545722647864919385127936667627139180149671214324686149674091291057851880240293590971327312572946088648153180427061321742566817792.00% |  | PASS (~0) |
| rigid end x0 | uz | reference point (6.3e-30 from the OpenSees node) | +0 | -2.4924e-35 | -2.4924e-35 |  | 2492355098683528015077350235549251536269988354637362513646403237985670006308865837960746629703984977107706708028463466267837627044080899241236544355449747688381976935248176267542907822242124076357127145977466902865496606935906271746163746256289390132520685436321923072.00% |  | PASS (~0) |
| rigid end x0 | rx | reference point (6.3e-30 from the OpenSees node) | +0 | -4.5544e-36 | -4.5544e-36 |  | 455440529434380206886409966215754785686713489004341730962615819279295852375723045676051217592758919017449430391431424069358254578835228456346656616964102519945961427849621252212225574688863649110290813453994767558086515048197454008151574332299002958424831495044595712.00% |  | PASS (~0) |
| rigid end x0 | ry | reference point (6.3e-30 from the OpenSees node) | +0 | +2.5e-32 | +2.5e-32 |  | 2500016112200298444775164815436723518841222723258658464830816334074073280382251175384292779833347539239359531841651321295367328252758269152918506873596619435361028735773737182449607148448832191421075480413835953928149405152703505683587978195037770805840290338067611385856.00% |  | PASS (~0) |
| rigid end x0 | rz | reference point (6.3e-30 from the OpenSees node) | +0 | +5.0897e-35 | +5.0897e-35 |  | 5089673003728980851414189103671482457577329543390285782272467951797089790840176034798295353060812557161312010509153515064461367704231779627010416125128468339211808337085763795183186554096217919969899378136044209016583679766415205479593550251911659286440871967686918144.00% |  | PASS (~0) |
| rigid end xL | ux | reference point (1e-12 from the OpenSees node) | +7.4352e-16 | -1.6655e-11 | -1.6655e-11 |  | 2240154.39% | -22400.5439 | PASS (~0) |
| rigid end xL | uz | reference point (1e-12 from the OpenSees node) | -0.70424 | -0.70513 | -0.70513 | -0.13% | 0.13% | 1.0013 | PASS |
| rigid end xL | rx | reference point (1e-12 from the OpenSees node) | -4.1561e-15 | -5.3593e-12 | -5.3593e-12 |  | 128851.49% | 1289.5149 | PASS (~0) |
| rigid end xL | ry | reference point (1e-12 from the OpenSees node) | +0.00078052 | +0.00078092 | +0.00078092 | +0.05% | 0.05% | 1.0005 | PASS |
| membrane strain | exx (SE1) | element at (2.252, 1.066e-14, 63.96) | +0.00010647 | +0.00010647 | +0.00010658 | +0.00% | 0.14% | 1.0006 | PASS |
| membrane strain | eyy (SE2) | element at (11.26, 1.066e-14, 63.96) | -4.1059e-05 | -4.219e-05 | -4.219e-05 | -2.75% | 0.73% | 1.0014 | PASS |
| membrane strain | gxy (SE3) | element at (6.757, 50.7, -4.972) | +0.00015295 | +0.00015405 | -0.00015463 | +0.72% | 0.66% | 1.0031 | PASS |
| curvature | kxx (SK2) | element at (2.252, 57.98, -0.4124) | -9.6463e-05 | -0.00010159 | +0.00010159 | -5.31% | 7.89% | 1.0239 | CHECK |
| curvature | kyy (SK1) | element at (930.2, 50.7, 4.972) | -0.00020386 | -0.00020498 | -0.00020498 | -0.55% | 3.83% | 1.0070 | PASS |
| curvature | kxy (SK3) | element at (6.757, 53.91, 2.005) | +9.0475e-05 | +9.3474e-05 | -9.3475e-05 | +3.32% | 18.74% | 0.9631 | CHECK |
| flange ply 1 (0 deg) bottom | s1 (S11) | element at (6.757, 1.066e-14, 63.96) | +14.015 | +14.062 | +14.062 | +0.34% | 0.17% | 1.0006 | PASS |
| flange ply 1 (0 deg) bottom | s2 (S22) | element at (2.252, 4.581, 63.29) | +0.14369 | +0.14305 | -0.14305 | -0.44% | 4.23% | 1.0043 | PASS |
| flange ply 1 (0 deg) bottom | t12 (S12) | element at (6.757, 50.7, -4.972) | +0.79563 | +0.80392 | -0.80453 | +1.04% | 0.72% | 1.0040 | PASS |
| flange ply 1 (0 deg) top | s1 (S11) | element at (6.757, 1.066e-14, 63.96) | +13.812 | +13.854 | +13.854 | +0.30% | 0.15% | 1.0006 | PASS |
| flange ply 1 (0 deg) top | s2 (S22) | element at (2.252, 4.581, 63.29) | +0.14664 | +0.14515 | -0.14516 | -1.01% | 4.81% | 1.0009 | PASS |
| flange ply 1 (0 deg) top | t12 (S12) | element at (6.757, 50.7, -4.972) | +0.79551 | +0.80277 | -0.80435 | +0.91% | 0.69% | 1.0036 | PASS |
| flange ply 2 (0 deg) bottom | s1 (S11) | element at (6.757, 1.066e-14, 63.96) | +13.812 | +13.854 | +13.854 | +0.30% | 0.15% | 1.0006 | PASS |
| flange ply 2 (0 deg) bottom | s2 (S22) | element at (2.252, 4.581, 63.29) | +0.14664 | +0.14515 | -0.14516 | -1.01% | 4.81% | 1.0009 | PASS |
| flange ply 2 (0 deg) bottom | t12 (S12) | element at (6.757, 50.7, -4.972) | +0.79551 | +0.80277 | -0.80435 | +0.91% | 0.69% | 1.0036 | PASS |
| flange ply 2 (0 deg) top | s1 (S11) | element at (6.757, 1.066e-14, 63.96) | +13.608 | +13.645 | +13.645 | +0.27% | 0.14% | 1.0006 | PASS |
| flange ply 2 (0 deg) top | s2 (S22) | element at (2.252, 1.066e-14, 63.96) | +0.15121 | +0.14796 | -0.14796 | -2.15% | 6.85% | 0.9865 | PASS |
| flange ply 2 (0 deg) top | t12 (S12) | element at (6.757, 50.7, -4.972) | +0.79539 | +0.80161 | -0.80416 | +0.78% | 0.67% | 1.0033 | PASS |
| flange ply 3 (0 deg) bottom | s1 (S11) | element at (6.757, 1.066e-14, 63.96) | +13.608 | +13.645 | +13.645 | +0.27% | 0.14% | 1.0006 | PASS |
| flange ply 3 (0 deg) bottom | s2 (S22) | element at (2.252, 1.066e-14, 63.96) | +0.15121 | +0.14796 | -0.14796 | -2.15% | 6.85% | 0.9865 | PASS |
| flange ply 3 (0 deg) bottom | t12 (S12) | element at (6.757, 50.7, -4.972) | +0.79539 | +0.80161 | -0.80416 | +0.78% | 0.67% | 1.0033 | PASS |
| flange ply 3 (0 deg) top | s1 (S11) | element at (2.252, 1.066e-14, 63.96) | +13.698 | +13.7 | -13.7 | +0.01% | 0.14% | 1.0006 | PASS |
| flange ply 3 (0 deg) top | s2 (S22) | element at (2.252, 1.066e-14, 63.96) | +0.15582 | +0.15357 | -0.15357 | -1.44% | 6.63% | 0.9902 | PASS |
| flange ply 3 (0 deg) top | t12 (S12) | element at (6.757, 50.7, -4.972) | +0.79527 | +0.80046 | -0.80397 | +0.65% | 0.66% | 1.0030 | PASS |
| flange ply 4 (0 deg) bottom | s1 (S11) | element at (2.252, 1.066e-14, 63.96) | +13.698 | +13.7 | -13.7 | +0.01% | 0.14% | 1.0006 | PASS |
| flange ply 4 (0 deg) bottom | s2 (S22) | element at (2.252, 1.066e-14, 63.96) | +0.15582 | +0.15357 | -0.15357 | -1.44% | 6.63% | 0.9902 | PASS |
| flange ply 4 (0 deg) bottom | t12 (S12) | element at (6.757, 50.7, -4.972) | +0.79527 | +0.80046 | -0.80397 | +0.65% | 0.66% | 1.0030 | PASS |
| flange ply 4 (0 deg) top | s1 (S11) | element at (2.252, 1.066e-14, 63.96) | +13.942 | +13.949 | +13.949 | +0.05% | 0.14% | 1.0006 | PASS |
| flange ply 4 (0 deg) top | s2 (S22) | element at (2.252, 1.066e-14, 63.96) | +0.16043 | +0.15918 | -0.15918 | -0.78% | 4.69% | 1.0030 | PASS |
| flange ply 4 (0 deg) top | t12 (S12) | element at (6.757, 50.7, -4.972) | +0.79515 | +0.7993 | -0.80379 | +0.52% | 0.64% | 1.0026 | PASS |
| flange ply 5 (0 deg) bottom | s1 (S11) | element at (2.252, 1.066e-14, 63.96) | +13.942 | +13.949 | +13.949 | +0.05% | 0.14% | 1.0006 | PASS |
| flange ply 5 (0 deg) bottom | s2 (S22) | element at (2.252, 1.066e-14, 63.96) | +0.16043 | +0.15918 | -0.15918 | -0.78% | 4.69% | 1.0030 | PASS |
| flange ply 5 (0 deg) bottom | t12 (S12) | element at (6.757, 50.7, -4.972) | +0.79515 | +0.7993 | -0.80379 | +0.52% | 0.64% | 1.0026 | PASS |
| flange ply 5 (0 deg) top | s1 (S11) | element at (2.252, 1.066e-14, 63.96) | +14.186 | +14.199 | +14.199 | +0.09% | 0.14% | 1.0006 | PASS |
| flange ply 5 (0 deg) top | s2 (S22) | element at (2.252, 1.066e-14, 63.96) | +0.16504 | +0.16479 | -0.16479 | -0.15% | 4.17% | 1.0056 | PASS |
| flange ply 5 (0 deg) top | t12 (S12) | element at (6.757, 53.91, -2.005) | +0.79999 | +0.7845 | -0.80377 | -1.94% | 0.63% | 1.0023 | PASS |
| web ply 1 (0 deg) bottom | s1 (S11) | element at (2.252, 62.42, -3.553e-15) | -2.0667 | -2.0577 | -2.0577 | +0.44% | 4.58% | 0.9997 | PASS |
| web ply 1 (0 deg) bottom | s2 (S22) | element at (979.7, -62.42, 0) | -0.060612 | -0.061974 | -0.070441 | -2.25% | 15.96% | 1.0480 | CHECK |
| web ply 1 (0 deg) bottom | t12 (S12) | element at (975.2, 66.92, 0) | -0.081258 | -0.083238 | +0.083238 | -2.44% | 10.29% | 1.0259 | CHECK |
| web ply 1 (0 deg) top | s1 (S11) | element at (2.252, 62.42, -3.553e-15) | -1.6533 | -1.6461 | -1.6461 | +0.44% | 4.58% | 0.9997 | PASS |
| web ply 1 (0 deg) top | s2 (S22) | element at (979.7, -62.42, 0) | -0.04849 | -0.049579 | -0.056353 | -2.25% | 15.96% | 1.0480 | CHECK |
| web ply 1 (0 deg) top | t12 (S12) | element at (975.2, 66.92, 0) | -0.065007 | -0.06659 | +0.06659 | -2.44% | 10.29% | 1.0259 | CHECK |
| web ply 2 (0 deg) bottom | s1 (S11) | element at (2.252, 62.42, -3.553e-15) | -1.6533 | -1.6461 | -1.6461 | +0.44% | 4.58% | 0.9997 | PASS |
| web ply 2 (0 deg) bottom | s2 (S22) | element at (979.7, -62.42, 0) | -0.04849 | -0.049579 | -0.056353 | -2.25% | 15.96% | 1.0480 | CHECK |
| web ply 2 (0 deg) bottom | t12 (S12) | element at (975.2, 66.92, 0) | -0.065007 | -0.06659 | +0.06659 | -2.44% | 10.29% | 1.0259 | CHECK |
| web ply 2 (0 deg) top | s1 (S11) | element at (2.252, 62.42, -3.553e-15) | -1.24 | -1.2346 | -1.2346 | +0.44% | 4.58% | 0.9997 | PASS |
| web ply 2 (0 deg) top | s2 (S22) | element at (979.7, -62.42, 0) | -0.036367 | -0.037184 | -0.042265 | -2.25% | 15.96% | 1.0480 | CHECK |
| web ply 2 (0 deg) top | t12 (S12) | element at (975.2, 66.92, 0) | -0.048755 | -0.049943 | +0.049943 | -2.44% | 10.29% | 1.0259 | CHECK |
| web ply 3 (0 deg) bottom | s1 (S11) | element at (2.252, 62.42, -3.553e-15) | -1.24 | -1.2346 | -1.2346 | +0.44% | 4.58% | 0.9997 | PASS |
| web ply 3 (0 deg) bottom | s2 (S22) | element at (979.7, -62.42, 0) | -0.036367 | -0.037184 | -0.042265 | -2.25% | 15.96% | 1.0480 | CHECK |
| web ply 3 (0 deg) bottom | t12 (S12) | element at (975.2, 66.92, 0) | -0.048755 | -0.049943 | +0.049943 | -2.44% | 10.29% | 1.0259 | CHECK |
| web ply 3 (0 deg) top | s1 (S11) | element at (2.252, 62.42, -3.553e-15) | -0.82667 | -0.82306 | -0.82306 | +0.44% | 4.58% | 0.9997 | PASS |
| web ply 3 (0 deg) top | s2 (S22) | element at (979.7, -62.42, 0) | -0.024245 | -0.02479 | -0.028176 | -2.25% | 15.96% | 1.0480 | CHECK |
| web ply 3 (0 deg) top | t12 (S12) | element at (975.2, 66.92, 0) | -0.032503 | -0.033295 | +0.033295 | -2.44% | 10.29% | 1.0259 | CHECK |
| web ply 4 (0 deg) bottom | s1 (S11) | element at (2.252, 62.42, -3.553e-15) | -0.82667 | -0.82306 | -0.82306 | +0.44% | 4.58% | 0.9997 | PASS |
| web ply 4 (0 deg) bottom | s2 (S22) | element at (979.7, -62.42, 0) | -0.024245 | -0.02479 | -0.028176 | -2.25% | 15.96% | 1.0480 | CHECK |
| web ply 4 (0 deg) bottom | t12 (S12) | element at (975.2, 66.92, 0) | -0.032503 | -0.033295 | +0.033295 | -2.44% | 10.29% | 1.0259 | CHECK |
| web ply 4 (0 deg) top | s1 (S11) | element at (2.252, 62.42, -3.553e-15) | -0.41334 | -0.41153 | -0.41153 | +0.44% | 4.58% | 0.9997 | PASS |
| web ply 4 (0 deg) top | s2 (S22) | element at (979.7, -62.42, 0) | -0.012122 | -0.012395 | -0.014088 |  | 15.96% | 1.0480 | PASS (~0) |
| web ply 4 (0 deg) top | t12 (S12) | element at (975.2, 66.92, 0) | -0.016252 | -0.016648 | +0.016648 | -2.44% | 10.29% | 1.0259 | CHECK |
| web ply 5 (0 deg) bottom | s1 (S11) | element at (2.252, 62.42, -3.553e-15) | -0.41334 | -0.41153 | -0.41153 | +0.44% | 4.58% | 0.9997 | PASS |
| web ply 5 (0 deg) bottom | s2 (S22) | element at (979.7, -62.42, 0) | -0.012122 | -0.012395 | -0.014088 |  | 15.96% | 1.0480 | PASS (~0) |
| web ply 5 (0 deg) bottom | t12 (S12) | element at (975.2, 66.92, 0) | -0.016252 | -0.016648 | +0.016648 | -2.44% | 10.29% | 1.0259 | CHECK |
| web ply 5 (0 deg) top | s1 (S11) | element at (997.7, 66.92, 0) | +1.5029e-11 | -8.2522e-10 | -3.5948e-09 |  | 68076.07% | -38.7128 | PASS (~0) |
| web ply 5 (0 deg) top | s2 (S22) | element at (988.7, 62.42, -3.553e-15) | +2.6527e-13 | +1.8534e-12 | +7.9983e-11 |  | 22759.66% | -4.3925 | PASS (~0) |
| web ply 5 (0 deg) top | t12 (S12) | element at (993.2, 62.42, -3.553e-15) | +1.5146e-12 | +2.0584e-11 | -1.1048e-10 |  | 8061.22% | 3.9327 | PASS (~0) |
| web ply 6 (0 deg) bottom | s1 (S11) | element at (997.7, 66.92, 0) | +1.5029e-11 | -8.2522e-10 | -3.5948e-09 |  | 68076.07% | -38.7128 | PASS (~0) |
| web ply 6 (0 deg) bottom | s2 (S22) | element at (988.7, 62.42, -3.553e-15) | +2.6527e-13 | +1.8534e-12 | +7.9983e-11 |  | 22759.66% | -4.3925 | PASS (~0) |
| web ply 6 (0 deg) bottom | t12 (S12) | element at (993.2, 62.42, -3.553e-15) | +1.5146e-12 | +2.0584e-11 | -1.1048e-10 |  | 8061.22% | 3.9327 | PASS (~0) |
| web ply 6 (0 deg) top | s1 (S11) | element at (2.252, 62.42, -3.553e-15) | +0.41334 | +0.41153 | +0.41153 | -0.44% | 4.58% | 0.9997 | PASS |
| web ply 6 (0 deg) top | s2 (S22) | element at (979.7, -62.42, 0) | +0.012122 | +0.012395 | +0.014088 |  | 15.96% | 1.0480 | PASS (~0) |
| web ply 6 (0 deg) top | t12 (S12) | element at (975.2, 66.92, 0) | +0.016252 | +0.016648 | -0.016648 | +2.44% | 10.29% | 1.0259 | CHECK |
| web ply 7 (0 deg) bottom | s1 (S11) | element at (2.252, 62.42, -3.553e-15) | +0.41334 | +0.41153 | +0.41153 | -0.44% | 4.58% | 0.9997 | PASS |
| web ply 7 (0 deg) bottom | s2 (S22) | element at (979.7, -62.42, 0) | +0.012122 | +0.012395 | +0.014088 |  | 15.96% | 1.0480 | PASS (~0) |
| web ply 7 (0 deg) bottom | t12 (S12) | element at (975.2, 66.92, 0) | +0.016252 | +0.016648 | -0.016648 | +2.44% | 10.29% | 1.0259 | CHECK |
| web ply 7 (0 deg) top | s1 (S11) | element at (2.252, 62.42, -3.553e-15) | +0.82667 | +0.82306 | +0.82306 | -0.44% | 4.58% | 0.9997 | PASS |
| web ply 7 (0 deg) top | s2 (S22) | element at (979.7, -62.42, 0) | +0.024245 | +0.02479 | +0.028176 | +2.25% | 15.96% | 1.0480 | CHECK |
| web ply 7 (0 deg) top | t12 (S12) | element at (975.2, 66.92, 0) | +0.032503 | +0.033295 | -0.033295 | +2.44% | 10.29% | 1.0259 | CHECK |
| web ply 8 (0 deg) bottom | s1 (S11) | element at (2.252, 62.42, -3.553e-15) | +0.82667 | +0.82306 | +0.82306 | -0.44% | 4.58% | 0.9997 | PASS |
| web ply 8 (0 deg) bottom | s2 (S22) | element at (979.7, -62.42, 0) | +0.024245 | +0.02479 | +0.028176 | +2.25% | 15.96% | 1.0480 | CHECK |
| web ply 8 (0 deg) bottom | t12 (S12) | element at (975.2, 66.92, 0) | +0.032503 | +0.033295 | -0.033295 | +2.44% | 10.29% | 1.0259 | CHECK |
| web ply 8 (0 deg) top | s1 (S11) | element at (2.252, 62.42, -3.553e-15) | +1.24 | +1.2346 | +1.2346 | -0.44% | 4.58% | 0.9997 | PASS |
| web ply 8 (0 deg) top | s2 (S22) | element at (979.7, -62.42, 0) | +0.036367 | +0.037184 | +0.042265 | +2.25% | 15.96% | 1.0480 | CHECK |
| web ply 8 (0 deg) top | t12 (S12) | element at (975.2, 66.92, 0) | +0.048755 | +0.049943 | -0.049943 | +2.44% | 10.29% | 1.0259 | CHECK |
| web ply 9 (0 deg) bottom | s1 (S11) | element at (2.252, 62.42, -3.553e-15) | +1.24 | +1.2346 | +1.2346 | -0.44% | 4.58% | 0.9997 | PASS |
| web ply 9 (0 deg) bottom | s2 (S22) | element at (979.7, -62.42, 0) | +0.036367 | +0.037184 | +0.042265 | +2.25% | 15.96% | 1.0480 | CHECK |
| web ply 9 (0 deg) bottom | t12 (S12) | element at (975.2, 66.92, 0) | +0.048755 | +0.049943 | -0.049943 | +2.44% | 10.29% | 1.0259 | CHECK |
| web ply 9 (0 deg) top | s1 (S11) | element at (2.252, 62.42, -3.553e-15) | +1.6533 | +1.6461 | +1.6461 | -0.44% | 4.58% | 0.9997 | PASS |
| web ply 9 (0 deg) top | s2 (S22) | element at (979.7, -62.42, 0) | +0.04849 | +0.049579 | +0.056353 | +2.25% | 15.96% | 1.0480 | CHECK |
| web ply 9 (0 deg) top | t12 (S12) | element at (975.2, 66.92, 0) | +0.065007 | +0.06659 | -0.06659 | +2.44% | 10.29% | 1.0259 | CHECK |
| web ply 10 (0 deg) bottom | s1 (S11) | element at (2.252, 62.42, -3.553e-15) | +1.6533 | +1.6461 | +1.6461 | -0.44% | 4.58% | 0.9997 | PASS |
| web ply 10 (0 deg) bottom | s2 (S22) | element at (979.7, -62.42, 0) | +0.04849 | +0.049579 | +0.056353 | +2.25% | 15.96% | 1.0480 | CHECK |
| web ply 10 (0 deg) bottom | t12 (S12) | element at (975.2, 66.92, 0) | +0.065007 | +0.06659 | -0.06659 | +2.44% | 10.29% | 1.0259 | CHECK |
| web ply 10 (0 deg) top | s1 (S11) | element at (2.252, 62.42, -3.553e-15) | +2.0667 | +2.0577 | +2.0577 | -0.44% | 4.58% | 0.9997 | PASS |
| web ply 10 (0 deg) top | s2 (S22) | element at (979.7, -62.42, 0) | +0.060612 | +0.061974 | +0.070441 | +2.25% | 15.96% | 1.0480 | CHECK |
| web ply 10 (0 deg) top | t12 (S12) | element at (975.2, 66.92, 0) | +0.081258 | +0.083238 | -0.083238 | +2.44% | 10.29% | 1.0259 | CHECK |
| section force (N/mm) | N11 (SF1) | element at (2.252, 1.066e-14, 63.96) | +2.3757 | +2.3756 | +2.3756 | -0.01% | 0.14% | 1.0006 | PASS |
| section force (N/mm) | N22 (SF2) | element at (2.252, 1.066e-14, 63.96) | +0.026865 | +0.026384 | -0.026384 | -1.79% | 7.86% | 0.9787 | PASS |
| section force (N/mm) | N12 (SF3) | element at (6.757, 50.7, -4.972) | +0.13918 | +0.14018 | -0.14071 | +0.72% | 0.66% | 1.0031 | PASS |
| section moment (N mm/mm) | M11 (SM1) | element at (2.252, 62.42, -3.553e-15) | +0.042195 | +0.04201 | +0.04201 | -0.44% | 4.91% | 1.0016 | PASS |
| section moment (N mm/mm) | M22 (SM2) | element at (979.7, -62.42, 0) | +0.0012375 | +0.0012653 | +0.0014382 | +2.25% | 6.63% | 1.0120 | PASS |
| section moment (N mm/mm) | M12 (SM3) | element at (975.2, 66.92, 0) | +0.001659 | +0.0016994 | -0.0016994 | +2.44% | 10.96% | 1.0223 | CHECK |

**83/119 PASS, 36 CHECK.**

Pictures: `it012_L038_Y031_C005_along_x.png`, `it012_L038_Y031_C005_deformed.png`, `it012_L038_Y031_C005_fields.png`, `it012_L038_Y031_C005_parity.png`

## Verifier judgment (11-18-26, independent check from outputs only)

**Verdict: AGREE.** Same mesh (22746 nodes / 22644 elements, pairing distance 3e-5 mm vs 4.5 mm elements), Abaqus axes [0,1,2], both reference points matched. Tip uz -0.70424 (OpenSees) vs -0.70513 (Abaqus), +0.13%; tip ry +0.05%; max |u| +0.13%; flange s1 peaks within 0.1-0.3%; section forces/moments within 2.5%. Parity plots lie on the line; field difference maps are smooth (|u| diff < 1e-3 mm), curvature/stress differences sit at the root and tip ends only; the along-x curves overlay.

CHECK lines, judged:
- rz (rel RMS 37.7%, scale 0.81; peak diff +1.1%): drilling rotation. On the web nodes (|z| <= 2 mm, shell normal ~ global z) global rz is the drilling DOF: max |rz| 1.06e-4 (OpenSees ASDShellQ4) vs 3.2e-5 (Abaqus S4R). Excluding |z| <= 2 mm: rel RMS 20%, scale 0.95; |z| > 10 mm: 17%, scale 0.98. rz is ~10x smaller than ry here. Expected element-formulation difference, not an error (script `_scratch_rz_interior.py`).
- kxx peak -5.3% (rel RMS 7.9%, scale 1.02) at x = 2.25 mm (clamped root element), kxy peak +3.3% / rel RMS 18.7% at x = 6.8 mm: support-region discretization (S4R vs ASDShellQ4); fields maps show differences only at the ends.
- web ply s2 and t12 (diff at peak 2.3-2.4%, rel RMS 10-16% > 9%, scale 1.03-1.05) and M12 (2.4%, 11%): peaks at the tip (x ~ 975-980 mm, rigid end / load point), values are small (s2 ~0.06 MPa, t12 ~0.08 MPa vs s1 ~2 MPa in the web, 14 MPa in the flange). No sign flip, no factor 2. Expected end-region discretization.
- The `rigid end x0` rows print absurd % values (division by an exact 0 OpenSees displacement at the fixed end); verdict PASS (~0) is right, only the % column is a cosmetic tool issue.
- The `[CHECK]` top-ply lines in `it012_L038_Y031_C005_S4R_4p5mm_results.txt` (s1 2.06 vs 14.19 MPa, -85%) compare Abaqus section point 30 (top of the 10-ply web) with the OpenSees top of the 5-ply flange: different plies, not a model disagreement. compare_results.py pairs them per laminate and gets flange ply 5 top s1 14.186 vs 14.199 (+0.09%).

Would settle the remaining end-region differences: both models at half the element size (2.25 mm).
