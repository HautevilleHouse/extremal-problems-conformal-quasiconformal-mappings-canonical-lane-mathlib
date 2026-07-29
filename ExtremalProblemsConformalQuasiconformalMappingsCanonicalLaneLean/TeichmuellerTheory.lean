import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean

structure TeichmuellerTheoryPackage where
  mapping : Type u
  dilatationBound : ℝ
  extremalFraming : Prop
  quadraticDifferential : Type v
  dilatationBoundPositive : dilatationBound > 0
  extremalFramingClosed : extremalFraming

structure TeichmuellerTheoryEvidence (T : TeichmuellerTheoryPackage) where
  dilatationBoundPositiveClosed : T.dilatationBoundPositive
  extremalFramingClosed : T.extremalFramingClosed

def TeichmuellerTheoryClosed (T : TeichmuellerTheoryPackage) : Prop :=
  T.dilatationBound > 0 ∧ T.extremalFraming

theorem teichmueller_theory_closed_from_evidence (T : TeichmuellerTheoryPackage) (E : TeichmuellerTheoryEvidence T) :
    TeichmuellerTheoryClosed T := by
  exact And.intro E.dilatationBoundPositiveClosed E.extremalFramingClosed

end ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean
end HautevilleHouse
