import CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean.AdmissibleClass
import Mathlib.Analysis.Harmonic
import Mathlib.CategoryTheory

/-!
# Categorical Harmonic Analysis Lemma Package
-/

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure HarmonicAnalysisAdmittedObject where
  group : Type u
  groupTopology : TopologicalSpace group
  haarMeasure : MeasureTheory.Measure group
  unitaryRep : CategoryTheory.Category
  dualObject : Type v
  pontryaginDuality : Prop
  conclusion : pontryaginDuality

def HarmonicAnalysisWitnessClosed (O : HarmonicAnalysisAdmittedObject) : Prop :=
  O.pontryaginDuality

structure CategoricalHarmonicAnalysisLemmaPackage (O : HarmonicAnalysisAdmittedObject) where
  categoricalFramework : CategoryTheory.Category
  representationLattice : Type w
  inducedReps : Prop
  invarianceUnderDuality : Prop
  categoricalFrameworkTerm : categoricalFramework
  representationLatticeTerm : representationLattice
  inducedRepsTerm : inducedReps

structure CategoricalHarmonicAnalysisLemmaEvidence {O : HarmonicAnalysisAdmittedObject}
    (P : CategoricalHarmonicAnalysisLemmaPackage O) where
  categoricalFrameworkClosed : P.categoricalFramework
  representationLatticeClosed : P.representationLattice
  inducedRepsClosed : P.inducedReps
  invarianceUnderDualityClosed : P.invarianceUnderDuality

def CategoricalHarmonicAnalysisLemmaClosed {O : HarmonicAnalysisAdmittedObject}
    (P : CategoricalHarmonicAnalysisLemmaPackage O) : Prop :=
  P.categoricalFramework ∧ P.representationLattice ∧ P.inducedReps ∧ P.invarianceUnderDuality

theorem categorical_harmonic_analysis_lemma_closed_from_evidence
    {O : HarmonicAnalysisAdmittedObject} (P : CategoricalHarmonicAnalysisLemmaPackage O)
    (E : CategoricalHarmonicAnalysisLemmaEvidence P) :
    CategoricalHarmonicAnalysisLemmaClosed P := by
  exact And.intro E.categoricalFrameworkClosed
    (And.intro E.representationLatticeClosed
      (And.intro E.inducedRepsClosed E.invarianceUnderDualityClosed))

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse