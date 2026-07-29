import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean

structure BoundaryCorrespondencePackage where
  domain : Type u
  codomain : Type v
  boundaryMap : Type w
  quasiconformalExtension : Prop
  boundaryMapLifts : Prop
  quasiconformalExtensionClosed : quasiconformalExtension
  boundaryMapLiftsClosed : boundaryMapLifts

structure BoundaryCorrespondenceEvidence (B : BoundaryCorrespondencePackage) where
  quasiconformalExtensionClosed : B.quasiconformalExtensionClosed
  boundaryMapLiftsClosed : B.boundaryMapLiftsClosed

def BoundaryCorrespondenceClosed (B : BoundaryCorrespondencePackage) : Prop :=
  B.quasiconformalExtension ∧ B.boundaryMapLifts

theorem boundary_correspondence_closed_from_evidence (B : BoundaryCorrespondencePackage) (E : BoundaryCorrespondenceEvidence B) :
    BoundaryCorrespondenceClosed B := by
  exact And.intro E.quasiconformalExtensionClosed E.boundaryMapLiftsClosed

end ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean
end HautevilleHouse
