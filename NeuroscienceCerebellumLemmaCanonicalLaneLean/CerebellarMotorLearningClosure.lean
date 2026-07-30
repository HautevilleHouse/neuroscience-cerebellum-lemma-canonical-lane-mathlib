import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceCerebellumLemmaCanonicalLaneLean.CerebellarMicrocircuitConnectomics
import HautevilleHouse.NeuroscienceCerebellumLemmaCanonicalLaneLean.HebbianSynapticPlasticity
import HautevilleHouse.NeuroscienceCerebellumLemmaCanonicalLaneLean.HodgkinHuxleyCableModel
import HautevilleHouse.NeuroscienceCerebellumLemmaCanonicalLaneLean.CerebellumNeuralFieldTheory

namespace HautevilleHouse
namespace NeuroscienceCerebellumLemmaCanonicalLaneLean

structure CerebellarMotorLearningPackage where
  connectomics : ConnectomicsPackage
  plasticity : HebbianPlasticityPackage
  cable : HodgkinHuxleyPackage
  field : NeuralFieldPackage
  motorLearningConvergence : Prop
  errorFeedbackLoop : Prop
  timingDependentPlasticity : Prop

structure CerebellarMotorLearningEvidence (L : CerebellarMotorLearningPackage) where
  connectomicsClosed : ConnectomicsClosed L.connectomics
  plasticityClosed : HebbianPlasticityClosed L.plasticity
  cableClosed : HodgkinHuxleyClosed L.cable
  fieldClosed : NeuralFieldClosed L.field
  motorLearningConvergenceClosed : L.motorLearningConvergence
  errorFeedbackLoopClosed : L.errorFeedbackLoop
  timingDependentPlasticityClosed : L.timingDependentPlasticity

def CerebellarMotorLearningClosed (L : CerebellarMotorLearningPackage) : Prop :=
  ConnectomicsClosed L.connectomics ∧ HebbianPlasticityClosed L.plasticity ∧
  HodgkinHuxleyClosed L.cable ∧ NeuralFieldClosed L.field ∧
  L.motorLearningConvergence ∧ L.errorFeedbackLoop ∧ L.timingDependentPlasticity

theorem cerebellar_motor_learning_closed_from_evidence
    (L : CerebellarMotorLearningPackage) (E : CerebellarMotorLearningEvidence L) :
    CerebellarMotorLearningClosed L := by
  exact And.intro E.connectomicsClosed
    (And.intro E.plasticityClosed
      (And.intro E.cableClosed
        (And.intro E.fieldClosed
          (And.intro E.motorLearningConvergenceClosed
            (And.intro E.errorFeedbackLoopClosed E.timingDependentPlasticityClosed)))))

end NeuroscienceCerebellumLemmaCanonicalLaneLean
end HautevilleHouse