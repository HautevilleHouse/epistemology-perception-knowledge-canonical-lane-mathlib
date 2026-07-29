import canonicalLaneMathlib.AdmissibleClass
import EpistemologyPerceptionKnowledgeCanonicalLaneLean.EpistemicClosure
import EpistemologyPerceptionKnowledgeCanonicalLaneLean.PerceptualEvidence

namespace HautevilleHouse
namespace EpistemologyPerceptionKnowledgeCanonicalLaneLean

structure PerceptualRouteObligations where
  evidenceClosed : Prop
  bridgeCondition : Prop
  gateCondition : Prop

structure PerceptualRouteEvidence (R : PerceptualRouteObligations) where
  evidenceClosedTerm : R.evidenceClosed
  bridgeConditionTerm : R.bridgeCondition
  gateConditionTerm : R.gateCondition

def PerceptualRouteClosed (R : PerceptualRouteObligations) : Prop :=
  R.evidenceClosed ∧ R.bridgeCondition ∧ R.gateCondition

theorem perceptual_route_closed_from_evidence (R : PerceptualRouteObligations) (E : PerceptualRouteEvidence R) : PerceptualRouteClosed R := by
  exact And.intro E.evidenceClosedTerm (And.intro E.bridgeConditionTerm E.gateConditionTerm)

structure PerceptualCanonicalLaneRoute (A : AdmissibleClass) where
  obligations : PerceptualRouteObligations
  evidence : PerceptualRouteEvidence obligations
  bridgeClosedFromRoute : bridgeClosed A
  gateClosedFromRoute : gateClosed A

theorem perceptual_route_yields_constrained_closure (A : AdmissibleClass) (R : PerceptualCanonicalLaneRoute A) : ConstrainedPerceptionClosure A := by
  exact And.intro R.bridgeClosedFromRoute R.gateClosedFromRoute

end EpistemologyPerceptionKnowledgeCanonicalLaneLean
end HautevilleHouse