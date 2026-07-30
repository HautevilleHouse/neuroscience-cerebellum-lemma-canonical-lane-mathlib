import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumLemmaCanonicalLaneLean

structure CerebellumCircuitPackage where
  purkinjeCell : Type u
  granuleCell : Type v
  climbingFiber : Type w
  parallelFiber : Type x
  deepCerebellarNucleus : Type y
  longTermDepressionInduction : Prop
  motorLearning : Prop
  timingControl : Prop
  errorSignalEncoding : Prop
  feedforwardInhibition : Prop

structure CerebellumCircuitEvidence (C : CerebellumCircuitPackage) where
  longTermDepressionInductionClosed : C.longTermDepressionInduction
  motorLearningClosed : C.motorLearning
  timingControlClosed : C.timingControl
  errorSignalEncodingClosed : C.errorSignalEncoding
  feedforwardInhibitionClosed : C.feedforwardInhibition

def CerebellumCircuitClosed (C : CerebellumCircuitPackage) : Prop :=
  C.longTermDepressionInduction ∧ C.motorLearning ∧
  C.timingControl ∧ C.errorSignalEncoding ∧ C.feedforwardInhibition

theorem cerebellum_circuit_closed_from_evidence (C : CerebellumCircuitPackage)
    (E : CerebellumCircuitEvidence C) : CerebellumCircuitClosed C := by
  exact And.intro E.longTermDepressionInductionClosed
    (And.intro E.motorLearningClosed
      (And.intro E.timingControlClosed
        (And.intro E.errorSignalEncodingClosed E.feedforwardInhibitionClosed)))

def CerebellumCircuitAdmissibleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem cerebellum_circuit_endgame (A : AdmissibleClass) :
    CerebellumCircuitAdmissibleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceCerebellumLemmaCanonicalLaneLean
end HautevilleHouse