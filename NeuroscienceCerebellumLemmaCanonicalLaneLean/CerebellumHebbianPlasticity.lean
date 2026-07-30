import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumLemmaCanonicalLaneLean

structure HebbianPlasticityModel where
  synapseStrength : ℝ
  preSynapticActivity : ℝ
  postSynapticActivity : ℝ
  learningRate : ℝ
  timingWindow : ℝ
  stdpRule : Prop
  hebbianUpdateDefined : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityModel) where
  stdpRuleClosed : H.stdpRule
  hebbianUpdateDefinedClosed : H.hebbianUpdateDefined

def HebbianPlasticityClosed (H : HebbianPlasticityModel) : Prop :=
  H.stdpRule ∧ H.hebbianUpdateDefined

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityModel)
    (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H :=
  And.intro E.stdpRuleClosed E.hebbianUpdateDefinedClosed

end NeuroscienceCerebellumLemmaCanonicalLaneLean
end HautevilleHouse
