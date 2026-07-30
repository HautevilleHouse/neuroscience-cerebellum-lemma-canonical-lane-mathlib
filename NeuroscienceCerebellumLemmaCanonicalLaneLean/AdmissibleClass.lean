import NeuroscienceCerebellumLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace NeuroscienceCerebellumLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : CerebellumAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CerebellumWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceCerebellumLemmaCanonicalLaneLean
end HautevilleHouse