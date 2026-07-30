import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean

structure EmotionRegulationPackage where
  prefrontalCortex : Type u
  amygdala : Type v
  hippocampus : Type w
  regulationCircuit : Prop
  emotionStimulusResponse : Prop
  dysregulationModel : Prop

structure EmotionRegulationEvidence (E : EmotionRegulationPackage) where
  regulationCircuitClosed : E.regulationCircuit
  emotionStimulusResponseClosed : E.emotionStimulusResponse
  dysregulationModelClosed : E.dysregulationModel

def EmotionRegulationClosed (E : EmotionRegulationPackage) : Prop :=
  E.regulationCircuit ∧ E.emotionStimulusResponse ∧ E.dysregulationModel

theorem emotion_regulation_closed_from_evidence
    (E : EmotionRegulationPackage) (Ev : EmotionRegulationEvidence E) :
    EmotionRegulationClosed E := by
  exact And.intro Ev.regulationCircuitClosed
    (And.intro Ev.emotionStimulusResponseClosed Ev.dysregulationModelClosed)

end NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse