import EpistemologyPerceptionKnowledgeCanonicalLaneLean.KnowledgeStructures

namespace HautevilleHouse
namespace EpistemologyPerceptionKnowledgeCanonicalLaneLean

structure JustificationTypePackage (E : EpistemicObject) where
  deductiveComplete : Prop
  internalAccessibility : Prop
  reliabilityThreshold : Prop

structure JustificationTypeEvidence {E : EpistemicObject} (J : JustificationTypePackage E) where
  deductiveCompleteClosed : J.deductiveComplete
  internalAccessibilityClosed : J.internalAccessibility
  reliabilityThresholdClosed : J.reliabilityThreshold

def JustificationTypeClosed {E : EpistemicObject} (J : JustificationTypePackage E) : Prop :=
  J.deductiveComplete ∧ J.internalAccessibility ∧ J.reliabilityThreshold

theorem justification_type_closed_from_evidence
    {E : EpistemicObject} (J : JustificationTypePackage E) (E' : JustificationTypeEvidence J) :
    JustificationTypeClosed J := by
  exact And.intro E'.deductiveCompleteClosed
    (And.intro E'.internalAccessibilityClosed E'.reliabilityThresholdClosed)

end EpistemologyPerceptionKnowledgeCanonicalLaneLean
end HautevilleHouse