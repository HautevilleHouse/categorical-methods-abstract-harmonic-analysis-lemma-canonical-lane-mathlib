import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure PontryaginDualityPackage where
  locallyCompactAbelianGroup : Type u
  dualGroup : Type v
  bidualIsomorphism : Prop
  dualityNatural : Prop

structure PontryaginDualityEvidence (P : PontryaginDualityPackage) where
  bidualIsomorphismClosed : P.bidualIsomorphism
  dualityNaturalClosed : P.dualityNatural

def PontryaginDualityClosed (P : PontryaginDualityPackage) : Prop :=
  P.bidualIsomorphism ∧ P.dualityNatural

theorem pontryagin_duality_closed_from_evidence
    (P : PontryaginDualityPackage) (E : PontryaginDualityEvidence P) :
    PontryaginDualityClosed P := by
  exact And.intro E.bidualIsomorphismClosed E.dualityNaturalClosed

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse