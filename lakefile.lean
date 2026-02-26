import Lake
open Lake DSL

package "stringgeometry-super-riemann-surfaces" where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "master"

require SGSupermanifolds from git
  "https://github.com/xiyin137/stringgeometry-supermanifolds.git" @ "fc8efce"

require SGRiemannSurfaces from git
  "https://github.com/xiyin137/stringgeometry-riemann-surfaces.git" @ "62a9791"
lean_lib SGSuperRiemannSurfaces where
  roots := #[`StringGeometry.SuperRiemannSurfaces]
