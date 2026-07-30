import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumLemmaCanonicalLaneLean

structure HodgkinHuxleyModel where
  membraneCapacitance : ℝ
  sodiumConductance : ℝ
  potassiumConductance : ℝ
  leakConductance : ℝ
  sodiumReversalPotential : ℝ
  potassiumReversalPotential : ℝ
  leakReversalPotential : ℝ
  gatingVariables : ℕ
  equationsDefined : Prop

structure HodgkinHuxleyEvidence (M : HodgkinHuxleyModel) where
  equationsDefinedClosed : M.equationsDefined

def HodgkinHuxleyClosed (M : HodgkinHuxleyModel) : Prop :=
  M.equationsDefined

theorem hodgkin_huxley_closed_from_evidence (M : HodgkinHuxleyModel)
    (E : HodgkinHuxleyEvidence M) : HodgkinHuxleyClosed M :=
  E.equationsDefinedClosed

end NeuroscienceCerebellumLemmaCanonicalLaneLean
end HautevilleHouse
