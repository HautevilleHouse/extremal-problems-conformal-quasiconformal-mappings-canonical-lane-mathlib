import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean

structure ConformalCapacityPackage (M : Type u) [TopologicalSpace M] where
  domain : Set M
  capacity : ℝ
  capacityFinite : capacity < ∞
  conformalInvariance : Prop
  extremalMetric : Type v

structure ConformalCapacityEvidence (C : ConformalCapacityPackage M) where
  capacityFiniteClosed : C.capacityFinite
  conformalInvarianceClosed : C.conformalInvariance
  extremalMetricExists : Nonempty C.extremalMetric

def ConformalCapacityClosed (C : ConformalCapacityPackage M) : Prop :=
  C.capacityFinite ∧ C.conformalInvariance ∧ Nonempty C.extremalMetric

theorem conformal_capacity_closed_from_evidence (C : ConformalCapacityPackage M) (E : ConformalCapacityEvidence C) :
    ConformalCapacityClosed C := by
  exact And.intro E.capacityFiniteClosed (And.intro E.conformalInvarianceClosed E.extremalMetricExists)

end ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean
end HautevilleHouse