import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumLemmaCanonicalLaneLean

structure CerebellumAdmittedObject where
  modelType : String
  scientificCitation : String
  bridgeSatisfied : Prop
  gateSatisfied : Prop
  conclusion : bridgeSatisfied ∨ gateSatisfied

structure CerebellumAdmissibleClass where
  object : CerebellumAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def cerebellumAdmittedClosure (A : CerebellumAdmissibleClass) : Prop :=
  CerebellumWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceCerebellumLemmaCanonicalLaneLean
end HautevilleHouse
