import canonicalLaneMathlib.AdmissibleClass

/-!
# Categorical Abstract Harmonic Analysis Package

This module models the bridge between categorical methods and abstract harmonic
analysis via the admissible-class closure pattern. The structure packages
a locally compact group object and its dual category, with a Plancherel-type
isometry as the endpoint constraint.
-/

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure LocallyCompactGroupObject where
  group : Type u
  groupTopology : TopologicalSpace group
  topologicalGroup : TopologicalGroup group
  locallyCompact : LocallyCompactSpace group
  hausdorff : T3Space group

structure DualCategoryObject where
  category : Type v
  irreducibleRepresentations : Type w
  plancherelMeasure : Prop
  fourierTransform : Prop
  inversionFormula : Prop

structure AbstractHarmonicAnalysisPackage (G : LocallyCompactGroupObject) where
  dualCategory : DualCategoryObject
  plancherelIsometry : Prop
  pontryaginDuality : Prop
  fourierInversion : Prop
  bochnersTheorem : Prop

structure AbstractHarmonicAnalysisEvidence {G : LocallyCompactGroupObject}
    (A : AbstractHarmonicAnalysisPackage G) where
  plancherelIsometryClosed : A.plancherelIsometry
  pontryaginDualityClosed : A.pontryaginDuality
  fourierInversionClosed : A.fourierInversion
  bochnersTheoremClosed : A.bochnersTheorem

def AbstractHarmonicAnalysisClosed {G : LocallyCompactGroupObject}
    (A : AbstractHarmonicAnalysisPackage G) : Prop :=
  A.plancherelIsometry ∧ A.pontryaginDuality ∧ A.fourierInversion ∧ A.bochnersTheorem

theorem abstract_harmonic_analysis_closed_from_evidence
    {G : LocallyCompactGroupObject} (A : AbstractHarmonicAnalysisPackage G)
    (E : AbstractHarmonicAnalysisEvidence A) : AbstractHarmonicAnalysisClosed A := by
  exact And.intro E.plancherelIsometryClosed
    (And.intro E.pontryaginDualityClosed
      (And.intro E.fourierInversionClosed E.bochnersTheoremClosed))

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse