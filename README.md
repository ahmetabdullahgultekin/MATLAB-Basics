# MATLAB Basics – Numerical Methods Mini‑Collection

This folder groups four standalone MATLAB scripts that demonstrate plotting, polar coordinates, Taylor‑series approximation and anonymous‑function analysis—originally submitted for **MATH 2059 Numerical Methods – Homework 1**.

> Author: **Ahmet Abdullah Gültekin**  

---

## 📂 File Overview

| Script | Description |
|--------|------------|
| `Butterfly_1.m` | Draws the iconic **butterfly curve** in Cartesian coordinates (two sub‑plots with different line styles). |
| `ButterflyPolar_2.m` | Renders the same curve in **polar** form using `polar()` with red dashed line. |
| `Taylor_3.m` | Approximates **sin(x)** at `x = 0.9` using an odd‑power Taylor series up to **P = 15** and prints the error vs. `sin()`. |
| `FindDifference_4.m` | Function file that, given a handle `f1` and interval `[t1,t2]`, plots `f1(t)` and computes `diff = max‑min` over a dense mesh of 10 000 points. |
| `MATH2059 Numerical Methods HW1.pdf` | Problem statement. |
| `Report of the first Homework.docx` | Short write‑up with outputs and discussion. |

---

## 🔧 Quick Start
```matlab
% From MATLAB prompt
run('Butterfly_1.m')          % Cartesian butterfly
run('ButterflyPolar_2.m')     % Polar butterfly
run('Taylor_3.m')             % Taylor approximation output in console

% Example for FindDifference_4
f = @(t) 8*exp(-0.25*t).*sin(t-2);
d = FindDifference_4(f, 0, 20);
fprintf('Range = %.4f\n', d);
```

### Expected Output (Taylor)
```
Exact sin(0.9) = 0.783327
Series approximation = 0.783327
Absolute error = 4.9e‑08
```

---

## 🧠 Key Concepts Demonstrated
* Parametric plotting (`subplot`, `plot`, `polar`).
* Vectorised operations and element‑wise exponent `.^`.
* Building factorial arrays with `factorial()`.
* Anonymous functions & high‑resolution sampling via `linspace`.
* Use of user‑defined functions (`FindDifference_4`) returning values.

---

## ✍️ Extending Ideas
1. Animate the butterfly curve growth with `comet` or updating `t` in a loop.
2. Generalise `FindDifference_4` to accept multiple functions and return all ranges.
3. Compare Taylor error for varying `P`; plot error vs. order.

