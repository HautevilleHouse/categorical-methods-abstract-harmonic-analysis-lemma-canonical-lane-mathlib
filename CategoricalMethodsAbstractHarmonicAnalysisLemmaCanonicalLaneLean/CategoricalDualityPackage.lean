import canonicalLaneMathlib.AdmissibleClass

/-!
# Categorical Duality Package
-/

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure CategoricalDualityPackage where
  dualGroup : Type u
  dualRepresentation : Type v
  pontryaginDualitySatisfied : Prop
  fourierTransformDefined : Prop
  PlancherelTheorem : Prop

structure CategoricalDualityEvidence (C : CategoricalDualityPackage) where
  pontryaginDualitySatisfiedClosed : C.pontryaginDualitySatisfied
  fourierTransformDefinedClosed : C.fourierTransformDefined
  PlancherelTheoremClosed : C.PlancherelTheorem

def CategoricalDualityClosed (C : CategoricalDualityPackage) : Prop :=
  C.pontryaginDualitySatisfied ∧ C.fourierTransformDefined ∧ C.PlancherelTheorem

theorem categorical_duality_closed_from_evidence
    (C : CategoricalDualityPackage) (E : CategoricalDualityEvidence C) :
    CategoricalDualityClosed C := by
  exact And.intro E.pontryaginDualitySatisfiedClosed
    (And.intro E.fourierTransformDefinedClosed E.PlancherelTheoremClosed)

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse
