# Lattice Design: FODO & DBA — ALBA Accelerator Physics Course

This repository contains the work developed during the **Lattice Design Workshop** of the ALBA Accelerator Physics Course (May 2026), instructed by G. Benedetti.

The project covers the design, simulation, and analysis of two types of storage-ring lattices — **FODO** and **DBA (Double Bend Achromat)** — using the [OPA](https://ados.web.psi.ch/opa/) optics simulation software.

---

## Repository Contents

| File | Description |
|------|-------------|
| `FODO_Lattice.opa` | OPA lattice file for the FODO ring (36 cells, 2.5 GeV) |
| `dba_2026.opa` | OPA lattice file for the DBA ring (18 cells, 2.5 GeV) |
| `FODO_plots.ipynb` | Jupyter notebook with plots and analysis of the FODO lattice |
| `Lattice-Design-Report.pdf` | Full workshop report |
| `Instructions - LatticeDesign...` | Original workshop instructions |
| `opa.exe` | OPA executable (Windows) |
| `Figures/` | Output figures generated with OPA |

---

## What is OPA?

**OPA** (Optics and Perturbation Analysis) is a software tool for computing and optimizing the linear and non-linear optics of particle accelerator storage rings. It allows you to:

- Define a lattice from magnetic elements (dipoles, quadrupoles, sextupoles, drifts)
- Compute Twiss parameters (beta functions, dispersion, tunes)
- Optimize quadrupole strengths for emittance minimization
- Perform particle tracking and dynamic aperture studies
- Analyse chromaticity and sextupole corrections

### Running OPA

1. Open `opa.exe` (Windows) or download OPA from the [PSI website](https://ados.web.psi.ch/opa/)
2. Load a lattice file: `File → Open` and select `FODO_Lattice.opa` or `dba_2026.opa`
3. Compute the periodic solution: `Calculate → Periodic Solution`
4. Explore optics, tune scans, and tracking from the menus

---

## Report Summary

### FODO Lattice
A storage ring of **36 FODO cells** was designed for a 2.5 GeV electron beam. Each cell contains focusing (QF) and defocusing (QD) quadrupoles, one bending magnet, and drift sections. Key results:

- QF primarily controls horizontal tune; QD controls vertical tune
- Independent tune control validated with first-order perturbative formulas
- Minimum horizontal emittance of **19.9 nm·rad** achieved by asymmetric quadrupole optimization
- Emittance scales as ~1/N³ with the number of cells

### DBA Lattice
An **18-cell DBA ring** was implemented with achromatic dispersion suppression. Key results:

- Achromatic condition achieved by tuning QF2 strength to suppress end-cell dispersion
- Minimum horizontal emittance of **5.5 nm·rad** — roughly 4× lower than the optimized FODO
- Natural chromaticity corrected to zero using two sextupole families (SH, SV)
- Particle tracking shows sextupoles reduce the dynamic aperture due to non-linear effects

---

## Requirements

- **OPA** — included as `opa.exe` or downloadable from [PSI](https://ados.web.psi.ch/opa/)
- **Python 3** + Jupyter for running `FODO_plots.ipynb`
  - Dependencies: `numpy`, `matplotlib`

```bash
pip install numpy matplotlib jupyter
```
