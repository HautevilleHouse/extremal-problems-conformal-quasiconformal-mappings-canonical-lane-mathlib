import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean

structure GrotzschExtremalPackage where
  annulus : Type u
  conformalModulus : Prop
  extremalMap : Prop
  uniqueness : Prop

structure GrotzschExtremalEvidence (P : GrotzschExtremalPackage) where
  conformalModulusClosed : P.conformalModulus
  extremalMapClosed : P.extremalMap
  uniquenessClosed : P.uniqueness

def GrotzschExtremalClosed (P : GrotzschExtremalPackage) : Prop :=
  P.conformalModulus ∧ P.extremalMap ∧ P.uniqueness

theorem grotzsch_extremal_closed_from_evidence (P : GrotzschExtremalPackage) (E : GrotzschExtremalEvidence P) :
    GrotzschExtremalClosed P := by
  exact And.intro E.conformalModulusClosed (And.intro E.extremalMapClosed E.uniquenessClosed)

end ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean
end HautevilleHouse
