import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure FourierTransformPackage where
  group : Type u
  topology : TopologicalSpace group
  groupStructure : CommGroup group
  haarMeasure : group → ℝ
  characterGroup : Type v
  characterTopology : TopologicalSpace characterGroup
  fourierTransform : (group → ℂ) → (characterGroup → ℂ)
  isIsometry : Prop
  inversionFormula : Prop

structure FourierTransformEvidence (F : FourierTransformPackage) where
  haarMeasureClosed : Prop
  isIsometryClosed : F.isIsometry
  inversionFormulaClosed : F.inversionFormula

def FourierTransformClosed (F : FourierTransformPackage) : Prop :=
  F.isIsometry ∧ F.inversionFormula

theorem fourier_transform_closed_from_evidence (F : FourierTransformPackage)
    (E : FourierTransformEvidence F) : FourierTransformClosed F := by
  exact And.intro E.isIsometryClosed E.inversionFormulaClosed

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse