import HautevilleHouse.EpistemologyPerceptionKnowledgeCanonicalLaneLean.EpistemologyObjects

namespace HautevilleHouse
namespace EpistemologyPerceptionKnowledgeCanonicalLaneLean

structure PerceptionKnowledgePackage where
  sensoryInput : Type
  reliability : Prop
  beliefFormation : Prop
  justificationCondition : Prop
  truthCondition : Prop

structure PerceptionKnowledgeEvidence (P : PerceptionKnowledgePackage) where
  reliabilityClosed : P.reliability
  beliefFormationClosed : P.beliefFormation
  justificationConditionClosed : P.justificationCondition
  truthConditionClosed : P.truthCondition

def PerceptionKnowledgeClosed (P : PerceptionKnowledgePackage) : Prop :=
  P.reliability ∧ P.beliefFormation ∧ P.justificationCondition ∧ P.truthCondition

theorem perception_knowledge_closed_from_evidence (P : PerceptionKnowledgePackage) (E : PerceptionKnowledgeEvidence P) :
    PerceptionKnowledgeClosed P := by
  exact And.intro E.reliabilityClosed (And.intro E.beliefFormationClosed (And.intro E.justificationConditionClosed E.truthConditionClosed))

structure JustificationFrameworkPackage where
  internalistCondition : Prop
  externalistCondition : Prop
  reliabilistCondition : Prop
  virtueCondition : Prop

structure JustificationFrameworkEvidence (J : JustificationFrameworkPackage) where
  internalistClosed : J.internalistCondition
  externalistClosed : J.externalistCondition
  reliabilistClosed : J.reliabilistCondition
  virtueClosed : J.virtueCondition

def JustificationFrameworkClosed (J : JustificationFrameworkPackage) : Prop :=
  J.internalistCondition ∧ J.externalistCondition ∧ J.reliabilistCondition ∧ J.virtueCondition

theorem justification_framework_closed_from_evidence (J : JustificationFrameworkPackage) (E : JustificationFrameworkEvidence J) :
    JustificationFrameworkClosed J := by
  exact And.intro E.internalistClosed (And.intro E.externalistClosed (And.intro E.reliabilistClosed E.virtueClosed))

end EpistemologyPerceptionKnowledgeCanonicalLaneLean
end HautevilleHouse