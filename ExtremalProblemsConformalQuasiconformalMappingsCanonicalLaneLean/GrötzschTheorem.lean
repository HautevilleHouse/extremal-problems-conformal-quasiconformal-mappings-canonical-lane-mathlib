import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean

structure GrötzschTheoremPackage where
  annulus : Type u
  extremalMapping : Prop
  modulusInequality : Prop
  symmetryProperty : Prop

structure GrötzschTheoremEvidence (G : GrötzschTheoremPackage) where
  extremalMappingClosed : G.extremalMapping
  modulusInequalityClosed : G.modulusInequality
  symmetryPropertyClosed : G.symmetryProperty

def GrötzschTheoremClosed (G : GrötzschTheoremPackage) : Prop :=
  G.extremalMapping ∧ G.modulusInequality ∧ G.symmetryProperty

theorem grötzsch_theorem_closed_from_evidence (G : GrötzschTheoremPackage)
    (E : GrötzschTheoremEvidence G) : GrötzschTheoremClosed G := by
  exact And.intro E.extremalMappingClosed (And.intro E.modulusInequalityClosed E.symmetryPropertyClosed)

end ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean
end HautevilleHouse