//! Authored Rust modules containing the workload query programs.
//!
//! Each leaf directly invokes the `mini_linq::workload_query!` procedural macro
//! once. Its token tree becomes a typed CQ factory for the catalog. After all
//! three basic passes are complete, `compiled-queries` makes that same
//! invocation emit the complete
//! generated query program for rustc and Rust Analyzer to inspect.

pub mod classic;
pub mod retail;
