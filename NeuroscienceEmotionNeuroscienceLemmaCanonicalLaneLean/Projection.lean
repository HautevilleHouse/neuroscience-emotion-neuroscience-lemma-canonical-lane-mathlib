import HautevilleHouse.NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def emotionProjection : Projection EmotionEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem emotion_projection_idempotent (x : EmotionEndgameState) :
    emotionProjection.toFun (emotionProjection.toFun x) = emotionProjection.toFun x := by
  exact emotionProjection.idempotent x

end NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse