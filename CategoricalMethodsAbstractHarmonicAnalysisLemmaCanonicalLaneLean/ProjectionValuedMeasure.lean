import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure ProjectionValuedMeasurePackage where
  measurableSpace : Type u
  projections : Type v
  spectralResolution : Prop
  orthogonalAdditivity : Prop
  continuity : Prop

structure ProjectionValuedMeasureEvidence (P : ProjectionValuedMeasurePackage) where
  spectralResolutionClosed : P.spectralResolution
  orthogonalAdditivityClosed : P.orthogonalAdditivity
  continuityClosed : P.continuity

def ProjectionValuedMeasureClosed (P : ProjectionValuedMeasurePackage) : Prop :=
  P.spectralResolution ∧ P.orthogonalAdditivity ∧ P.continuity

theorem projection_valued_measure_closed_from_evidence (P : ProjectionValuedMeasurePackage) (E : ProjectionValuedMeasureEvidence P) : ProjectionValuedMeasureClosed P := by
  exact And.intro E.spectralResolutionClosed (And.intro E.orthogonalAdditivityClosed E.continuityClosed)

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse
