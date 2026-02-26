# stringgeometry-super-riemann-surfaces

Lean formalization of super Riemann surfaces and supermoduli infrastructure.

This repository sits on top of:

- `stringgeometry-supermanifolds`
- `stringgeometry-riemann-surfaces`

and develops the superconformal and supermoduli layer that depends on both.

## Architecture

### Position in the split project

```text
SGSupermanifolds
SGRiemannSurfaces
SGSuperRiemannSurfaces -> SGSupermanifolds, SGRiemannSurfaces
```

### Internal modules

- `StringGeometry/SuperRiemannSurfaces/Basic.lean`
  - core definitions of `(1|1)` super Riemann surfaces, superconformal
    distribution, spin-structure interface, and foundational local models.
- `StringGeometry/SuperRiemannSurfaces/SuperconformalMaps.lean`
  - local/global superconformal maps, Grassmann-holomorphic scaffolding,
    infinitesimal generators, and OSp(1|2)-related structures.
- `StringGeometry/SuperRiemannSurfaces/SuperModuli.lean`
  - supermoduli space data structures, expected dimension statements,
    projectedness obstruction interface, and Donagi-Witten theorem stubs.
- `StringGeometry/SuperRiemannSurfaces/TODO.md`
  - tracked proof gaps and implementation plan.

### Entry point

- `StringGeometry/SuperRiemannSurfaces.lean`
  - package-level entry point for the super Riemann surfaces library.
- `StringGeometry/SuperRiemannSurfaces/SuperRiemannSurfaces.lean`
  - umbrella import for core SRS modules.

## Build

```bash
lake update
lake build
```

## Quality Gate

Run the local quality guard before pushing:

```bash
./scripts/check_super_riemann_quality.sh
```

This script enforces:

1. no non-allowlisted `sorry` in `StringGeometry/SuperRiemannSurfaces`
2. targeted module compilation for the super Riemann surface stack

Allowlisted in-progress files are tracked in:

- `StringGeometry/SuperRiemannSurfaces/sorry_allowlist.txt`

## Dependency Wiring

`lakefile.lean` pins:

- `SGSupermanifolds` from `xiyin137/stringgeometry-supermanifolds`
- `SGRiemannSurfaces` from `xiyin137/stringgeometry-riemann-surfaces`

Dependencies are commit-pinned for reproducible builds; update pins explicitly
when adopting newer foundation revisions.

## Development Status

This repository is an active infrastructure layer with substantial in-progress
formalization. Core structures are present; deep theorem proofs (for example,
full supermoduli dimension/projection results) are tracked in:

- `StringGeometry/SuperRiemannSurfaces/TODO.md`

## CI

GitHub Actions workflow:

- `.github/workflows/lean-ci.yml`

Current triggers are intentionally limited to:

- `pull_request`
- `workflow_dispatch`

## Notes

- Namespace remains `StringGeometry.*` for compatibility with the umbrella and
  foundation repositories.
