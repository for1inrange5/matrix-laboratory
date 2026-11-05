% Ubah n dari 40 turun ke 0 (menggunakan langkah -1)
n = (39:-1:0)';

% Fungsi rumus Euler polynomial
fcn = @(j) j.^2 + j + 41;

% Hitung nilai fungsi
proof = fcn(n);

% Fungsi cek genap
isEven = @(x) mod(x, 2) == 0; 
genap = isEven(proof);

% Tampilkan dalam bentuk tabel biar gampang dibaca
T = table(n, proof, genap, 'VariableNames', {'n', 'Hasil_fcn', 'Apakah_Genap'});
disp(T)

save Variabels/proof.mat