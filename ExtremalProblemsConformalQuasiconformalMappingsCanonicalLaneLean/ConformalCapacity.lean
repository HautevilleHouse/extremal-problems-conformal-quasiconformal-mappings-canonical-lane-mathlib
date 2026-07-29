import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean

structure ConformalCapacityPackage where
  domain : Type u
  topology : TopologicalSpace domain
  capacity : Prop
  extremalLength : Prop
  conformalInvariance : Prop

structure ConformalCapacityEvidence (C : ConformalCapacityPackage) where
  capacityClosed : C.capacity
  extremalLengthClosed : C.extremalLength
  conformalInvarianceClosed : C.conformalInvariance

def ConformalCapacityClosed (C : ConformalCapacityPackage) : Prop :=
  C.capacity ∧ C.extremalLength ∧ C.conformalInvariance

theorem conformal_capacity_closed_from_evidence (C : ConformalCapacityPackage)
    (E : ConformalCapacityEvidence C) : ConformalCapacityClosed C := by
  exact And.intro E.capacityClosed (And.intro E.extremalLengthClosed E.conformalInvarianceClosed)

end ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean
end HautevilleHouse