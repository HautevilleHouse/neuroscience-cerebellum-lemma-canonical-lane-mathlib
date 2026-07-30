import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumLemmaCanonicalLaneLean

structure HebbianPlasticityPackage where
  weightDynamics : Type u
  learningRule : Type v
  spikeTiming : Type w
  hebbianCovariance : Prop
  synapticScaling : Prop
  stabilityCondition : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  hebbianCovarianceClosed : H.hebbianCovariance
  synapticScalingClosed : H.synapticScaling
  stabilityConditionClosed : H.stabilityCondition

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.hebbianCovariance ∧ H.synapticScaling ∧ H.stabilityCondition

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.hebbianCovarianceClosed (And.intro E.synapticScalingClosed E.stabilityConditionClosed)

end NeuroscienceCerebellumLemmaCanonicalLaneLean
end HautevilleHouse