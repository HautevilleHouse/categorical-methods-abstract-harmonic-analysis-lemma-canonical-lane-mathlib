import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure AbstractHarmonicAnalysisLemmaPackage (C : CategoricalHarmonicAnalysisPackage) where
  vectorSpace : Type u
  topologicalGroup : Type v
  haarMeasure : Type w
  invariantIntegral : Prop
  characters : Type x
  pontryaginDuality : Prop
  fourierTransform : Type y
  plancherelFormula : Prop
  abstractLemma : Prop

structure AbstractHarmonicAnalysisLemmaEvidence {C : CategoricalHarmonicAnalysisPackage}
    (L : AbstractHarmonicAnalysisLemmaPackage C) where
  invariantIntegralClosed : L.invariantIntegral
  pontryaginDualityClosed : L.pontryaginDuality
  plancherelFormulaClosed : L.plancherelFormula
  abstractLemmaClosed : L.abstractLemma

def AbstractHarmonicAnalysisLemmaClosed {C : CategoricalHarmonicAnalysisPackage}
    (L : AbstractHarmonicAnalysisLemmaPackage C) : Prop :=
  L.invariantIntegral ∧ L.pontryaginDuality ∧ L.plancherelFormula ∧ L.abstractLemma

theorem abstract_harmonic_analysis_lemma_closed_from_evidence
    {C : CategoricalHarmonicAnalysisPackage} (L : AbstractHarmonicAnalysisLemmaPackage C)
    (E : AbstractHarmonicAnalysisLemmaEvidence L) : AbstractHarmonicAnalysisLemmaClosed L := by
  exact And.intro E.invariantIntegralClosed
    (And.intro E.pontryaginDualityClosed
      (And.intro E.plancherelFormulaClosed E.abstractLemmaClosed))

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse