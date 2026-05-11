# LIMIT_BREAKTHROUGH.md — hexa-mind

> Real-limits audit (Wave M) per `LATTICE_POLICY.md §1.2`.
> Domain: **cognitive / mental operations** — working memory, attention,
> learning, BCI-mediated thought, and the four preregistered SPECULATIVE
> verbs (oracle, hexa_telepathy, telepathy, mind_upload). The repo
> declares 4 of 7 verbs SPECULATIVE; this audit honours that and
> separates *grounded* cognitive limits (Miller / Yerkes-Dodson / power
> law) from *speculative* ones whose ceilings depend on unsolved physics.

---

## §1 Domain identification

`hexa-mind` is a 7-verb mental-substrate catalog:

- **grounded**: `mind`, `neuro`, `superpowers` (engineering).
- **SPECULATIVE**: `oracle`, `hexa_telepathy`, `telepathy`, `mind_upload`.

The grounded verbs ride established cognitive psychology and
BCI-engineering limits. The speculative verbs ride limits that
*depend* on unsolved physics (quantum entanglement as a comm
channel, whole-brain connectome scan, substrate-independence of
consciousness). This audit lists ceilings for both, with stricter
honesty markers on the speculative side.

---

## §2 Real limits applicable

### L1 — Working memory capacity — Miller's 7±2 (HARD_WALL — cognitive)
- **Bound**: 7 ± 2 chunks (Miller, *Psychol. Rev.* 1956); Cowan's
  revised estimate 4 ± 1 for "true" capacity without chunking
  (Cowan, *Behav. Brain Sci.* 2001).
- **Anchor**: prefrontal cortex attentional bottleneck +
  hippocampal binding rate. Improvable by chunking (Ericsson,
  *Psychol. Rev.* 1980) but raw chunk capacity is robust across
  cultures and ages.

### L2 — Attentional bottleneck / dual-task interference (HARD_WALL)
- **Bound**: psychological refractory period 200–500 ms between
  sequential decisions (Pashler, *Psychol. Bull.* 1994);
  effective parallel attention ≈ 1 (Posner, *Q. J. Exp.
  Psychol.* 1980).
- **Anchor**: serial bottleneck in central executive. Multitasking
  is task-switching, not parallel processing.

### L3 — Hick's Law — choice reaction time (HARD_WALL — log scaling)
- **Bound**: RT ≈ a + b · log₂(n + 1) for n equiprobable choices
  (Hick, *Q. J. Exp. Psychol.* 1952; Hyman 1953).
- **Anchor**: information-theoretic — RT scales with stimulus
  entropy. b ≈ 150 ms/bit for adults.

### L4 — Power law of practice / learning curve (HARD_WALL — math)
- **Bound**: T(n) = a · n^(−c) with c ≈ 0.2–0.5 (Newell & Rosenbloom,
  *Cognitive Skills and Their Acquisition* 1981). Diminishing
  returns are guaranteed; *exponential* learning is not observed
  in well-controlled tasks.
- **Anchor**: chunking + procedural-memory consolidation rate.

### L5 — Yerkes-Dodson / cognitive-load optimum (SOFT_WALL — engineering)
- **Bound**: inverted-U performance vs. arousal (Yerkes & Dodson,
  *J. Comp. Neurol. Psychol.* 1908); cognitive load theory
  intrinsic + extraneous + germane (Sweller, *Cogn. Sci.* 1988).
- **Anchor**: optimal arousal depends on task difficulty; engineering
  improvable via UI / pacing / interface design.

### L6 — BCI bandwidth — scalp EEG vs. intracortical (SOFT_WALL — substrate)
- **Bound**: see hexa-brain L5 — scalp 10–100 bits/min, intracortical
  Utah array ~ 6 bits/s motor decode (Willett et al., *Nature* 2021),
  theoretical Neuralink-class 10³–10⁴ ch ≈ 100 bits/s.
- **Anchor**: Shannon capacity × electrode count × noise. SOFT for
  the `superpowers` grounded verb; defines a hard floor for the
  `telepathy` speculative verb's bidirectional channel claim.

### L7 — No-communication theorem — quantum entanglement as channel (HARD_WALL — physics)
- **Bound**: entanglement cannot transmit classical information
  faster than light or without a classical side channel (Eberhard
  *Nuovo Cim. B* 1978; Peres, *Quantum Theory: Concepts and Methods*
  1995, Ch. 6). This is a *theorem*, not an engineering hurdle.
- **Anchor**: linearity of quantum mechanics. `hexa_telepathy` verb's
  "quantum-entangled brain-to-brain channel" claim violates this.
  Verb is correctly marked SPECULATIVE.

