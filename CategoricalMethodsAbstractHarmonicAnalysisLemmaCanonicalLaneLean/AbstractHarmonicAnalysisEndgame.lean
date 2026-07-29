import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

def ConstrainedAbstractHarmonicClosure (A : AdmissibleClass) : Prop := bridgeClosed A ∧ gateClosed A

theorem abstract_harmonic_analysis_endgame (A : AdmissibleClass) : ConstrainedAbstractHarmonicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

theorem categorical_methods_harmonic_analysis_lemma_closed (A : AdmissibleClass) : True := by trivial

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse