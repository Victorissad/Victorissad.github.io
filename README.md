# Portfolio Victor Issad — BTS SIO SLAM 2026

Portfolio web statique pour l'épreuve **E4 Bloc 1** du BTS SIO option SLAM, session 2026.

## Structure

```
victor-portfolio/
├── index.html              # Accueil (hero sobre)
├── pages/
│   ├── about.html          # À propos + parcours académique
│   ├── competences.html    # Compétences techniques (avec logos)
│   ├── certifications.html # Certifications (placeholder)
│   ├── projets.html        # Projets + fiches détaillées (avec badges techno)
│   ├── veille.html         # Veille techno legacy bancaire
│   └── contact.html        # Contact + formulaire mailto
├── assets/
│   ├── css/styles.css      # Style light/dark Camille-inspired
│   ├── js/main.js          # Theme toggle, menu, animations
│   └── img/
│       ├── icons/          # 20 logos technos SVG (Java, PHP, Spring, etc.)
│       └── flags/          # 4 drapeaux SVG (FR, GB, DE, RU)
└── ressources/
    ├── img/                # Captures d'écran (à fournir)
    ├── CV_Victor_ISSAD.pdf       # ⚠️ À FOURNIR
    └── Tableau_Synthese_E4.pdf   # ⚠️ À FOURNIR
```

## Inspirations

- Style éditorial sobre inspiré de **camillemarsac.fr** (à 95%)
- Palette indigo (#4f46e5 light / #818cf8 dark) — distincte du bleu original
- Typographies : **Inter** (sans-serif) + **JetBrains Mono** (code)
- Light mode par défaut + toggle dark persistant (localStorage)

## À compléter avant l'oral

### 🔴 Critique (à faire absolument)
- [ ] Fournir `ressources/CV_Victor_ISSAD.pdf` (ton CV à jour)
- [ ] Fournir `ressources/Tableau_Synthese_E4.pdf` (Annexe 6.1 officielle, scannée ou exportée depuis Excel)
- [ ] Mettre à jour l'adresse e-mail dans `contact.html` (chercher `victor.issad@example.com` partout)
- [ ] Mettre à jour les liens GitHub et LinkedIn (chercher `href="#"` dans `index.html` et `contact.html`)

### 🟠 Important (recommandé)
- [ ] Remplacer la photo placeholder 👨‍💻 par une vraie photo dans `index.html` (créer un `assets/img/photo.jpg`)
- [ ] Ajouter des captures d'écran pour chaque projet dans `ressources/img/`
- [ ] Vérifier la cohérence des dates et descriptions

### 🟡 Optionnel (améliorations)
- [ ] Compléter la fiche ReloKit quand le projet sera terminé
- [ ] Étoffer la fiche BAI Sandbox avec plus de détails Bloc 3
- [ ] Ajouter les certifications obtenues (TOEIC, PIX, etc.)

## Contenu pédagogique

### Veille technologique
Sujet : **Sécurité des systèmes legacy bancaires**
- Aligné sur le contexte alternance MTB111 (clients BNP, Allianz, BdF)
- Inclut DORA (en vigueur 17 janv. 2025) et incidents documentés (Bangladesh Bank, TSB, RBS)
- Sources sourcées : ANSSI, NIST NVD, OWASP, ACPR, EUR-Lex

### Couverture des 6 compétences Bloc 1

| Compétence | Couverture |
|---|---|
| C1 — Gérer le patrimoine informatique | Structur'All ×2, RFTG ×2, BAI ×2 |
| C2 — Répondre aux incidents et demandes | Structur'All, RFTG ×2, BAI |
| C3 — Développer la présence en ligne | Portfolio React, ReloKit |
| C4 — Travailler en mode projet | Structur'All ×2, RFTG ×2 |
| C5 — Mettre à disposition un service | Structur'All ×2, RFTG ×3, BAI, Portfolio React |
| C6 — Organiser son développement professionnel | Portfolio React, ReloKit |

**Toutes les compétences Bloc 1 sont couvertes.** ✅

## Lancement local

Ouvrir `index.html` dans un navigateur. Aucun build ni serveur requis.

Pour un test plus propre :
```bash
cd victor-portfolio
python3 -m http.server 8000
# puis ouvrir http://localhost:8000
```

## Notes techniques

- HTML/CSS/JS vanilla — aucune dépendance externe sauf Google Fonts
- Anti-FOUC : le thème est appliqué dans une IIFE avant `DOMContentLoaded`
- Accessible : skip link, ARIA labels, contrastes WCAG AA
- Responsive : breakpoints à 800px (nav burger) et 600px (single column)
- Print-friendly : nav et footer cachés à l'impression

---

© 2026 Victor Issad — BTS SIO SLAM, 3IFA Alençon
