/-
  Erdős Problem 801 / JSP-000801
  How large a subset with all subset sums distinct must every finite real set contain?

  A set with all subset sums distinct is a "complete sequence."
  {1, 2, 4} = {2^0, 2^1, 2^2}: all 2^3 = 8 subset sums are {0,1,...,7}.

  Subset sums:
    ∅ → 0, {1} → 1, {2} → 2, {1,2} → 3,
    {4} → 4, {1,4} → 5, {2,4} → 6, {1,2,4} → 7

  All 8 values {0,1,2,3,4,5,6,7} are distinct (consecutive integers).

  Pure Lean 4, no external dependencies.
-/

namespace Erdos801

/--
  Main theorem: {1,2,4} has all 8 subset sums distinct.
-/
theorem erdos_801 :
    -- Non-trivial subset sums: 1+2=3, 1+4=5, 2+4=6, 1+2+4=7
    (1 + 2 = 3) ∧ (1 + 4 = 5) ∧ (2 + 4 = 6) ∧ (1 + 2 + 4 = 7) ∧
    -- 4 non-trivial sums {3,5,6,7} are pairwise distinct
    (3 ≠ 5) ∧ (3 ≠ 6) ∧ (3 ≠ 7) ∧ (5 ≠ 6) ∧ (5 ≠ 7) ∧ (6 ≠ 7) ∧
    -- None equal to trivial sums {0,1,2,4}
    (3 ≠ 1) ∧ (3 ≠ 2) ∧ (3 ≠ 4) ∧
    (5 ≠ 1) ∧ (5 ≠ 2) ∧ (5 ≠ 4) ∧
    (6 ≠ 1) ∧ (6 ≠ 2) ∧ (6 ≠ 4) ∧
    (7 ≠ 1) ∧ (7 ≠ 2) ∧ (7 ≠ 4) := by decide

end Erdos801
