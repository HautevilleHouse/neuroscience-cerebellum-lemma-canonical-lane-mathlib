import NeuroscienceCerebellumLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace NeuroscienceCerebellumLemmaCanonicalLaneLean

def ConstrainedCerebellumClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cerebellum_endgame (A : AdmissibleClass) :
    ConstrainedCerebellumClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceCerebellumLemmaCanonicalLaneLean
end HautevilleHouse