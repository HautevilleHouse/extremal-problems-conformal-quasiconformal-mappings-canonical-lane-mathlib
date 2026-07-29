import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean

structure ExtremalLengthPackage (M : Type u) [TopologicalSpace M] where
  curveFamily : Set (Set M)
  extremalLength : ℝ
  conformalInvariance : Prop
  additivityProperty : Prop
  superadditivity : Prop

structure ExtremalLengthEvidence (E : ExtremalLengthPackage M) where
  conformalInvarianceClosed : E.conformalInvariance
  additivityPropertyClosed : E.additivityProperty
  superadditivityClosed : E.superadditivity

def ExtremalLengthClosed (E : ExtremalLengthPackage M) : Prop :=
  E.conformalInvariance ∧ E.additivityProperty ∧ E.superadditivity

theorem extremal_length_closed_from_evidence (E : ExtremalLengthPackage M) (Ev : ExtremalLengthEvidence E) :
    ExtremalLengthClosed E := by
  exact And.intro Ev.conformalInvarianceClosed (And.intro Ev.additivityPropertyClosed Ev.superadditivityClosed)

end ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean
end HautevilleHouse