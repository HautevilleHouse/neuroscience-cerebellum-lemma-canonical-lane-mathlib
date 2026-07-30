import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumLemmaCanonicalLaneLean

structure NeuralFieldPackage where
  fieldDynamics : Type u
  firingRateField : Type v
  synapticKernel : Type w
  cableEquation : Prop
  fieldEquilibrium : Prop
  propagationWellPosed : Prop

structure NeuralFieldEvidence (N : NeuralFieldPackage) where
  cableEquationClosed : N.cableEquation
  fieldEquilibriumClosed : N.fieldEquilibrium
  propagationWellPosedClosed : N.propagationWellPosed

def NeuralFieldClosed (N : NeuralFieldPackage) : Prop :=
  N.cableEquation ∧ N.fieldEquilibrium ∧ N.propagationWellPosed

theorem neural_field_closed_from_evidence (N : NeuralFieldPackage) (E : NeuralFieldEvidence N) :
    NeuralFieldClosed N := by
  exact And.intro E.cableEquationClosed (And.intro E.fieldEquilibriumClosed E.propagationWellPosedClosed)

end NeuroscienceCerebellumLemmaCanonicalLaneLean
end HautevilleHouse