import HautevilleHouse.NeuroscienceCerebellumLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumLemmaCanonicalLaneLean

structure HodgkinHuxleyPackage (A : AdmissibleClass) where
  membranePotential : A.object.neuronState → ℝ
  gatingVariables : A.object.neuronState → ℝ × ℝ × ℝ
  ionicCurrents : Prop
  actionPotentialCondition : Prop
  axonHillockInitialSegment : Prop
  frequencyAdaptation : Prop

structure HodgkinHuxleyEvidence {A : AdmissibleClass} (H : HodgkinHuxleyPackage A) where
  ionicCurrentsClosed : H.ionicCurrents
  actionPotentialConditionClosed : H.actionPotentialCondition
  axonHillockInitialSegmentClosed : H.axonHillockInitialSegment
  frequencyAdaptationClosed : H.frequencyAdaptation

def HodgkinHuxleyClosed {A : AdmissibleClass} (H : HodgkinHuxleyPackage A) : Prop :=
  H.ionicCurrents ∧ H.actionPotentialCondition ∧ H.axonHillockInitialSegment ∧ H.frequencyAdaptation

theorem hodgkin_huxley_closed_from_evidence {A : AdmissibleClass} (H : HodgkinHuxleyPackage A) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.ionicCurrentsClosed
    (And.intro E.actionPotentialConditionClosed
      (And.intro E.axonHillockInitialSegmentClosed E.frequencyAdaptationClosed))

end NeuroscienceCerebellumLemmaCanonicalLaneLean
end HautevilleHouse