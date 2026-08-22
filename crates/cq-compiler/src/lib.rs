//! MiniLinq's typed compiler passes and Rust-shaped physical boundary.
//!
//! Token parsing and macro routing live in the `mini-linq` proc-macro crate.
//! This crate accepts typed IR values; their semantic well-formedness belongs
//! to the corresponding `compile_*` pass contracts.

mod pass_contracts;
mod passes;

pub use passes::{
    compile_cq, compile_index_requirements, compile_iterator_pipeline, compile_pull,
    compile_relational_plan,
};