### L8 — Connectomics scan resolution — whole-brain at synaptic precision (BREAKABLE_WITH_TECH but extreme)
- **Bound**: human brain ≈ 86B neurons, ~10¹⁴ synapses (Azevedo et
  al., *J. Comp. Neurol.* 2009); current state of art: 1 mm³
  mouse cortex ≈ 200,000 cells / 500M synapses with serial-section
  EM at petabyte data scale (MICrONS consortium, *Nature* 2025);
  full human brain at synaptic resolution would require ~ 10²¹
  voxels ≈ zettabytes.
- **Anchor**: physical sectioning / staining throughput + storage.
  Engineering improvable but extreme; `mind_upload` 1.44M-channel
  scan claim is ~ 10⁸× below synaptic resolution (it samples
  field-potentials, not connectome).

### L9 — Substrate-independence of consciousness — Hard Problem (UNCLEAR / contentious)
- **Bound**: not falsifiable in any current framework (Chalmers,
  *J. Conscious. Stud.* 1995). IIT (Tononi) and GWT (Dehaene)
  give different verdicts on whether a digital copy preserves
  subjective experience.
- **Anchor**: philosophical, not empirical. `mind_upload` verb
  must declare this is the wall, not a side note.

### L10 — Sleep-dependent memory consolidation rate (HARD_WALL)
- **Bound**: declarative memory consolidation gain ~ 10–20 % per
  full night (Stickgold *Nature* 2005); slow-wave sleep duration
  caps the effect.
- **Anchor**: hippocampal-cortical replay during NREM. Cannot be
  accelerated without sleep itself.

---

## §3 Per-limit breakthrough assessment

| ID | Limit | Wall type | Verb | Breakthrough vector | Verdict |
|----|-------|-----------|------|---------------------|---------|
| L1 | Miller 7±2 / Cowan 4±1 | HARD | mind | Chunking, external storage | unbreakable raw |
| L2 | Attention bottleneck | HARD | mind | Task design only | unbreakable |
| L3 | Hick's log₂(n) | HARD | mind, neuro UI | Reduce option entropy | unbreakable functional |
| L4 | Power-law practice | HARD math | mind, superpowers | None | unbreakable |
| L5 | Yerkes-Dodson | SOFT | mind, superpowers | UX engineering | improvable |
| L6 | BCI bandwidth | SOFT | neuro, telepathy, superpowers | Substrate jump (intracortical) | 100× across substrates |
| L7 | No-comm theorem | HARD physics | **hexa_telepathy** | None | **forbidden** |
| L8 | Connectome scan resolution | BREAKABLE-extreme | mind_upload | EM throughput + AI segmentation | 10⁸× gap remains |
| L9 | Hard Problem | UNCLEAR | mind_upload, oracle | None empirical | unresolved |
| L10 | Sleep consolidation rate | HARD | mind, sleep-medicine bridge | None | unbreakable |

---

## §4 Top-3 breakthrough opportunities

### #1 — Cognitive scaffolding via UI design (rides L1, L2, L3, L5)
For the `mind` and `superpowers` grounded verbs: prescribe interface
design that respects Cowan 4±1, Hick's log₂(n) menu depth, and
Yerkes-Dodson optimal-load. This is engineering, not consciousness
research — but it is the *only* part of hexa-mind where breakthrough
is achievable today. Realistic deliverable: spec-level UI affordance
constraints (e.g., menu depth ≤ 4, dual-task forbidden during
critical decisions).

### #2 — Intracortical BCI substrate jump for `superpowers` (rides L6)
The grounded engineering verb `superpowers` (6-axis BCI + exoskeleton)
should declare its bandwidth budget explicitly: scalp EEG ~ 0.5–2
bits/s output, Utah array ~ 6 bits/s, Neuralink-class ~ 100 bits/s
ceiling. Exoskeleton DOF is the *output* bottleneck — closed-loop
proprioception still missing. Spec-level deliverable: declared
BCI substrate at each TRL gate.

### #3 — Honest preregistration of speculative verbs (rides L7, L8, L9)
For `oracle`, `hexa_telepathy`, `telepathy`, `mind_upload`: the
breakthrough is **not** to claim they work, but to preregister the
falsifier that would kill each. `hexa_telepathy` falsifier:
"any claimed brain-to-brain channel that exceeds no-communication
theorem bandwidth without classical side-channel is falsified."
`mind_upload` falsifier: "without synaptic-resolution scan
(currently 10⁸× beyond capability), claim of behaviour preservation
is unfalsifiable." This **is** the breakthrough — refusing
over-claim is the deliverable.

---

## §5 Honest caveats

