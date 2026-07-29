import CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean.InducedRepresentation

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure HarmonicAnalysisSpace where
  group : LocallyCompactGroup
  haarMeasure : MeasureTheory.Measure group.carrier
  unimodular : Prop

theorem haar_measure_exists (G : LocallyCompactGroup) :
    ∃ μ : MeasureTheory.Measure G.carrier, MeasureTheory.IsHaarMeasure μ := by
  exact MeasureTheory.exists_isHaarMeasure G.carrier

structure HarmonicAnalysisAdmittedObject where
  space : HarmonicAnalysisSpace
  fourierTransform : FourierTransform space.group
  fourierEvidence : FourierTransformEvidence space.group fourierTransform
  inducedRep : InducedRepresentation space.group ⊤
  inducedRepEvidence : InducedRepresentationEvidence space.group ⊤ inducedRep
  conclusion : FourierTransformClosed space.group fourierTransform ∧
               InducedRepresentationClosed space.group ⊤ inducedRep

def HarmonicAnalysisWitnessClosed (O : HarmonicAnalysisAdmittedObject) : Prop :=
  let fc := O.fourierEvidence
  let ic := O.inducedRepEvidence
  FourierTransformClosed O.space.group O.fourierTransform ∧
  InducedRepresentationClosed O.space.group ⊤ O.inducedRep

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse