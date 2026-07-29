import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure AbstractHarmonicAnalysisAdmittedObject where
  locallyCompactGroup : Type u
  haarMeasure : MeasureTheory.Measure locallyCompactGroup
  dualGroup : Type v
  fourierInversionHolds : Prop

structure AbstractHarmonicAnalysisAdmissibleClass where
  object : AbstractHarmonicAnalysisAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def abstractHarmonicAnalysisAdmittedClosure (A : AbstractHarmonicAnalysisAdmissibleClass) : Prop :=
  A.object.fourierInversionHolds ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse
