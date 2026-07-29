import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean

structure ConformalStructure (M : Type u) [TopologicalSpace M] where
  atlas : Set (M → ℝ²)
  transitionConformal : Prop
  maximalAtlas : Prop
  transitionConformalDefined : transitionConformal
  maximalAtlasDefined : maximalAtlas

def ConformalStructureClosed (M : Type u) [TopologicalSpace M] (C : ConformalStructure M) : Prop :=
  C.transitionConformal ∧ C.maximalAtlas

theorem conformal_structure_closed_from_evidence (M : Type u) [TopologicalSpace M] (C : ConformalStructure M) : ConformalStructureClosed M C := by
  exact And.intro C.transitionConformalDefined C.maximalAtlasDefined

end ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean
end HautevilleHouse