import NeuroscienceCerebellumLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace NeuroscienceCerebellumLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CerebellumSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CerebellumAdmittedObject where
  space : CerebellumSpace
  cerebellumModel : Prop
  purkinjeCellModel : Prop
  granuleCellModel : Prop
  cerebellumLemmaStatement : Prop
  conclusion : cerebellumLemmaStatement

def CerebellumWitnessClosed (O : CerebellumAdmittedObject) : Prop :=
  O.cerebellumLemmaStatement

end NeuroscienceCerebellumLemmaCanonicalLaneLean
end HautevilleHouse