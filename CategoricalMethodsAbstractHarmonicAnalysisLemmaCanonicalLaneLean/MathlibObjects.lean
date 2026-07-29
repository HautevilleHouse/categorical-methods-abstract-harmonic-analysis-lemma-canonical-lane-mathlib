import CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure HarmonicAnalysisSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure HarmonicAnalysisAdmittedObject where
  space : HarmonicAnalysisSpace
  locallyCompactGroup : Prop
  abelianGroup : Prop
  dualModel : Type
  dualTopology : TopologicalSpace dualModel
  pontryaginDual : Prop
  conclusion : pontryaginDual

structure HarmonicAnalysisEndgameState where
  object : HarmonicAnalysisAdmittedObject

def PoincareWitnessClosed (O : HarmonicAnalysisAdmittedObject) : Prop :=
  O.pontryaginDual

end CategoricalMethodsAbstractHarmonicAnalysisLemmaCanonicalLaneLean
end HautevilleHouse