import HautevilleHouse.NeuroscienceCerebellumLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumLemmaCanonicalLaneLean

structure HebbianPlasticityPackage (A : AdmissibleClass) where
  ltpCondition : Prop
  ltdCondition : Prop
  spikeTimingDependentPlasticity : Prop
  cerebellarLTP : Prop
  parallelFiberSTDP : Prop
  climbingFiberLTD : Prop

structure HebbianPlasticityEvidence {A : AdmissibleClass} (H : HebbianPlasticityPackage A) where
  ltpConditionClosed : H.ltpCondition
  ltdConditionClosed : H.ltdCondition
  spikeTimingDependentPlasticityClosed : H.spikeTimingDependentPlasticity
  cerebellarLTPClosed : H.cerebellarLTP
  parallelFiberSTDPClosed : H.parallelFiberSTDP
  climbingFiberLTDClosed : H.climbingFiberLTD

def HebbianPlasticityClosed {A : AdmissibleClass} (H : HebbianPlasticityPackage A) : Prop :=
  H.ltpCondition ∧ H.ltdCondition ∧ H.spikeTimingDependentPlasticity ∧
  H.cerebellarLTP ∧ H.parallelFiberSTDP ∧ H.climbingFiberLTD

theorem hebbian_plasticity_closed_from_evidence {A : AdmissibleClass} (H : HebbianPlasticityPackage A) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.ltpConditionClosed
    (And.intro E.ltdConditionClosed
      (And.intro E.spikeTimingDependentPlasticityClosed
        (And.intro E.cerebellarLTPClosed
          (And.intro E.parallelFiberSTDPClosed E.climbingFiberLTDClosed))))

end NeuroscienceCerebellumLemmaCanonicalLaneLean
end HautevilleHouse