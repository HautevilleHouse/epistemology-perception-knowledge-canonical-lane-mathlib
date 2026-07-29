import canonicalLaneMathlib.AdmissibleClass
import EpistemologyPerceptionKnowledgeCanonicalLaneLean.PerceptualEvidence

namespace HautevilleHouse
namespace EpistemologyPerceptionKnowledgeCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.veridicalPerception

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion.elim id id

end EpistemologyPerceptionKnowledgeCanonicalLaneLean
end HautevilleHouse