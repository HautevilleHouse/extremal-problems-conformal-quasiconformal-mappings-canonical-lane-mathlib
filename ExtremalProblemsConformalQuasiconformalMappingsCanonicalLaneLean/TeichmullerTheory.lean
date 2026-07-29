import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean

structure TeichmullerTheoryPackage where
  moduliSpace : Type u
  extremalMap : Prop
  boundaryMap : Prop
  quasiconformalParameter : Prop

structure TeichmullerTheoryEvidence (T : TeichmullerTheoryPackage) where
  extremalMapClosed : T.extremalMap
  boundaryMapClosed : T.boundaryMap
  quasiconformalParameterClosed : T.quasiconformalParameter

def TeichmullerTheoryClosed (T : TeichmullerTheoryPackage) : Prop :=
  T.extremalMap ∧ T.boundaryMap ∧ T.quasiconformalParameter

theorem teichmuller_theory_closed_from_evidence (T : TeichmullerTheoryPackage)
    (E : TeichmullerTheoryEvidence T) : TeichmullerTheoryClosed T := by
  exact And.intro E.extremalMapClosed (And.intro E.boundaryMapClosed E.quasiconformalParameterClosed)

end ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean
end HautevilleHouse