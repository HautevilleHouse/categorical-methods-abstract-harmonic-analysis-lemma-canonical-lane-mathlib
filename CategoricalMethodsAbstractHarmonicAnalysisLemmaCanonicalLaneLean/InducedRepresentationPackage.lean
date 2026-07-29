import canonicalLaneMathlib.AdmissibleClass

/-!
# Induced Representation Package
-/

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure InducedRepresentationPackage where
  subgroup : Type u
  representation : Type v
  inducedRepresentationConstructed : Prop
  FrobeniusReciprocity : Prop
  MackeyDecomposition : Prop

structure InducedRepresentationEvidence (I : InducedRepresentationPackage) where
  inducedRepresentationConstructedClosed : I.inducedRepresentationConstructed
  FrobeniusReciprocityClosed : I.FrobeniusReciprocity
  MackeyDecompositionClosed : I.MackeyDecomposition

def InducedRepresentationClosed (I : InducedRepresentationPackage) : Prop :=
  I.inducedRepresentationConstructed ∧ I.FrobeniusReciprocity ∧ I.MackeyDecomposition

theorem induced_representation_closed_from_evidence
    (I : InducedRepresentationPackage) (E : InducedRepresentationEvidence I) :
    InducedRepresentationClosed I := by
  exact And.intro E.inducedRepresentationConstructedClosed
    (And.intro E.FrobeniusReciprocityClosed E.MackeyDecompositionClosed)

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse
