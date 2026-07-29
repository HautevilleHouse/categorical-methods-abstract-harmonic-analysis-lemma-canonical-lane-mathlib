import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure GelfandTransformPackage where
  banachAlgebra : Type u
  spectrum : Type v
  gelfandTransform : Type w
  isIsometric : Prop
  isInvolutive : Prop
  imageDense : Prop

structure GelfandTransformEvidence (G : GelfandTransformPackage) where
  isIsometricClosed : G.isIsometric
  isInvolutiveClosed : G.isInvolutive
  imageDenseClosed : G.imageDense

def GelfandTransformClosed (G : GelfandTransformPackage) : Prop :=
  G.isIsometric ∧ G.isInvolutive ∧ G.imageDense

theorem gelfand_transform_closed_from_evidence (G : GelfandTransformPackage) (E : GelfandTransformEvidence G) : GelfandTransformClosed G := by
  exact And.intro E.isIsometricClosed (And.intro E.isInvolutiveClosed E.imageDenseClosed)

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse
