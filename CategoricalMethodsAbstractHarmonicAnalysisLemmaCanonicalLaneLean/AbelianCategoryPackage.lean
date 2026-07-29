import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure AbelianCategoryPackage where
  object : Type u
  morphism : object → object → Type v
  composition : {X Y Z : object} → morphism X Y → morphism Y Z → morphism X Z
  identity : (X : object) → morphism X X
  kernel : {X Y : object} → morphism X Y → object
  cokernel : {X Y : object} → morphism X Y → object
  kernelInclusion : {X Y : object} (f : morphism X Y) → morphism (kernel f) X
  cokernelProjection : {X Y : object} (f : morphism X Y) → morphism Y (cokernel f)
  kernelCokernelExactness : Prop
  cokernelKernelExactness : Prop

structure AbelianCategoryEvidence (A : AbelianCategoryPackage) where
  kernelCokernelExactnessClosed : A.kernelCokernelExactness
  cokernelKernelExactnessClosed : A.cokernelKernelExactness

def AbelianCategoryClosed (A : AbelianCategoryPackage) : Prop :=
  A.kernelCokernelExactness ∧ A.cokernelKernelExactness

theorem abelian_category_closed_from_evidence (A : AbelianCategoryPackage)
    (E : AbelianCategoryEvidence A) : AbelianCategoryClosed A := by
  exact And.intro E.kernelCokernelExactnessClosed E.cokernelKernelExactnessClosed

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse
