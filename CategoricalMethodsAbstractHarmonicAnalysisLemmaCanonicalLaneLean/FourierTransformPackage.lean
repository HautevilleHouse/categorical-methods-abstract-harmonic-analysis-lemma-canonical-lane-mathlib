import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure FourierTransformPackage where
  sourceGroup : Type u
  targetGroup : Type v
  fourierTransform : Type w
  isIsomorphism : Prop
  plancherel : Prop
  inversionFormula : Prop

structure FourierTransformEvidence (F : FourierTransformPackage) where
  isIsomorphismClosed : F.isIsomorphism
  plancherelClosed : F.plancherel
  inversionFormulaClosed : F.inversionFormula

def FourierTransformClosed (F : FourierTransformPackage) : Prop :=
  F.isIsomorphism ∧ F.plancherel ∧ F.inversionFormula

theorem fourier_transform_closed_from_evidence (F : FourierTransformPackage) (E : FourierTransformEvidence F) : FourierTransformClosed F := by
  exact And.intro E.isIsomorphismClosed (And.intro E.plancherelClosed E.inversionFormulaClosed)

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse
