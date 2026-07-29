import HautevilleHouse.EpistemologyPerceptionKnowledgeCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyPerceptionKnowledgeCanonicalLaneLean

def EpistemicWitnessClosed (O : EpistemicPerceptualObject) : Prop :=
  O.knowledgeClaim

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EpistemicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EpistemologyPerceptionKnowledgeCanonicalLaneLean
end HautevilleHouse