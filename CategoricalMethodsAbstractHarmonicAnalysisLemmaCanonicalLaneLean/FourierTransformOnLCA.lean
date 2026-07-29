import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure FourierTransformOnLCAPackage where
  group : Type u
  groupTopology : TopologicalSpace group
  groupLaw : AddGroup group
  haarMeasure : MeasureTheory.Measure group
  dualGroup : Type v
  dualTopology : TopologicalSpace dualGroup
  fourierTransform : (group → ℂ) → (dualGroup → ℂ)
  inversionFormula : Prop
  plancherelTheorem : Prop
  pontryaginDuality : Prop

-- Evidence structure
def FourierTransformOnLCAClosed (F : FourierTransformOnLCAPackage) : Prop :=
  F.inversionFormula ∧ F.plancherelTheorem ∧ F.pontryaginDuality

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse
