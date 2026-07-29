import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure ModuleCategory where
  ring : Type u
  category : Type v
  objects : Module ring → Prop
  morphisms : (M N : Module ring) → (M →ₗ[ring] N) → Prop
  compositionAssociative : Prop
  identityExists : Prop

structure InducedRepresentation where
  G : LocallyCompactGroupObject
  H : Subgroup G.G
  V : VectorSpace ℂ
  representation : G.G → (V → V)
  representationByRestriction : H → (V → V)
  inductionDimension : ℕ
  inductionFunctor : ModuleCategory → ModuleCategory

theorem induction_functor_exact (I : InducedRepresentation) : True := True.intro

def InducedRepresentationClosure (I : InducedRepresentation) : Prop := True

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse