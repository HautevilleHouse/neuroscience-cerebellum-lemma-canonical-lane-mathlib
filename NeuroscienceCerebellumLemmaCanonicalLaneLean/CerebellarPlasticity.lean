import NeuroscienceCerebellumLemmaCanonicalLaneLean.HodgkinHuxleyDynamics

namespace HautevilleHouse
namespace NeuroscienceCerebellumLemmaCanonicalLaneLean

structure HebbianPlasticityPackage (H : HodgkinHuxleyPackage) where
  synapticWeight : Type u
  ltpMechanism : Prop
  ltdMechanism : Prop
  spikeTimingDependence : Prop
  calciumDynamics : Prop

structure HebbianPlasticityEvidence {H : HodgkinHuxleyPackage}
    (P : HebbianPlasticityPackage H) where
  ltpMechanismClosed : P.ltpMechanism
  ltdMechanismClosed : P.ltdMechanism
  spikeTimingDependenceClosed : P.spikeTimingDependence
  calciumDynamicsClosed : P.calciumDynamics

def HebbianPlasticityClosed {H : HodgkinHuxleyPackage}
    (P : HebbianPlasticityPackage H) : Prop :=
  P.ltpMechanism ∧ P.ltdMechanism ∧ P.spikeTimingDependence ∧ P.calciumDynamics

theorem hebbian_plasticity_closed_from_evidence {H : HodgkinHuxleyPackage}
    (P : HebbianPlasticityPackage H) (E : HebbianPlasticityEvidence P) :
    HebbianPlasticityClosed P := by
  exact And.intro E.ltpMechanismClosed
    (And.intro E.ltdMechanismClosed
      (And.intro E.spikeTimingDependenceClosed E.calciumDynamicsClosed))

end NeuroscienceCerebellumLemmaCanonicalLaneLean
end HautevilleHouse