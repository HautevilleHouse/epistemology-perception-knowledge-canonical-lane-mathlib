import canonicalLaneMathlib.AdmissibleClass
import EpistemologyPerceptionKnowledgeCanonicalLaneLean.PerceptualEvidence

namespace HautevilleHouse
namespace EpistemologyPerceptionKnowledgeCanonicalLaneLean

structure PerceptualFoundation where
  evidence : PerceptualEvidence
  evidenceClosed : PerceptualEvidenceClosed evidence
  object : PerceptionAdmittedObject
  objectCompat : object.veridicalPerception = evidence.sensoryInput

def PerceptualFoundationClosed (F : PerceptualFoundation) : Prop :=
  F.evidenceClosed ∧ F.objectCompat

theorem perceptual_foundation_closed (F : PerceptualFoundation) : PerceptualFoundationClosed F := by
  exact And.intro F.evidenceClosed F.objectCompat

end EpistemologyPerceptionKnowledgeCanonicalLaneLean
end HautevilleHouse