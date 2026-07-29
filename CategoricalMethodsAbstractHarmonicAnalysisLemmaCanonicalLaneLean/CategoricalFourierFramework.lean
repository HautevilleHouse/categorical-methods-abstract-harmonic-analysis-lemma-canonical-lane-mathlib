import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Fourier

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure CategoricalFourierFramework where
  locallyCompactGroup : Type u
  haarMeasure : MeasureTheory.Measure locallyCompactGroup
  dualGroup : Type v
  pontryaginDuality : Prop
  fourierTransform : (locallyCompactGroup → ℂ) → (dualGroup → ℂ)
  fourierInversion : Prop

structure CategoricalFourierEvidence (F : CategoricalFourierFramework) where
  haarMeasureClosed : F.haarMeasure = MeasureTheory.haarMeasure (G := F.locallyCompactGroup)
  pontryaginDualityClosed : F.pontryaginDuality
  fourierInversionClosed : F.fourierInversion

def CategoricalFourierClosed (F : CategoricalFourierFramework) : Prop :=
  F.pontryaginDuality ∧ F.fourierInversion

theorem categorical_fourier_closed_from_evidence (F : CategoricalFourierFramework)
    (E : CategoricalFourierEvidence F) : CategoricalFourierClosed F := by
  exact And.intro E.pontryaginDualityClosed E.fourierInversionClosed

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse