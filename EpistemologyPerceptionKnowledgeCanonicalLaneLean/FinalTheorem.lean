import HautevilleHouse.EpistemologyPerceptionKnowledgeCanonicalLaneLean.EpistemologyObjects
import HautevilleHouse.EpistemologyPerceptionKnowledgeCanonicalLaneLean.PerceptionJustification

namespace HautevilleHouse
namespace EpistemologyPerceptionKnowledgeCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EpistemologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedEpistemologyPerceptionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_epistemology_perception_endgame (A : AdmissibleClass) : ConstrainedEpistemologyPerceptionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EpistemologyPerceptionKnowledgeCanonicalLaneLean
end HautevilleHouse