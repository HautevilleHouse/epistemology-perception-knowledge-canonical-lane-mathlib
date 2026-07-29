import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyPerceptionKnowledgeCanonicalLaneLean

structure PerceptualEvidencePackage where
  sensoryInput : Prop
  beliefFormation : Prop
  justification : Prop
  reliability : Prop

def PerceptualEvidenceClosed (P : PerceptualEvidencePackage) : Prop :=
  P.sensoryInput ∧ P.beliefFormation ∧ P.justification ∧ P.reliability

end EpistemologyPerceptionKnowledgeCanonicalLaneLean
end HautevilleHouse