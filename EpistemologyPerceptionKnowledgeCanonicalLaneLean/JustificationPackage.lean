import HautevilleHouse.EpistemologyPerceptionKnowledgeCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyPerceptionKnowledgeCanonicalLaneLean

structure JustificationPackage (A : AdmissibleClass) where
  internalistJustification : Prop
  externalistReliability : Prop
  coherence : Prop
  foundationalBelief : Prop

def JustificationClosed (A : AdmissibleClass) (J : JustificationPackage A) : Prop :=
  J.internalistJustification ∧ J.externalistReliability ∧ J.coherence ∧ J.foundationalBelief

structure JustificationEvidence (A : AdmissibleClass) (J : JustificationPackage A) where
  internalistJustificationClosed : J.internalistJustification
  externalistReliabilityClosed : J.externalistReliability
  coherenceClosed : J.coherence
  foundationalBeliefClosed : J.foundationalBelief

theorem justification_closed_from_evidence (A : AdmissibleClass) (J : JustificationPackage A) (E : JustificationEvidence A J) :
    JustificationClosed A J := by
  exact And.intro E.internalistJustificationClosed
    (And.intro E.externalistReliabilityClosed
      (And.intro E.coherenceClosed E.foundationalBeliefClosed))

end EpistemologyPerceptionKnowledgeCanonicalLaneLean
end HautevilleHouse