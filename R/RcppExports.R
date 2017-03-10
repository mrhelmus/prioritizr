# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

rcpp_new_optimization_problem <- function(nrow = 1000000L, ncol = 1000000L, ncell = 100000L) {
    .Call('prioritizr_rcpp_new_optimization_problem', PACKAGE = 'prioritizr', nrow, ncol, ncell)
}

rcpp_predefined_optimization_problem <- function(l) {
    .Call('prioritizr_rcpp_predefined_optimization_problem', PACKAGE = 'prioritizr', l)
}

rcpp_get_optimization_problem_ncol <- function(x) {
    .Call('prioritizr_rcpp_get_optimization_problem_ncol', PACKAGE = 'prioritizr', x)
}

rcpp_get_optimization_problem_nrow <- function(x) {
    .Call('prioritizr_rcpp_get_optimization_problem_nrow', PACKAGE = 'prioritizr', x)
}

rcpp_get_optimization_problem_ncell <- function(x) {
    .Call('prioritizr_rcpp_get_optimization_problem_ncell', PACKAGE = 'prioritizr', x)
}

rcpp_get_optimization_problem_A <- function(x) {
    .Call('prioritizr_rcpp_get_optimization_problem_A', PACKAGE = 'prioritizr', x)
}

rcpp_get_optimization_problem_modelsense <- function(x) {
    .Call('prioritizr_rcpp_get_optimization_problem_modelsense', PACKAGE = 'prioritizr', x)
}

rcpp_get_optimization_problem_number_of_planning_units <- function(x) {
    .Call('prioritizr_rcpp_get_optimization_problem_number_of_planning_units', PACKAGE = 'prioritizr', x)
}

rcpp_get_optimization_problem_number_of_features <- function(x) {
    .Call('prioritizr_rcpp_get_optimization_problem_number_of_features', PACKAGE = 'prioritizr', x)
}

rcpp_get_optimization_problem_vtype <- function(x) {
    .Call('prioritizr_rcpp_get_optimization_problem_vtype', PACKAGE = 'prioritizr', x)
}

rcpp_get_optimization_problem_obj <- function(x) {
    .Call('prioritizr_rcpp_get_optimization_problem_obj', PACKAGE = 'prioritizr', x)
}

rcpp_get_optimization_problem_rhs <- function(x) {
    .Call('prioritizr_rcpp_get_optimization_problem_rhs', PACKAGE = 'prioritizr', x)
}

rcpp_get_optimization_problem_sense <- function(x) {
    .Call('prioritizr_rcpp_get_optimization_problem_sense', PACKAGE = 'prioritizr', x)
}

rcpp_get_optimization_problem_lb <- function(x) {
    .Call('prioritizr_rcpp_get_optimization_problem_lb', PACKAGE = 'prioritizr', x)
}

rcpp_get_optimization_problem_ub <- function(x) {
    .Call('prioritizr_rcpp_get_optimization_problem_ub', PACKAGE = 'prioritizr', x)
}

rcpp_get_optimization_problem_col_ids <- function(x) {
    .Call('prioritizr_rcpp_get_optimization_problem_col_ids', PACKAGE = 'prioritizr', x)
}

rcpp_get_optimization_problem_row_ids <- function(x) {
    .Call('prioritizr_rcpp_get_optimization_problem_row_ids', PACKAGE = 'prioritizr', x)
}

rcpp_get_optimization_problem_compressed_formulation <- function(x) {
    .Call('prioritizr_rcpp_get_optimization_problem_compressed_formulation', PACKAGE = 'prioritizr', x)
}

rcpp_add_rij_data <- function(x, rij, compressed_formulation) {
    .Call('prioritizr_rcpp_add_rij_data', PACKAGE = 'prioritizr', x, rij, compressed_formulation)
}

rcpp_apply_asymmetric_boundary_constraints <- function(x, boundary_matrix, penalty, edge_factor) {
    .Call('prioritizr_rcpp_apply_asymmetric_boundary_constraints', PACKAGE = 'prioritizr', x, boundary_matrix, penalty, edge_factor)
}

rcpp_apply_connected_constraints <- function(x, connected_matrix) {
    .Call('prioritizr_rcpp_apply_connected_constraints', PACKAGE = 'prioritizr', x, connected_matrix)
}

rcpp_apply_corridor_constraints <- function(x, connected_matrix_list, threshold) {
    .Call('prioritizr_rcpp_apply_corridor_constraints', PACKAGE = 'prioritizr', x, connected_matrix_list, threshold)
}

rcpp_apply_binary_decisions <- function(x) {
    .Call('prioritizr_rcpp_apply_binary_decisions', PACKAGE = 'prioritizr', x)
}

rcpp_apply_proportion_decisions <- function(x) {
    .Call('prioritizr_rcpp_apply_proportion_decisions', PACKAGE = 'prioritizr', x)
}

rcpp_apply_semicontinuous_decisions <- function(x, upper) {
    .Call('prioritizr_rcpp_apply_semicontinuous_decisions', PACKAGE = 'prioritizr', x, upper)
}

rcpp_apply_feature_weights <- function(x, weights) {
    .Call('prioritizr_rcpp_apply_feature_weights', PACKAGE = 'prioritizr', x, weights)
}

rcpp_apply_locked_in_constraints <- function(x, indices) {
    .Call('prioritizr_rcpp_apply_locked_in_constraints', PACKAGE = 'prioritizr', x, indices)
}

rcpp_apply_locked_out_constraints <- function(x, indices) {
    .Call('prioritizr_rcpp_apply_locked_out_constraints', PACKAGE = 'prioritizr', x, indices)
}

rcpp_apply_max_cover_objective <- function(x, abundances, costs, budget) {
    .Call('prioritizr_rcpp_apply_max_cover_objective', PACKAGE = 'prioritizr', x, abundances, costs, budget)
}

rcpp_apply_max_features_objective <- function(x, targets, costs, budget) {
    .Call('prioritizr_rcpp_apply_max_features_objective', PACKAGE = 'prioritizr', x, targets, costs, budget)
}

rcpp_apply_max_phylo_objective <- function(x, targets, costs, budget, branch_matrix, branch_lengths) {
    .Call('prioritizr_rcpp_apply_max_phylo_objective', PACKAGE = 'prioritizr', x, targets, costs, budget, branch_matrix, branch_lengths)
}

rcpp_apply_min_set_objective <- function(x, targets, costs) {
    .Call('prioritizr_rcpp_apply_min_set_objective', PACKAGE = 'prioritizr', x, targets, costs)
}

rcpp_apply_neighbor_constraints <- function(x, connected_matrix, k) {
    .Call('prioritizr_rcpp_apply_neighbor_constraints', PACKAGE = 'prioritizr', x, connected_matrix, k)
}

rcpp_apply_symmetric_boundary_constraints <- function(x, boundary_matrix, penalty, edge_factor) {
    .Call('prioritizr_rcpp_apply_symmetric_boundary_constraints', PACKAGE = 'prioritizr', x, boundary_matrix, penalty, edge_factor)
}

rcpp_boundary_data <- function(data, tolerance = 0.00001) {
    .Call('prioritizr_rcpp_boundary_data', PACKAGE = 'prioritizr', data, tolerance)
}

rcpp_branch_matrix <- function(x) {
    .Call('prioritizr_rcpp_branch_matrix', PACKAGE = 'prioritizr', x)
}

rcpp_list_to_matrix_indices <- function(x, n_preallocate = 10000L) {
    .Call('prioritizr_rcpp_list_to_matrix_indices', PACKAGE = 'prioritizr', x, n_preallocate)
}

rcpp_sp_to_polyset <- function(x, slot, n_preallocate = 10000L) {
    .Call('prioritizr_rcpp_sp_to_polyset', PACKAGE = 'prioritizr', x, slot, n_preallocate)
}
