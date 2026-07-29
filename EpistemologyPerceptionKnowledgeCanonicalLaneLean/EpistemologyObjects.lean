import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyPerceptionKnowledgeCanonicalLaneLean

structure EpistemologySpace where
  agent : Type
  world : Type
  knowledgeRelation : agent → world → Prop

structure EpistemologyAdmittedObject where
  space : EpistemologySpace
  closureProperty : Prop
  conclusion : closureProperty

def EpistemologyWitnessClosed (O : EpistemologyAdmittedObject) : Prop :=
  O.closureProperty

structure AdmissibleClass where
  object : EpistemologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end EpistemologyPerceptionKnowledgeCanonicalLaneLean
end HautevilleHouse