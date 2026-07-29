import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean

structure KobayashiMetricPackage where
  complexManifold : Type u
  infinitesimalMetric : Type v
  holomorphicContraction : Prop
  biholomorphicInvariance : Prop
  completenessProperty : Prop

structure KobayashiMetricEvidence (P : KobayashiMetricPackage) where
  holomorphicContractionClosed : P.holomorphicContraction
  biholomorphicInvarianceClosed : P.biholomorphicInvariance
  completenessPropertyClosed : P.completenessProperty

def KobayashiMetricClosed (P : KobayashiMetricPackage) : Prop :=
  P.holomorphicContraction ∧ P.biholomorphicInvariance ∧ P.completenessProperty

theorem kobayashi_metric_closed_from_evidence (P : KobayashiMetricPackage) (E : KobayashiMetricEvidence P) :
    KobayashiMetricClosed P := by
  exact And.intro E.holomorphicContractionClosed (And.intro E.biholomorphicInvarianceClosed E.completenessPropertyClosed)

end ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean
end HautevilleHouse
