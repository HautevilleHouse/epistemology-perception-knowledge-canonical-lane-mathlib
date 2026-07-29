import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyPerceptionKnowledgeCanonicalLaneLean

structure EpistemicPerceptualObject where
  agent : Type
  proposition : Type
  perceptualEvidence : Prop
  knowledgeClaim : Prop
  conclusion : knowledgeClaim

structure AdmissibleClass where
  object : EpistemicPerceptualObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EpistemicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EpistemologyPerceptionKnowledgeCanonicalLaneLean
end HautevilleHouse