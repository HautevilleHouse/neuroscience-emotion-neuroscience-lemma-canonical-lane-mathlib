import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean

structure NeuromodulatorPackage where
  modulatorConcentration : Type u
  receptorDensity : Type v
  gainModulation : Prop
  timeScaleSeparation : Prop
  effectOnPlasticity : Prop

structure NeuromodulatorEvidence (M : NeuromodulatorPackage) where
  gainModulationClosed : M.gainModulation
  timeScaleSeparationClosed : M.timeScaleSeparation
  effectOnPlasticityClosed : M.effectOnPlasticity

def NeuromodulatorClosed (M : NeuromodulatorPackage) : Prop :=
  M.gainModulation ∧ M.timeScaleSeparation ∧ M.effectOnPlasticity

theorem neuromodulator_closed_from_evidence (M : NeuromodulatorPackage)
    (E : NeuromodulatorEvidence M) : NeuromodulatorClosed M := by
  exact And.intro E.gainModulationClosed (And.intro E.timeScaleSeparationClosed E.effectOnPlasticityClosed)

end NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse