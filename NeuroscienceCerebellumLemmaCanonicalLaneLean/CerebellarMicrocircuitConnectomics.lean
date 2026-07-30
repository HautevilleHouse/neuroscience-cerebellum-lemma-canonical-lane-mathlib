import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumLemmaCanonicalLaneLean

structure ConnectomicsPackage where
  synapticConnectivity : Type u
  circuitTopology : Type v
  granuleCellLayer : Prop
  purkinjeCellInhibition : Prop
  parallelFiberOrganization : Prop
  climbingFiberInput : Prop

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  granuleCellLayerClosed : C.granuleCellLayer
  purkinjeCellInhibitionClosed : C.purkinjeCellInhibition
  parallelFiberOrganizationClosed : C.parallelFiberOrganization
  climbingFiberInputClosed : C.climbingFiberInput

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.granuleCellLayer ∧ C.purkinjeCellInhibition ∧
  C.parallelFiberOrganization ∧ C.climbingFiberInput

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage) (E : ConnectomicsEvidence C) :
    ConnectomicsClosed C := by
  exact And.intro E.granuleCellLayerClosed
    (And.intro E.purkinjeCellInhibitionClosed
      (And.intro E.parallelFiberOrganizationClosed E.climbingFiberInputClosed))

end NeuroscienceCerebellumLemmaCanonicalLaneLean
end HautevilleHouse