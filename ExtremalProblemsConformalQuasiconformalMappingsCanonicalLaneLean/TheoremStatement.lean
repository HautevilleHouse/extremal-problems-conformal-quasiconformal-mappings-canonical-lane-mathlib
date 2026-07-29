import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean

structure ExtremalAdmittedObject where
  domain : Type u
  codomain : Type v
  mappingProperty : Prop
  extremalExistence : Prop
  conclusion : extremalExistence

def ExtremalWitnessClosed (O : ExtremalAdmittedObject) : Prop :=
  O.extremalExistence

end ExtremalProblemsConformalQuasiconformalMappingsCanonicalLaneLean
end HautevilleHouse