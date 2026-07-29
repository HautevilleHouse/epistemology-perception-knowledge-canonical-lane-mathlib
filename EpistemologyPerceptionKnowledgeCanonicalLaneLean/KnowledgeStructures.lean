import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyPerceptionKnowledgeCanonicalLaneLean

structure EpistemicState where
  proposition : Prop
  truthValue : Bool
  justificationDegree : Nat

def episodeClosed (s : EpistemicState) : Prop :=
  s.truthValue = true ∧ s.justificationDegree > 0

structure EpistemicObject where
  state : EpistemicState
  knowledgeProperty : Prop
  remainderProperty : Prop
  knowledgePropertyWitness : knowledgeProperty ∨ remainderProperty

def EpistemicWitnessClosed (o : EpistemicObject) : Prop :=
  episodeClosed o.state ∧ o.knowledgeProperty

end EpistemologyPerceptionKnowledgeCanonicalLaneLean
end HautevilleHouse