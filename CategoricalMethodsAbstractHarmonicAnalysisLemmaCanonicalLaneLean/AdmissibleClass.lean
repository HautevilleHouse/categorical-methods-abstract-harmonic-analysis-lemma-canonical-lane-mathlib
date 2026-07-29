import CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : PoincareAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  PoincareWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse