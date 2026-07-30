import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membraneCapacitance : Prop
  ionChannelConductances : Prop
  gatingVariables : Prop
  actionPotentialWaveform : Prop
  thresholdDynamics : Prop
  firingRateResponse : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  membraneCapacitanceClosed : H.membraneCapacitance
  ionChannelConductancesClosed : H.ionChannelConductances
  gatingVariablesClosed : H.gatingVariables
  actionPotentialWaveformClosed : H.actionPotentialWaveform
  thresholdDynamicsClosed : H.thresholdDynamics
  firingRateResponseClosed : H.firingRateResponse

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.membraneCapacitance ∧ H.ionChannelConductances ∧
  H.gatingVariables ∧ H.actionPotentialWaveform ∧
  H.thresholdDynamics ∧ H.firingRateResponse

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.membraneCapacitanceClosed
    (And.intro E.ionChannelConductancesClosed
      (And.intro E.gatingVariablesClosed
        (And.intro E.actionPotentialWaveformClosed
          (And.intro E.thresholdDynamicsClosed
            E.firingRateResponseClosed))))

end HautevilleHouse
end NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean