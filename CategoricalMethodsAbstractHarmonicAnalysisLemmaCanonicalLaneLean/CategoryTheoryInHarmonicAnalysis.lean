import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure CategoryWithHarmonicStructure where
  obj : Type u
  hom : obj → obj → Type v
  identity : (x : obj) → hom x x
  compose : {x y z : obj} → hom x y → hom y z → hom x z
  tensorProduct : obj → obj → obj
  internalHom : obj → obj → obj
  harmonyMeasure : obj → ℝ
  leftRegularRepresentation : (x : obj) → hom x x
  rightRegularRepresentation : (x : obj) → hom x x

structure Subcategory (C : CategoryWithHarmonicStructure) where
  carrier : C.obj → Prop
  closedUnderComposition : ∀ {x y z : C.obj}, carrier x → carrier y → carrier z → True
  containsIdentity : (x : C.obj) → carrier x → C.identity x ∈ C.hom x x

structure AbstractHarmonicObject where
  category : CategoryWithHarmonicStructure
  carrierSubcategory : Subcategory category
  fourierTransform : Type u
  pontryaginDual : Type u
  plancherelMeasure : Type v
  harmonicAnalysisBridge : Prop

def CategoricalHarmonicClosure (A : AdmissibleClass) : Prop := bridgeClosed A ∧ gateClosed A

theorem categorical_harmonic_closure_endgame (A : AdmissibleClass) : CategoricalHarmonicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse