import canonicalLaneMathlib.AdmissibleClass

/-!
# Extremal Length Package

Extremal length is a conformal invariant introduced by Ahlfors and Beurling.
It provides a bridge between analytic capacity and geometric function theory.
-/

namespace HautevilleHouse
namespace ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean

structure ExtremalLengthPackage where
  domain : Type u
  topology : TopologicalSpace domain
  curveFamily : Set (Set domain × Set domain)
  extremalLength : ℝ
  conformalInvariance : Prop

structure ExtremalLengthEvidence (E : ExtremalLengthPackage) where
  extremalLengthPositive : E.extremalLength > 0
  conformalInvarianceClosed : E.conformalInvariance

structure ExtremalLengthClosed (E : ExtremalLengthPackage) : Prop := mk :: (
  extremalLengthPositive : E.extremalLength > 0
  conformalInvarianceClosed : E.conformalInvariance
  )

theorem extremal_length_closed_from_evidence (E : ExtremalLengthPackage)
    (Ev : ExtremalLengthEvidence E) : ExtremalLengthClosed E := by
  exact ExtremalLengthClosed.mk Ev.extremalLengthPositive Ev.conformalInvarianceClosed

end ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean
end HautevilleHouse