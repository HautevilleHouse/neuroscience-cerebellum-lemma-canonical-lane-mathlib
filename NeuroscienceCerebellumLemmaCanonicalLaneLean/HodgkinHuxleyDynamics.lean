import NeuroscienceCerebellumLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumLemmaCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : Type u
  sodiumChannel : Type v
  potassiumChannel : Type w
  leakChannel : Type x
  gatingVariables : Prop
  ionCurrentEquations : Prop
  actionPotentialPropagation : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  gatingVariablesClosed : H.gatingVariables
  ionCurrentEquationsClosed : H.ionCurrentEquations
  actionPotentialPropagationClosed : H.actionPotentialPropagation

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.gatingVariables ∧ H.ionCurrentEquations ∧ H.actionPotentialPropagation

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.gatingVariablesClosed
    (And.intro E.ionCurrentEquationsClosed E.actionPotentialPropagationClosed)

end NeuroscienceCerebellumLemmaCanonicalLaneLean
end HautevilleHouse