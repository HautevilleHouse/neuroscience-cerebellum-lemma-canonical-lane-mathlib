import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumLemmaCanonicalLaneLean

structure ConnectomeGraph where
  nodeCount : ℕ
  edgeCount : ℕ
  adjacencyMatrix : Type u
  smallWorldProperty : Prop
  modularStructure : Prop
  connectivityProfile : Prop

structure ConnectomeEvidence (C : ConnectomeGraph) where
  smallWorldPropertyClosed : C.smallWorldProperty
  modularStructureClosed : C.modularStructure
  connectivityProfileClosed : C.connectivityProfile

def ConnectomeClosed (C : ConnectomeGraph) : Prop :=
  C.smallWorldProperty ∧ C.modularStructure ∧ C.connectivityProfile

theorem connectome_closed_from_evidence (C : ConnectomeGraph)
    (E : ConnectomeEvidence C) : ConnectomeClosed C :=
  And.intro E.smallWorldPropertyClosed
    (And.intro E.modularStructureClosed E.connectivityProfileClosed)

end NeuroscienceCerebellumLemmaCanonicalLaneLean
end HautevilleHouse
