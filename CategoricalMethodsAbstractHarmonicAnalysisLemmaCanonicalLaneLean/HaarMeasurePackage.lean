import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure HaarMeasurePackage where
  group : Type u
  topology : TopologicalSpace group
  groupLaw : Group group
  haarMeasure : Type v
  leftInvariant : Prop
  regularOnCompactSets : Prop
  uniqueness : Prop

structure HaarMeasureEvidence (H : HaarMeasurePackage) where
  leftInvariantClosed : H.leftInvariant
  regularOnCompactSetsClosed : H.regularOnCompactSets
  uniquenessClosed : H.uniqueness

def HaarMeasureClosed (H : HaarMeasurePackage) : Prop :=
  H.leftInvariant ∧ H.regularOnCompactSets ∧ H.uniqueness

theorem haar_measure_closed_from_evidence (H : HaarMeasurePackage) (E : HaarMeasureEvidence H) : HaarMeasureClosed H := by
  exact And.intro E.leftInvariantClosed (And.intro E.regularOnCompactSetsClosed E.uniquenessClosed)

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse
