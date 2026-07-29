import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean

structure CapacityInequalityPackage where
  condenser : Type u
  capacity : Type v
  monotonicity : Prop
  subadditivity : Prop
  comparisonWithExtremalLength : Prop

structure CapacityInequalityEvidence (C : CapacityInequalityPackage) where
  monotonicityClosed : C.monotonicity
  subadditivityClosed : C.subadditivity
  comparisonWithExtremalLengthClosed : C.comparisonWithExtremalLength

def CapacityInequalityClosed (C : CapacityInequalityPackage) : Prop :=
  C.monotonicity ∧ C.subadditivity ∧ C.comparisonWithExtremalLength

theorem capacity_inequality_closed_from_evidence (C : CapacityInequalityPackage)
    (E : CapacityInequalityEvidence C) : CapacityInequalityClosed C := by
  exact And.intro E.monotonicityClosed (And.intro E.subadditivityClosed E.comparisonWithExtremalLengthClosed)

end ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean
end HautevilleHouse