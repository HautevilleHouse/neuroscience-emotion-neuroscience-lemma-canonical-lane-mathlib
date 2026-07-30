import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean

structure NeurotransmitterDynamicsPackage where
  synthesisPathway : Prop
  releaseMechanism : Prop
  receptorBinding : Prop
  reuptakeDegradation : Prop
  neuromodulationEffect : Prop

structure NeurotransmitterDynamicsEvidence (N : NeurotransmitterDynamicsPackage) where
  synthesisPathwayClosed : N.synthesisPathway
  releaseMechanismClosed : N.releaseMechanism
  receptorBindingClosed : N.receptorBinding
  reuptakeDegradationClosed : N.reuptakeDegradation
  neuromodulationEffectClosed : N.neuromodulationEffect

def NeurotransmitterDynamicsClosed (N : NeurotransmitterDynamicsPackage) : Prop :=
  N.synthesisPathway ∧ N.releaseMechanism ∧ N.receptorBinding ∧
  N.reuptakeDegradation ∧ N.neuromodulationEffect

theorem neurotransmitter_dynamics_closed_from_evidence
    (N : NeurotransmitterDynamicsPackage) (E : NeurotransmitterDynamicsEvidence N) :
    NeurotransmitterDynamicsClosed N := by
  exact And.intro E.synthesisPathwayClosed
    (And.intro E.releaseMechanismClosed
      (And.intro E.receptorBindingClosed
        (And.intro E.reuptakeDegradationClosed E.neuromodulationEffectClosed)))

end HautevilleHouse
end NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean