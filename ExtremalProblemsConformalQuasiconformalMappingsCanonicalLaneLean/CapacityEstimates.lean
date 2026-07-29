import canonicalLaneMathlib.AdmissibleClass

/-!
# Capacity Estimates for Conformal Modulus

This module formalizes the geometric quantity of conformal capacity and its
role in extremal problems for conformal and quasiconformal mappings.
-/

namespace HautevilleHouse
namespace ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean

structure ConformalCapacityPackage where
  domain : Type u
  topology : TopologicalSpace domain
  condenser : Set domain × Set domain
  capacity : ℝ
  admissibleFunctionFamily : Type v
  dirichletEnergyFunctional : (domain → ℝ) → ℝ
  capacityFromDefinition : capacity = Inf { dirichletEnergyFunctional u | u ∈ admissibleFunctionFamily }

structure ConformalCapacityEvidence (C : ConformalCapacityPackage) where
  capacityNonnegative : C.capacity ≥ 0
  monotonicity : ∀ (E F : Set C.domain), E ⊆ F.capacity → C.capacity ≤ F.capacity
  conformalInvarianceUnderBiholomorphism : Prop

structure ConformalCapacityClosed (C : ConformalCapacityPackage) : Prop := mk :: (
  capacityNonnegative : C.capacity ≥ 0
  monotonicity : ∀ (E F : Set C.domain), E ⊆ F.capacity → C.capacity ≤ F.capacity
  )

theorem capacity_closed_from_evidence (C : ConformalCapacityPackage)
    (E : ConformalCapacityEvidence C) : ConformalCapacityClosed C := by
  exact ConformalCapacityClosed.mk E.capacityNonnegative E.monotonicity

end ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean
end HautevilleHouse