import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumLemmaCanonicalLaneLean

/-!
# Cerebellum Circuit Dynamics Package

This module defines the circuit-level dynamics of the cerebellum including
parallel fiber-Purkinje cell synaptic plasticity (PF-PC LTD/LTP), climbing fiber
signals, and mossy fiber inputs. The package models the cerebellum as an
admissible-class object for bridge/gate closure.
-/

structure CerebellumCircuitPackage where
  parallelFiberPurkinjeCellLTD : Prop
  climbingFiberComplexSpike : Prop
  mossyFiberGranuleCellRelay : Prop
  feedforwardInhibition : Prop
  recurrentCircuit : Prop

def circuitBridge (C : CerebellumCircuitPackage) : Prop :=
  C.parallelFiberPurkinjeCellLTD ∧ C.climbingFiberComplexSpike

def circuitGate (C : CerebellumCircuitPackage) : Prop :=
  C.mossyFiberGranuleCellRelay ∧ C.feedforwardInhibition ∧ C.recurrentCircuit

end NeuroscienceCerebellumLemmaCanonicalLaneLean
end HautevilleHouse