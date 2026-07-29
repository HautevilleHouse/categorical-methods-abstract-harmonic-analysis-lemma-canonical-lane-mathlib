import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure HaarMeasurePackage where
  group : Type u
  topology : TopologicalSpace group
  groupStructure : Group group
  locallyCompact : Prop
  haarMeasure : group → ℝ
  leftInvariant : Prop
  uniquenessUpToScale : Prop
  existence : Prop

structure HaarMeasureEvidence (H : HaarMeasurePackage) where
  locallyCompactClosed : H.locallyCompact
  leftInvariantClosed : H.leftInvariant
  uniquenessUpToScaleClosed : H.uniquenessUpToScale
  existenceClosed : H.existence

def HaarMeasureClosed (H : HaarMeasurePackage) : Prop :=
  H.locallyCompact ∧ H.leftInvariant ∧ H.uniquenessUpToScale ∧ H.existence

theorem haar_measure_closed_from_evidence (H : HaarMeasurePackage)
    (E : HaarMeasureEvidence H) : HaarMeasureClosed H := by
  exact And.intro E.locallyCompactClosed (And.intro E.leftInvariantClosed
    (And.intro E.uniquenessUpToScaleClosed E.existenceClosed))

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse