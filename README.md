# Rust OS Tutorial Project

My implementation of an operating system written in Rust, based on the  
**“Writing an OS in Rust”** tutorial series by Philipp Oppermann:

👉 https://os.phil-opp.com/  
👉 https://github.com/phil-opp/blog_os

This repository contains my step-by-step progress, experiments, and extensions while following the tutorial.

---

## 📌 Goals

- Learn low-level systems programming in Rust
- Understand OS fundamentals:
  - Boot process
  - Bare-metal Rust binaries
  - Memory management
  - Interrupt handling
  - Paging and heap allocation
  - Async and multitasking
- Build a minimal x86_64 kernel from scratch

---

## 🧱 Current Progress

- [X] Freestanding Rust Binary
- [X] Minimal Rust Kernel
- [X] VGA Text Mode
- [ ] Testing
- [ ] CPU Exceptions
- [ ] Double Faults
- [ ] Hardware Interrupts
- [ ] Paging
- [ ] Heap Allocation
- [ ] Async / Multitasking

---

## ⚙️ Requirements

Recommended environment:

- `Rust nightly`
- `rustup`
- `cargo`
- `bootimage`
- `qemu-system-x86_64`
- LLVM tools (`llvm-tools-preview`)

Install components:

```
rustup toolchain install nightly
rustup component add rust-src --toolchain nightly
rustup component add llvm-tools-preview --toolchain nightly
cargo install bootimage
```
---

## 📂 Project Structure

```
src/
├── main.rs        # Kernel entry point
├── vga\_buffer.rs  # VGA text writer
├── interrupts.rs  # IDT & interrupt handlers
└── memory.rs      # Paging & memory management

(Structure evolves as tutorial progresses.)
```

🔍 Notes
This repo follows the second edition of the tutorial.

Code may differ from the reference branches — experiments and refactors are included.



---

## Build & Run

Build the OS image:

```bash
cargo +nightly bootimage
```

Run in QEMU (recommended):

```bash
cargo +nightly bootimage run
```

Or run the built image manually:

```bash
qemu-system-x86_64 -drive format=raw,file=target/x86_64-*/debug/bootimage-*.bin
```

---

## Tests

Run kernel tests (some tests run inside QEMU and use the ISA debug device to exit):

```bash
cargo +nightly test
```

---

## License

This repository is for learning purposes. See the upstream tutorial repo for the original licensing.

---
