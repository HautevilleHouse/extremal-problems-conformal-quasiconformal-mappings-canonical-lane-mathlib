import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean

structure QuasiconformalMappingPackage {M N : Type u} [TopologicalSpace M] [TopologicalSpace N] where
  mapping : M → N
  dilatationBound : ℝ
  quasiconformalConstant : Prop
  distortionControl : Prop
  inverseDistortion : Prop

structure QuasiconformalMappingEvidence {M N : Type u} [TopologicalSpace M] [TopologicalSpace N] (Q : QuasiconformalMappingPackage M N) where
  quasiconformalConstantClosed : Q.quasiconformalConstant
  distortionControlClosed : Q.distortionControl
  inverseDistortionClosed : Q.inverseDistortion

def QuasiconformalMappingClosed {M N : Type u} [TopologicalSpace M] [TopologicalSpace N] (Q : QuasiconformalMappingPackage M N) : Prop :=
  Q.quasiconformalConstant ∧ Q.distortionControl ∧ Q.inverseDistortion

theorem quasiconformal_mapping_closed_from_evidence {M N : Type u} [TopologicalSpace M] [TopologicalSpace N] (Q : QuasiconformalMappingPackage M N) (E : QuasiconformalMappingEvidence Q) :
    QuasiconformalMappingClosed Q := by
  exact And.intro E.quasiconformalConstantClosed (And.intro E.distortionControlClosed E.inverseDistortionClosed)

end ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean
end HautevilleHouse