1. **4 of 7 verbs are SPECULATIVE.** Repo README explicitly
   declares this. The audit confirms: `hexa_telepathy` violates
   the no-communication theorem unless reinterpreted as
   classically-mediated BCI; `oracle` 6-qubit predictor cannot
   exceed classical Shannon-bound prediction without entanglement
   resource not available to brains; `telepathy` is bandwidth-
   limited to BCI substrate ceiling; `mind_upload` requires a
   connectome 10⁸× beyond current scan tech.
2. **The σ(6)·φ(6) = n·τ(6) = 24 lattice identity is not
   evidence** about cognition. Miller's 7±2, Cowan's 4±1, and
   Hick's b ≈ 150 ms/bit are *empirical* — they do not derive
   from n=6 lattice algebra.
3. **No-communication theorem is a theorem.** Any
   `hexa_telepathy` claim that "quantum entanglement transmits
   thought" is physics-forbidden. Falsifier register must say
   so.
4. **MICrONS-class connectomics** has scanned 1 mm³ of mouse
   cortex; human brain is ~ 10⁶× larger volume at higher cell
   density. `mind_upload`'s claimed 1.44M-channel BCI is *not*
   a connectome scan — it's a sparse field-potential sampling.
   Conflating the two is over-claim.
5. **The Hard Problem of consciousness is not solved by
   simulation.** Even a bit-perfect emulation cannot be
   empirically distinguished from a philosophical zombie. The
   `mind_upload` verb must explicitly disclaim subjective-
   continuity claims.
6. **Power-law practice (L4) means "10,000 hours" is not magic.**
   Mastery curves flatten; superhuman performance requires either
   external tools (the `superpowers` exoskeleton thesis) or
   genetic predisposition.
7. **HARD walls L1–L4, L7, L10** are unbreakable by any
   cognitive-engineering trick within the human substrate.
   L6 admits substrate jump but not law-breaking.
8. **Speculative verbs are a feature, not a bug.** They are
   *falsifiable hypotheses* in preregister form. The README
   honesty disclosure is exemplary; the spec-level claims
   inside each speculative verb must mirror it.

---

## §6 References

- Miller GA. The magical number seven, plus or minus two. *Psychol.
  Rev.* 63:81–97 (1956).
- Cowan N. The magical number 4 in short-term memory. *Behav.
  Brain Sci.* 24:87–185 (2001).
- Pashler H. Dual-task interference in simple tasks: data and
  theory. *Psychol. Bull.* 116:220–44 (1994).
- Hick WE. On the rate of gain of information. *Q. J. Exp.
  Psychol.* 4:11–26 (1952).
- Newell A, Rosenbloom PS. Mechanisms of skill acquisition and the
  law of practice. In: Anderson JR, ed. *Cognitive Skills and
  Their Acquisition*, LEA (1981).
- Yerkes RM, Dodson JD. The relation of strength of stimulus to
  rapidity of habit-formation. *J. Comp. Neurol. Psychol.*
  18:459–82 (1908).
- Sweller J. Cognitive load during problem solving. *Cogn. Sci.*
  12:257–85 (1988).
- Eberhard PH. Bell's theorem and the different concepts of
  locality. *Nuovo Cim. B* 46:392–419 (1978).
- Peres A. *Quantum Theory: Concepts and Methods*. Kluwer (1995),
  Ch. 6.
- Azevedo FA et al. Equal numbers of neuronal and nonneuronal
  cells make the human brain an isometrically scaled-up primate
  brain. *J. Comp. Neurol.* 513:532–41 (2009).
- MICrONS Consortium. Functional connectomics spanning multiple
  areas of mouse visual cortex. *Nature* (2025, in press).
- Chalmers DJ. Facing up to the problem of consciousness. *J.
  Conscious. Stud.* 2:200–19 (1995).
- Stickgold R. Sleep-dependent memory consolidation. *Nature*
  437:1272–8 (2005).
- Ericsson KA, Chase WG, Faloon S. Acquisition of a memory skill.
  *Science* 208:1181–2 (1980).
- Willett FR et al. High-performance brain-to-text communication
  via handwriting. *Nature* 593:249–54 (2021).
- Tononi G. Integrated information theory of consciousness. *BMC
  Neurosci.* 5:42 (2004).

---

*Wave M — real-limits audit; n=6 lattice not used as cognitive
evidence. HARD walls L1, L2, L3, L4, L7, L10 are unbreakable;
L8 BREAKABLE only at 10⁸× engineering distance; L9 UNCLEAR
(philosophical). 4/7 speculative verbs ride physics-forbidden
or extreme-engineering walls — preregistration is the deliverable.*
