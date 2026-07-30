import NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : ℝ
  sodiumChannelGating : ℝ
  potassiumChannelGating : ℝ
  leakageConductance : ℝ
  equationsClosed : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  equationsClosedTerm : H.equationsClosed

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.equationsClosed

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact E.equationsClosedTerm

end NeuroscienceEmotionNeuroscienceLemmaCanonicalLaneLean
end HautevilleHouse
