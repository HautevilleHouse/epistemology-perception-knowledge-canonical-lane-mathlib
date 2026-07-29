import HautevilleHouse.EpistemologyPerceptionKnowledgeCanonicalLaneLean.JustificationPackage

namespace HautevilleHouse
namespace EpistemologyPerceptionKnowledgeCanonicalLaneLean

structure KnowledgeEvidencePackage (A : AdmissibleClass) (J : JustificationPackage A) where
  truthCondition : A.object.truth
  beliefCondition : A.object.belief
  justificationCondition : A.object.justification
  noDefeaters : Prop
  safety : Prop
  sensitivity : Prop

def KnowledgeEvidenceClosed (A : AdmissibleClass) (J : JustificationPackage A) (K : KnowledgeEvidencePackage A J) : Prop :=
  K.truthCondition ∧ K.beliefCondition ∧ K.justificationCondition ∧ K.noDefeaters ∧ K.safety ∧ K.sensitivity

structure KnowledgeEvidenceEvidence (A : AdmissibleClass) (J : JustificationPackage A) (K : KnowledgeEvidencePackage A J) where
  truthConditionClosed : K.truthCondition
  beliefConditionClosed : K.beliefCondition
  justificationConditionClosed : K.justificationCondition
  noDefeatersClosed : K.noDefeaters
  safetyClosed : K.safety
  sensitivityClosed : K.sensitivity

theorem knowledge_evidence_closed_from_evidence (A : AdmissibleClass) (J : JustificationPackage A) (K : KnowledgeEvidencePackage A J)
    (E : KnowledgeEvidenceEvidence A J K) : KnowledgeEvidenceClosed A J K := by
  exact And.intro E.truthConditionClosed
    (And.intro E.beliefConditionClosed
      (And.intro E.justificationConditionClosed
        (And.intro E.noDefeatersClosed
          (And.intro E.safetyClosed E.sensitivityClosed))))

end EpistemologyPerceptionKnowledgeCanonicalLaneLean
end HautevilleHouse