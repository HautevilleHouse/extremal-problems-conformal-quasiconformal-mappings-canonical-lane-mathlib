import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean

structure ExtremalMappingsPackage where
  mapping : Type u
  boundaryCondition : Type v
  dilatationFunctional : ℝ
  extremalValue : ℝ
  extremalAttained : Prop
  uniqueness : Prop
  extremalValuePositive : extremalValue > 0
  extremalAttainedClosed : extremalAttained
  uniquenessClosed : uniqueness

structure ExtremalMappingsEvidence (E : ExtremalMappingsPackage) where
  extremalValuePositiveClosed : E.extremalValuePositive
  extremalAttainedClosed : E.extremalAttainedClosed
  uniquenessClosed : E.uniquenessClosed

def ExtremalMappingsClosed (E : ExtremalMappingsPackage) : Prop :=
  E.extremalValue > 0 ∧ E.extremalAttained ∧ E.uniqueness

theorem extremal_mappings_closed_from_evidence (E : ExtremalMappingsPackage) (Ev : ExtremalMappingsEvidence E) :
    ExtremalMappingsClosed E := by
  exact And.intro Ev.extremalValuePositiveClosed (And.intro Ev.extremalAttainedClosed Ev.uniquenessClosed)

end ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean
end HautevilleHouse
