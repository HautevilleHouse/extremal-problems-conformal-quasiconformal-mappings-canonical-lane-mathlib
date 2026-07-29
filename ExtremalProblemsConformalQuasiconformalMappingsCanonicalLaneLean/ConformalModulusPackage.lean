import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean

structure ConformalModulusPackage where
  domain : Type u
  boundaryCondition : Type v
  modulusValue : ℝ
  conformalInvariance : Prop
  extremalRealization : Prop
  modulusValuePositive : modulusValue > 0
  conformalInvarianceClosed : conformalInvariance
  extremalRealizationClosed : extremalRealization

structure ConformalModulusEvidence (C : ConformalModulusPackage) where
  modulusValuePositiveClosed : C.modulusValuePositive
  conformalInvarianceClosed : C.conformalInvarianceClosed
  extremalRealizationClosed : C.extremalRealizationClosed

def ConformalModulusClosed (C : ConformalModulusPackage) : Prop :=
  C.modulusValue > 0 ∧ C.conformalInvariance ∧ C.extremalRealization

theorem conformal_modulus_closed_from_evidence (C : ConformalModulusPackage) (E : ConformalModulusEvidence C) :
    ConformalModulusClosed C := by
  exact And.intro E.modulusValuePositiveClosed (And.intro E.conformalInvarianceClosed E.extremalRealizationClosed)

end ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean
end HautevilleHouse
