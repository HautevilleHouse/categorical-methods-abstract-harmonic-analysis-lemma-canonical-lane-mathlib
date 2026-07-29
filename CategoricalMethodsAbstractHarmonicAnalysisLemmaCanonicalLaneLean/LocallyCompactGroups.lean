import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure LocallyCompactGroupObject where
  G : Type u
  groupStructure : Group G
  topology : TopologicalSpace G
  locallyCompact : IsLocallyCompact G
  haarMeasure : Measure G
  haarMeasureLeftInvariant : IsLeftInvariant haarMeasure
  modularFunction : G → ℝ
  modularContinuity : Continuous modularFunction

theorem modular_function_continuous (L : LocallyCompactGroupObject) : Continuous L.modularFunction := L.modularContinuity

theorem haar_measure_unique (L : LocallyCompactGroupObject) (μ : Measure L.G) [IsLeftInvariant μ] : μ = L.haarMeasure := by
  exact haarMeasure_unique μ

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse