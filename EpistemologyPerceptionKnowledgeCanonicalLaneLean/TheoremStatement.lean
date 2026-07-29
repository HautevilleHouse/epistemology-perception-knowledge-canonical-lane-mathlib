import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyPerceptionKnowledgeCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  epistemicClosureClaim : Prop
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  {
    sourceKey := "epistemology-perception-knowledge-canonical-lane"
    theoremName := "Epistemology Perception Knowledge Admissible Closure"
    theoremObject := "PerceptionKnowledgeObject"
    classicalBoundary := "Unrestricted classical boundary remains open"
    epistemicClosureClaim := True
    carriedRemainder := "Perception and knowledge closure holds within the admissible class"
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "epistemology-perception-knowledge-canonical-lane" := by
  rfl

end EpistemologyPerceptionKnowledgeCanonicalLaneLean
end HautevilleHouse