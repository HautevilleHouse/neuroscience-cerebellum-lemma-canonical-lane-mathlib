import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumLemmaCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : Type u
  ionChannelGating : Type v
  cableConduction : Type w
  actionPotentialModel : Prop
  propagationDelay : Prop
  thresholdExistence : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  actionPotentialModelClosed : H.actionPotentialModel
  propagationDelayClosed : H.propagationDelay
  thresholdExistenceClosed : H.thresholdExistence

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.actionPotentialModel ∧ H.propagationDelay ∧ H.thresholdExistence

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.actionPotentialModelClosed (And.intro E.propagationDelayClosed E.thresholdExistenceClosed)

end NeuroscienceCerebellumLemmaCanonicalLaneLean
end HautevilleHouse