import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure CategoricalHarmonicAnalysisPackage where
  category : Type u
  object : Type v
  morphism : Type w
  compositionLaw : Prop
  identityMorphism : Prop
  associativityLaw : Prop
  unitLaw : Prop

structure CategoricalHarmonicAnalysisEvidence (C : CategoricalHarmonicAnalysisPackage) where
  compositionLawClosed : C.compositionLaw
  identityMorphismClosed : C.identityMorphism
  associativityLawClosed : C.associativityLaw
  unitLawClosed : C.unitLaw

def CategoricalHarmonicAnalysisClosed (C : CategoricalHarmonicAnalysisPackage) : Prop :=
  C.compositionLaw ∧ C.identityMorphism ∧ C.associativityLaw ∧ C.unitLaw

theorem categorical_harmonic_analysis_closed_from_evidence
    (C : CategoricalHarmonicAnalysisPackage) (E : CategoricalHarmonicAnalysisEvidence C) :
    CategoricalHarmonicAnalysisClosed C := by
  exact And.intro E.compositionLawClosed
    (And.intro E.identityMorphismClosed
      (And.intro E.associativityLawClosed E.unitLawClosed))

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse