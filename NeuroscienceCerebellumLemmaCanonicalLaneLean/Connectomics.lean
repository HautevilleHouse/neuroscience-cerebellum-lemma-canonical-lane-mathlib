import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumLemmaCanonicalLaneLean

structure ConnectomicsPackage where
  synapseList : Type u
  neuronGraph : Type v
  connectivityMatrix : Type w
  networkMotifs : Type x
  smallWorldProperty : Prop
  modularOrganization : Prop
  degreeDistribution : Prop
  clusteringCoefficient : Prop
  pathLengthDistribution : Prop
  hubIdentification : Prop

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  smallWorldPropertyClosed : C.smallWorldProperty
  modularOrganizationClosed : C.modularOrganization
  degreeDistributionClosed : C.degreeDistribution
  clusteringCoefficientClosed : C.clusteringCoefficient
  pathLengthDistributionClosed : C.pathLengthDistribution
  hubIdentificationClosed : C.hubIdentification

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.smallWorldProperty ∧ C.modularOrganization ∧
  C.degreeDistribution ∧ C.clusteringCoefficient ∧
  C.pathLengthDistribution ∧ C.hubIdentification

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage)
    (E : ConnectomicsEvidence C) : ConnectomicsClosed C := by
  exact And.intro E.smallWorldPropertyClosed
    (And.intro E.modularOrganizationClosed
      (And.intro E.degreeDistributionClosed
        (And.intro E.clusteringCoefficientClosed
          (And.intro E.pathLengthDistributionClosed E.hubIdentificationClosed))))

end NeuroscienceCerebellumLemmaCanonicalLaneLean
end HautevilleHouse