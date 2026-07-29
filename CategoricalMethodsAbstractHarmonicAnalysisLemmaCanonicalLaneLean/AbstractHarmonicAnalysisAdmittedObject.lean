import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure AbstractHarmonicAnalysisSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AbstractHarmonicAnalysisAdmittedObject where
  space : AbstractHarmonicAnalysisSpace
  locallyCompactAbelianGroup : Prop
  haarMeasureExists : Prop
  conclusion : locallyCompactAbelianGroup ∧ haarMeasureExists

def AbstractHarmonicAnalysisWitnessClosed (O : AbstractHarmonicAnalysisAdmittedObject) : Prop :=
  O.locallyCompactAbelianGroup ∧ O.haarMeasureExists

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse
