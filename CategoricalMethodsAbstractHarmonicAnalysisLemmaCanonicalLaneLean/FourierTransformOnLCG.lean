import CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean.CategoryOfLocallyCompactGroups

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure FourierTransform (G : LocallyCompactGroup) where
  dualGroup : LocallyCompactGroup
  transform : (G.carrier → ℂ) → (dualGroup.carrier → ℂ)
  inversionFormula : Prop
  plancherelTheorem : Prop

structure FourierTransformEvidence (G : LocallyCompactGroup) (F : FourierTransform G) where
  inversionFormulaClosed : F.inversionFormula
  plancherelTheoremClosed : F.plancherelTheorem

def FourierTransformClosed (G : LocallyCompactGroup) (F : FourierTransform G) : Prop :=
  F.inversionFormula ∧ F.plancherelTheorem

theorem fourier_transform_closed_from_evidence (G : LocallyCompactGroup) (F : FourierTransform G)
    (E : FourierTransformEvidence G F) : FourierTransformClosed G F := by
  exact And.intro E.inversionFormulaClosed E.plancherelTheoremClosed

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse