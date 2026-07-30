import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean

structure HodgkinHuxleyDynamicsPackage where
  membranePotential : Type
  sodiumChannelGating : Type
  potassiumChannelGating : Type
  leakChannelGating : Type
  membraneCurrentEquation : Prop
  actionPotentialGeneration : Prop
  ionConductanceVoltageDependence : Prop

structure HodgkinHuxleyDynamicsEvidence (H : HodgkinHuxleyDynamicsPackage) where
  membraneCurrentEquationClosed : H.membraneCurrentEquation
  actionPotentialGenerationClosed : H.actionPotentialGeneration
  ionConductanceVoltageDependenceClosed : H.ionConductanceVoltageDependence

def HodgkinHuxleyDynamicsClosed (H : HodgkinHuxleyDynamicsPackage) : Prop :=
  H.membraneCurrentEquation ∧ H.actionPotentialGeneration ∧ H.ionConductanceVoltageDependence

theorem hodgkin_huxley_dynamics_closed_from_evidence
    (H : HodgkinHuxleyDynamicsPackage) (E : HodgkinHuxleyDynamicsEvidence H) :
    HodgkinHuxleyDynamicsClosed H := by
  exact And.intro E.membraneCurrentEquationClosed
    (And.intro E.actionPotentialGenerationClosed E.ionConductanceVoltageDependenceClosed)

end NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse