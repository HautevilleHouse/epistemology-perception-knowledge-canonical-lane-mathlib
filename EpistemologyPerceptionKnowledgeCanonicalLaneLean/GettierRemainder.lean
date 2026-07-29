import EpistemologyPerceptionKnowledgeCanonicalLaneLean.KnowledgeStructures

namespace HautevilleHouse
namespace EpistemologyPerceptionKnowledgeCanonicalLaneLean

structure GettierCase (E : EpistemicObject) where
  trueBelief : E.state.truthValue = true
  noJustification : E.state.justificationDegree = 0
  remainderExhibited : Prop
  remainderExhibitedTerm : remainderExhibited

def GettierRemainderClosed (E : EpistemicObject) (G : GettierCase E) : Prop :=
  G.trueBelief ∧ G.noJustification ∧ G.remainderExhibited

theorem gettier_remainder_closed_from_evidence
    (E : EpistemicObject) (G : GettierCase E) : GettierRemainderClosed E G := by
  exact And.intro G.trueBelief (And.intro G.noJustification G.remainderExhibitedTerm)

end EpistemologyPerceptionKnowledgeCanonicalLaneLean
end HautevilleHouse