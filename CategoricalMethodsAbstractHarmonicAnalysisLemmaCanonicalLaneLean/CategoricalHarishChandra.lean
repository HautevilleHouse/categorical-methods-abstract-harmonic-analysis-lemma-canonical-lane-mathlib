import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure CategoricalHarishChandraPackage {G : HarmonicObject} where
  compactInductionData : Prop
  discreteSeriesParameters : Prop
  unitaryStructurePreserved : Prop
  functoriality : Prop

structure CategoricalHarishChandraEvidence {G : HarmonicObject}
    (C : CategoricalHarishChandraPackage G) where
  compactInductionDataClosed : C.compactInductionData
  discreteSeriesParametersClosed : C.discreteSeriesParameters
  unitaryStructurePreservedClosed : C.unitaryStructurePreserved
  functorialityClosed : C.functoriality

def CategoricalHarishChandraClosed {G : HarmonicObject}
    (C : CategoricalHarishChandraPackage G) : Prop :=
  C.compactInductionData ∧ C.discreteSeriesParameters ∧
  C.unitaryStructurePreserved ∧ C.functoriality

theorem categorical_harish_chandra_closed_from_evidence
    {G : HarmonicObject} (C : CategoricalHarishChandraPackage G)
    (E : CategoricalHarishChandraEvidence C) : CategoricalHarishChandraClosed C := by
  exact And.intro E.compactInductionDataClosed
    (And.intro E.discreteSeriesParametersClosed
      (And.intro E.unitaryStructurePreservedClosed E.functorialityClosed))

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse