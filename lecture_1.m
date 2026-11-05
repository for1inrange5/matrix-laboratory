A = [1 2 3 4 5];
B = [4 5 6 7];

union(A, B)       % A ∪ B  → 1 2 3 4 5 6 7
intersect(A, B)   % A ∩ B  → 4 5
setdiff(A, B)     % A \ B  → 1 2 3
ismember(3, A)    % 3 ∈ A? → 1 (artinya true)
ismember(9, B)    % 9 ∈ B? → 0 (artinya false)

isEven = @(x) mod(x, 2) == 0;   % P(x): x itu genap

isEven(4)    % 1 (true)
isEven(7)    % 0 (false)

S = 1:10;
all(isEven(S))   % ∀x∈S, P(x)?  → 0 (false, karena 1 itu ganjil)
any(isEven(S))   % ∃x∈S, P(x)?  → 1 (true, karena 2 itu genap)

n = 0:39;
all(isprime(n.^2 + n + 41))   % 1 (true): untuk n = 0 sampai 39 hasilnya prima semua

n = 40;
isprime(n^2 + n + 41)         % 0 (false!) karena 1681 = 41 × 41
