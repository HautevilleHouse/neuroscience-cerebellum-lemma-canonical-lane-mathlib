import NeuroscienceCerebellumLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace NeuroscienceCerebellumLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CerebellumWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end NeuroscienceCerebellumLemmaCanonicalLaneLean
end HautevilleHouse