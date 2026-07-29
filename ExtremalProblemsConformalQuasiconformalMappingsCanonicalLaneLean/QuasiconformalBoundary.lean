import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean

structure QuasiconformalBoundaryPackage (M : Type u) [TopologicalSpace M] (C : ConformalStructure M) where
  dilatationBound : ℝ
  quasiconformalMapExistence : Prop
  boundaryRegularity : Prop
  extremalProblemDefined : Prop
  dilatationBoundPositive : dilatationBound > 0
  quasiconformalMapExistenceClosed : quasiconformalMapExistence
  boundaryRegularityClosed : boundaryRegularity
  extremalProblemDefinedClosed : extremalProblemDefined

structure QuasiconformalBoundaryEvidence (M : Type u) [TopologicalSpace M] (C : ConformalStructure M) (P : QuasiconformalBoundaryPackage M C) where
  quasiconformalMapExistenceClosed : P.quasiconformalMapExistence
  boundaryRegularityClosed : P.boundaryRegularity
  extremalProblemDefinedClosed : P.extremalProblemDefined

def QuasiconformalBoundaryClosed (M : Type u) [TopologicalSpace M] (C : ConformalStructure M) (P : QuasiconformalBoundaryPackage M C) : Prop :=
  P.quasiconformalMapExistence ∧ P.boundaryRegularity ∧ P.extremalProblemDefined

theorem quasiconformal_boundary_closed_from_evidence (M : Type u) [TopologicalSpace M] (C : ConformalStructure M) (P : QuasiconformalBoundaryPackage M C) (E : QuasiconformalBoundaryEvidence M C P) : QuasiconformalBoundaryClosed M C P := by
  exact And.intro E.quasiconformalMapExistenceClosed (And.intro E.boundaryRegularityClosed E.extremalProblemDefinedClosed)

end ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean
end HautevilleHouse