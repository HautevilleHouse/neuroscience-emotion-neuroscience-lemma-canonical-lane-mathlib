import NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean

structure ConnectomicsPackage where
  neuronCount : ℕ
  synapseCount : ℕ
  connectivityMatrix : Type
  smallWorldProperty : Prop
  propertyClosed : Prop

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  propertyClosedTerm : C.propertyClosed

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.propertyClosed

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage)
    (E : ConnectomicsEvidence C) : ConnectomicsClosed C := by
  exact E.propertyClosedTerm

end NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse
