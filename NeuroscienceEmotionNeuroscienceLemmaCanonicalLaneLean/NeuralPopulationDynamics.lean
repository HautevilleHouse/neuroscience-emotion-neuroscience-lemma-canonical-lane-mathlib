import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean

structure NeuralPopulationPackage where
  neuronGroup : Type u
  firingRates : Type v
  synpaticConnectivity : Type w
  rateEquations : Prop
  fixedPointExistence : Prop
  bifurcationStructure : Prop

structure NeuralPopulationEvidence (N : NeuralPopulationPackage) where
  rateEquationsClosed : N.rateEquations
  fixedPointExistenceClosed : N.fixedPointExistence
  bifurcationStructureClosed : N.bifurcationStructure

def NeuralPopulationClosed (N : NeuralPopulationPackage) : Prop :=
  N.rateEquations ∧ N.fixedPointExistence ∧ N.bifurcationStructure

theorem neural_population_closed_from_evidence (N : NeuralPopulationPackage)
    (E : NeuralPopulationEvidence N) : NeuralPopulationClosed N := by
  exact And.intro E.rateEquationsClosed (And.intro E.fixedPointExistenceClosed E.bifurcationStructureClosed)

end NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse