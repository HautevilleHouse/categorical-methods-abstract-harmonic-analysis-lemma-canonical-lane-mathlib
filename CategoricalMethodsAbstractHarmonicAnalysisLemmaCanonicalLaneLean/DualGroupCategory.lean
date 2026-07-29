import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure DualGroupCategoryPackage where
  object : Type u
  topology : TopologicalSpace object
  groupStructure : Group object
  locallyCompact : Prop
  abelian : Prop
  dualObject : Type v
  dualTopology : TopologicalSpace dualObject
  dualGroupStructure : Group dualObject
  pontryaginDuality : Prop

structure DualGroupCategoryEvidence (P : DualGroupCategoryPackage) where
  locallyCompactClosed : P.locallyCompact
  abelianClosed : P.abelian
  pontryaginDualityClosed : P.pontryaginDuality

def DualGroupCategoryClosed (P : DualGroupCategoryPackage) : Prop :=
  P.locallyCompact ∧ P.abelian ∧ P.pontryaginDuality

theorem dual_group_category_closed_from_evidence (P : DualGroupCategoryPackage)
    (E : DualGroupCategoryEvidence P) : DualGroupCategoryClosed P := by
  exact And.intro E.locallyCompactClosed (And.intro E.abelianClosed E.pontryaginDualityClosed)

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse