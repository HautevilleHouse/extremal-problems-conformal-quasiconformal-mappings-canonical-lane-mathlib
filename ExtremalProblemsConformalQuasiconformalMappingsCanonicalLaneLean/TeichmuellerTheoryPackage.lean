import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean

structure TeichmuellerTheoryPackage where
  teichmuellerMapping : Type u → Type u
  extremalProblem : Prop
  uniqueExtremal : Prop
  boundaryCorrespondence : Prop

structure TeichmuellerTheoryEvidence (T : TeichmuellerTheoryPackage) where
  extremalProblemClosed : T.extremalProblem
  uniqueExtremalClosed : T.uniqueExtremal
  boundaryCorrespondenceClosed : T.boundaryCorrespondence

def TeichmuellerTheoryClosed (T : TeichmuellerTheoryPackage) : Prop :=
  T.extremalProblem ∧ T.uniqueExtremal ∧ T.boundaryCorrespondence

theorem teichmueller_theory_closed_from_evidence (T : TeichmuellerTheoryPackage) (E : TeichmuellerTheoryEvidence T) :
    TeichmuellerTheoryClosed T := by
  exact And.intro E.extremalProblemClosed (And.intro E.uniqueExtremalClosed E.boundaryCorrespondenceClosed)

end ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean
end HautevilleHouse