import HautevilleHouse.NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EmotionCarrier where
  neuralPopulation : Type
  connectivity : Type

structure EmotionAdmittedObject where
  carrier : EmotionCarrier
  emotionCircuitProperty : Prop
  emotionRegulationClosed : Prop
  neurobiologicalPlausibility : Prop
  conclusion : neurobiologicalPlausibility

def EmotionWitnessClosed (O : EmotionAdmittedObject) : Prop :=
  O.neurobiologicalPlausibility

end NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse