import HautevilleHouse.NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean

structure HebbianPlasticityPackage where
  synapticWeight : ℝ → ℝ
  preSynapticActivity : ℝ → ℝ
  postSynapticActivity : ℝ → ℝ
  learningRate : ℝ
  decayTerm : ℝ
  hebbianRule : (ℝ → ℝ) → (ℝ → ℝ) → (ℝ → ℝ) → Prop
  hebbianRuleClosed : hebbianRule synapticWeight preSynapticActivity postSynapticActivity
  boundedness : Prop

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.hebbianRuleClosed ∧ H.boundedness

end NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse