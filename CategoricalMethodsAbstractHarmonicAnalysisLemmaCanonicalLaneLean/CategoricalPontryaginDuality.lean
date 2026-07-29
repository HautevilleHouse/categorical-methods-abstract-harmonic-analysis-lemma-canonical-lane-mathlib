import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure CategoricalPontryaginDualityPackage where
  locCompAbGroup : Type u
  dualGroup : Type v
  pontryaginDualityMap : Prop
  naturalIsoDoubleDual : Prop
  categoricalCompatibility : Prop

structure CategoricalPontryaginDualityEvidence (P : CategoricalPontryaginDualityPackage) where
  pontryaginDualityMapClosed : P.pontryaginDualityMap
  naturalIsoDoubleDualClosed : P.naturalIsoDoubleDual
  categoricalCompatibilityClosed : P.categoricalCompatibility

def CategoricalPontryaginDualityClosed (P : CategoricalPontryaginDualityPackage) : Prop :=
  P.pontryaginDualityMap ∧ P.naturalIsoDoubleDual ∧ P.categoricalCompatibility

theorem categorical_pontryagin_duality_closed_from_evidence (P : CategoricalPontryaginDualityPackage) (E : CategoricalPontryaginDualityEvidence P) : CategoricalPontryaginDualityClosed P := by
  exact And.intro E.pontryaginDualityMapClosed (And.intro E.naturalIsoDoubleDualClosed E.categoricalCompatibilityClosed)

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse
