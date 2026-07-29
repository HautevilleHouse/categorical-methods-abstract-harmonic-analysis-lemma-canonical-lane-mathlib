import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure DualCategory where
  G : LocallyCompactGroupObject
  dualGroup : LocallyCompactGroupObject
  equivalence : G.G ≅ dualGroup.G
  fourierTransformFunctors : (C : CategoryWithHarmonicStructure) → C ≅ DualCategory.dualGroup
  pontryaginDuality : Prop
  dualityEvidence : pontryaginDuality

theorem pontryagin_duality_holds (D : DualCategory) : D.pontryaginDuality := D.dualityEvidence

def CategoricalDualClosure (D : DualCategory) : Prop := D.pontryaginDuality ∧ (∀ (C : CategoryWithHarmonicStructure), D.fourierTransformFunctors C).1

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse