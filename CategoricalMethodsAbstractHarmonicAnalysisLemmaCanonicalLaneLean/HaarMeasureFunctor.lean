import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure HaarMeasureFunctorPackage where
  sourceCategory : Type u
  targetCategory : Type v
  haarMeasureObject : sourceCategory → targetCategory
  functoriality : Prop
  leftInvariance : Prop
  uniqueness : Prop

structure HaarMeasureFunctorEvidence (H : HaarMeasureFunctorPackage) where
  functorialityClosed : H.functoriality
  leftInvarianceClosed : H.leftInvariance
  uniquenessClosed : H.uniqueness

def HaarMeasureFunctorClosed (H : HaarMeasureFunctorPackage) : Prop :=
  H.functoriality ∧ H.leftInvariance ∧ H.uniqueness

theorem haar_measure_functor_closed_from_evidence
    (H : HaarMeasureFunctorPackage) (E : HaarMeasureFunctorEvidence H) :
    HaarMeasureFunctorClosed H := by
  exact And.intro E.functorialityClosed (And.intro E.leftInvarianceClosed E.uniquenessClosed)

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse