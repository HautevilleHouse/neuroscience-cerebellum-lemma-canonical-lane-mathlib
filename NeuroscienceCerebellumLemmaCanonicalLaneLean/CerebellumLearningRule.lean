import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCerebellumLemmaCanonicalLaneLean

/-!
# Cerebellum Learning Rule Package

This module formalizes Hebbian and anti-Hebbian learning rules at PF-PC synapses,
including the covariance rule and spike-timing-dependent plasticity (STDP).
-/

structure CerebellumLearningPackage where
  hebbianLTP : Prop
  antiHebbianLTD : Prop
  covarianceRule : Prop
  stdpWindow : Prop
  calciumDynamics : Prop

def learningBridge (L : CerebellumLearningPackage) : Prop :=
  L.hebbianLTP ∧ L.antiHebbianLTD ∧ L.covarianceRule

def learningGate (L : CerebellumLearningPackage) : Prop :=
  L.stdpWindow ∧ L.calciumDynamics

end NeuroscienceCerebellumLemmaCanonicalLaneLean
end HautevilleHouse