import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean

structure ConnectomicsPackage where
  brainRegion : Type u
  neuralConnection : Type v
  connectivityMatrix : Type w
  graphProperties : Prop
  smallWorldProperty : Prop
  modularStructure : Prop

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  graphPropertiesClosed : C.graphProperties
  smallWorldPropertyClosed : C.smallWorldProperty
  modularStructureClosed : C.modularStructure

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.graphProperties ∧ C.smallWorldProperty ∧ C.modularStructure

theorem connectomics_closed_from_evidence
    (C : ConnectomicsPackage) (E : ConnectomicsEvidence C) :
    ConnectomicsClosed C := by
  exact And.intro E.graphPropertiesClosed
    (And.intro E.smallWorldPropertyClosed E.modularStructureClosed)

end NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse