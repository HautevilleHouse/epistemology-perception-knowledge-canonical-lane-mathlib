import HautevilleHouse.EpistemologyPerceptionKnowledgeCanonicalLaneLean.PerceptualEvidence

namespace HautevilleHouse
namespace EpistemologyPerceptionKnowledgeCanonicalLaneLean

structure EpistemicClosurePackage (P : PerceptualEvidencePackage) where
  closureUnderKnowledge : Prop
  closureUnderPerception : Prop
  deductiveClosure : Prop

def EpistemicClosureClosed {P : PerceptualEvidencePackage} (E : EpistemicClosurePackage P) : Prop :=
  E.closureUnderKnowledge ∧ E.closureUnderPerception ∧ E.deductiveClosure

end EpistemologyPerceptionKnowledgeCanonicalLaneLean
end HautevilleHouse