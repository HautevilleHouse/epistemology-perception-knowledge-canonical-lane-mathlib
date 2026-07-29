import HautevilleHouse.EpistemologyPerceptionKnowledgeCanonicalLaneLean.PerceptualEvidence

namespace HautevilleHouse
namespace EpistemologyPerceptionKnowledgeCanonicalLaneLean

structure JustificationPackage (P : PerceptualEvidencePackage) where
  justificationMethod : Type u
  deducibleFromEvidence : Prop
  noDefeaters : Prop
  coherenceCondition : Prop

structure JustificationEvidence {P : PerceptualEvidencePackage}
    (J : JustificationPackage P) where
  deducibleFromEvidenceClosed : J.deducibleFromEvidence
  noDefeatersClosed : J.noDefeaters
  coherenceConditionClosed : J.coherenceCondition

def JustificationClosed {P : PerceptualEvidencePackage}
    (J : JustificationPackage P) : Prop :=
  J.deducibleFromEvidence ∧ J.noDefeaters ∧ J.coherenceCondition

theorem justification_closed_from_evidence
    {P : PerceptualEvidencePackage} (J : JustificationPackage P)
    (E : JustificationEvidence J) : JustificationClosed J := by
  exact And.intro E.deducibleFromEvidenceClosed
    (And.intro E.noDefeatersClosed E.coherenceConditionClosed)

end EpistemologyPerceptionKnowledgeCanonicalLaneLean
end HautevilleHouse