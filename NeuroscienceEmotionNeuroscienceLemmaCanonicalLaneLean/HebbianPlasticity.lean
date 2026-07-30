import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean

structure HebbianPlasticityPackage where
  synapseStrength : Type
  preSynapticActivity : Type
  postSynapticActivity : Type
  plasticityRule : preSynapticActivity -> postSynapticActivity -> synapseStrength -> Prop
  spikeTimingDependence : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  plasticityRuleClosed : H.plasticityRule
  spikeTimingDependenceClosed : H.spikeTimingDependence
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.plasticityRule ∧ H.spikeTimingDependence ∧ H.longTermPotentiation ∧ H.longTermDepression

theorem hebbian_plasticity_closed_from_evidence
    (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.plasticityRuleClosed
    (And.intro E.spikeTimingDependenceClosed
      (And.intro E.longTermPotentiationClosed E.longTermDepressionClosed))

end NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse