import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean

structure EmotionRegulationPackage where
  prefrontalControl : Prop
  amygdalaReactivity : Prop
  hormonalModulation : Prop
  feedbackLoopDynamics : Prop
  cognitiveReappraisal : Prop
  emotionalResponseProfile : Prop

structure EmotionRegulationEvidence (E : EmotionRegulationPackage) where
  prefrontalControlClosed : E.prefrontalControl
  amygdalaReactivityClosed : E.amygdalaReactivity
  hormonalModulationClosed : E.hormonalModulation
  feedbackLoopDynamicsClosed : E.feedbackLoopDynamics
  cognitiveReappraisalClosed : E.cognitiveReappraisal
  emotionalResponseProfileClosed : E.emotionalResponseProfile

def EmotionRegulationClosed (E : EmotionRegulationPackage) : Prop :=
  E.prefrontalControl ∧ E.amygdalaReactivity ∧
  E.hormonalModulation ∧ E.feedbackLoopDynamics ∧
  E.cognitiveReappraisal ∧ E.emotionalResponseProfile

theorem emotion_regulation_closed_from_evidence (E : EmotionRegulationPackage)
    (Ev : EmotionRegulationEvidence E) : EmotionRegulationClosed E := by
  exact And.intro Ev.prefrontalControlClosed
    (And.intro Ev.amygdalaReactivityClosed
      (And.intro Ev.hormonalModulationClosed
        (And.intro Ev.feedbackLoopDynamicsClosed
          (And.intro Ev.cognitiveReappraisalClosed
            Ev.emotionalResponseProfileClosed))))

end HautevilleHouse
end NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean