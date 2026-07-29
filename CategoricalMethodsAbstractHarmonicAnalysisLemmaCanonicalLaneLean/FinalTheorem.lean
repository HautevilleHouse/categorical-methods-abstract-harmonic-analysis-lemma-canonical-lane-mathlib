import canonicalLaneMathlib.AdmissibleClass
import CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean.BridgeLemmas
import CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

def ConstrainedAbstractHarmonicAnalysisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_abstract_harmonic_analysis_endgame (A : AdmissibleClass) :
    ConstrainedAbstractHarmonicAnalysisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse