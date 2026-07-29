import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

structure PlancherelPackage where
  G : LocallyCompactGroupObject
  dualGroup : LocallyCompactGroupObject
  fourierTransform : (L¹(G.G) → C(G.dualGroup.G, ℂ))
  plancherelIsometry : Isometry fourierTransform
  inversionFormula : (f : L¹(G.G)) → f = ∫ g∈dualGroup.G, fourierTransform f g
  supportDense : SetLike (Set G.dualGroup.G)

theorem plancherel_isometry_isometry (P : PlancherelPackage) : Isometry P.fourierTransform := P.plancherelIsometry

theorem inversion_holds (P : PlancherelPackage) (f : L¹(P.G.G)) : f = ∫ g∈P.dualGroup.G, P.fourierTransform f g := P.inversionFormula f

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse