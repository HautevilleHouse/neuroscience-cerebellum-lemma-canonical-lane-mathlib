import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumLemmaCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : Type u
  sodiumCurrent : Type v
  potassiumCurrent : Type w
  leakageCurrent : Type x
  gatingVariables : Type y
  actionPotentialPropagated : Prop
  sodiumChannelDynamics : Prop
  potassiumChannelDynamics : Prop
  leakageConductance : Prop
  capacitance : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  actionPotentialPropagatedClosed : H.actionPotentialPropagated
  sodiumChannelDynamicsClosed : H.sodiumChannelDynamics
  potassiumChannelDynamicsClosed : H.potassiumChannelDynamics
  leakageConductanceClosed : H.leakageConductance
  capacitanceClosed : H.capacitance

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.actionPotentialPropagated ∧ H.sodiumChannelDynamics ∧
  H.potassiumChannelDynamics ∧ H.leakageConductance ∧ H.capacitance

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.actionPotentialPropagatedClosed
    (And.intro E.sodiumChannelDynamicsClosed
      (And.intro E.potassiumChannelDynamicsClosed
        (And.intro E.leakageConductanceClosed E.capacitanceClosed)))

end NeuroscienceCerebellumLemmaCanonicalLaneLean
end HautevilleHouse