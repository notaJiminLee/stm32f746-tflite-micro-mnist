set(DSP_LIB_DIR ${CMAKE_SOURCE_DIR}/libs/CMSIS/DSP)

# Make sure the lib is there
if (NOT EXISTS "${DSP_LIB_DIR}")
  message(FATAL_ERROR "DSP_LIB_DIR not found.")
endif()

include_directories(
  ${DSP_LIB_DIR}/Include
  ${DSP_LIB_DIR}/PrivateInclude
  ${DSP_LIB_DIR}/Core/Include
)

# Get all source files from the Source directory
set(DSP_LIB_SRC
    ${DSP_LIB_DIR}/Source/FastMathFunctions
    ${DSP_LIB_DIR}/Source/FastMathFunctions/arm_sin_q15.c
    ${DSP_LIB_DIR}/Source/FastMathFunctions/arm_cos_q15.c
    ${DSP_LIB_DIR}/Source/FastMathFunctions/arm_sqrt_q31.c
    ${DSP_LIB_DIR}/Source/FastMathFunctions/arm_cos_f32.c
    ${DSP_LIB_DIR}/Source/FastMathFunctions/arm_vexp_f32.c
    ${DSP_LIB_DIR}/Source/FastMathFunctions/arm_sin_f32.c
    ${DSP_LIB_DIR}/Source/FastMathFunctions/FastMathFunctions.c
    ${DSP_LIB_DIR}/Source/FastMathFunctions/arm_sin_q31.c
    ${DSP_LIB_DIR}/Source/FastMathFunctions/arm_vlog_f32.c
    ${DSP_LIB_DIR}/Source/FastMathFunctions/arm_sqrt_q15.c
    ${DSP_LIB_DIR}/Source/FastMathFunctions/arm_cos_q31.c
    
    ${DSP_LIB_DIR}/Source/SVMFunctions/arm_svm_linear_init_f32.c
    ${DSP_LIB_DIR}/Source/SVMFunctions/arm_svm_polynomial_init_f32.c
    ${DSP_LIB_DIR}/Source/SVMFunctions/arm_svm_sigmoid_init_f32.c
    ${DSP_LIB_DIR}/Source/SVMFunctions/arm_svm_rbf_init_f32.c
    ${DSP_LIB_DIR}/Source/SVMFunctions/arm_svm_linear_predict_f32.c
    ${DSP_LIB_DIR}/Source/SVMFunctions/arm_svm_polynomial_predict_f32.c
    ${DSP_LIB_DIR}/Source/SVMFunctions/SVMFunctions.c
    ${DSP_LIB_DIR}/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.c
    
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_cfft_f16.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_cfft_init_q31.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_dct4_f32.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_rfft_f32.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_cfft_radix4_q31.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_cfft_init_f16.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_rfft_q31.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_rfft_init_f32.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_cfft_radix4_init_f32.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_cfft_q31.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_cfft_radix4_init_q15.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_rfft_init_q15.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_cfft_f64.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_dct4_init_q31.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_cfft_radix2_q31.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_dct4_init_f32.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_cfft_q15.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_cfft_f32.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_cfft_radix2_q15.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_rfft_fast_f32.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_bitreversal2.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_cfft_radix4_q15.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_cfft_radix8_f32.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_dct4_init_q15.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_dct4_q31.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_cfft_radix2_init_q31.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_cfft_init_f64.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_rfft_fast_init_f64.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_cfft_radix2_f32.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/TransformFunctions.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_rfft_fast_f64.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_cfft_radix4_f16.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_rfft_init_q31.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_cfft_radix2_f16.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_rfft_q15.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_cfft_radix2_init_q15.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_rfft_fast_init_f32.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_cfft_init_q15.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_cfft_init_f32.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_bitreversal.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_cfft_radix2_init_f32.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_cfft_radix4_f32.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_cfft_radix4_init_q31.c
    ${DSP_LIB_DIR}/Source/TransformFunctions/arm_dct4_q15.c
    
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_shift_q7.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_add_q15.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_xor_u32.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_offset_q31.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_dot_prod_q15.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_and_u16.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_not_u8.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_not_u32.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_add_q7.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_offset_f16.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_or_u32.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_offset_q7.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_negate_q7.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_dot_prod_f16.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_negate_f16.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_scale_f32.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_mult_q7.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_abs_q15.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_sub_q31.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_abs_q7.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_scale_q31.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_dot_prod_q31.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_negate_f32.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_not_u16.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_shift_q31.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_sub_f16.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_scale_q15.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_dot_prod_q7.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_and_u8.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_add_q31.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_scale_f16.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_negate_q31.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_sub_q7.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_offset_q15.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_add_f16.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/BasicMathFunctions.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_mult_f32.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_sub_q15.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_and_u32.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_mult_f16.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_scale_q7.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_or_u16.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_abs_f32.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_dot_prod_f32.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_xor_u16.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_mult_q15.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_abs_q31.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_abs_f16.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_shift_q15.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_mult_q31.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_offset_f32.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_add_f32.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_sub_f32.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_negate_q15.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_xor_u8.c
    ${DSP_LIB_DIR}/Source/BasicMathFunctions/arm_or_u8.c

    ${DSP_LIB_DIR}/Source/BayesFunctions/BayesFunctions.c
    ${DSP_LIB_DIR}/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.c

    ${DSP_LIB_DIR}/Source/ComplexMathFunctions/arm_cmplx_mag_f32.c
    ${DSP_LIB_DIR}/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.c
    ${DSP_LIB_DIR}/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.c
    ${DSP_LIB_DIR}/Source/ComplexMathFunctions/arm_cmplx_conj_q31.c
    ${DSP_LIB_DIR}/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.c
    ${DSP_LIB_DIR}/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.c
    ${DSP_LIB_DIR}/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.c
    ${DSP_LIB_DIR}/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.c
    ${DSP_LIB_DIR}/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.c
    ${DSP_LIB_DIR}/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.c
    ${DSP_LIB_DIR}/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.c
    ${DSP_LIB_DIR}/Source/ComplexMathFunctions/arm_cmplx_mag_q15.c
    ${DSP_LIB_DIR}/Source/ComplexMathFunctions/arm_cmplx_conj_q15.c
    ${DSP_LIB_DIR}/Source/ComplexMathFunctions/ComplexMathFunctions.c
    ${DSP_LIB_DIR}/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.c
    ${DSP_LIB_DIR}/Source/ComplexMathFunctions/arm_cmplx_mag_q31.c
    ${DSP_LIB_DIR}/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.c
    ${DSP_LIB_DIR}/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.c
    ${DSP_LIB_DIR}/Source/ComplexMathFunctions/arm_cmplx_conj_f32.c

    ${DSP_LIB_DIR}/Source/MatrixFunctions/arm_mat_mult_q31.c
    ${DSP_LIB_DIR}/Source/MatrixFunctions/arm_mat_sub_f32.c
    ${DSP_LIB_DIR}/Source/MatrixFunctions/arm_mat_trans_f32.c
    ${DSP_LIB_DIR}/Source/MatrixFunctions/arm_mat_scale_q15.c
    ${DSP_LIB_DIR}/Source/MatrixFunctions/arm_mat_mult_fast_q31.c
    ${DSP_LIB_DIR}/Source/MatrixFunctions/arm_mat_init_q31.c
    ${DSP_LIB_DIR}/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.c
    ${DSP_LIB_DIR}/Source/MatrixFunctions/arm_mat_scale_f32.c
    ${DSP_LIB_DIR}/Source/MatrixFunctions/arm_mat_sub_q31.c
    ${DSP_LIB_DIR}/Source/MatrixFunctions/arm_mat_trans_q15.c
    ${DSP_LIB_DIR}/Source/MatrixFunctions/arm_mat_add_q15.c
    ${DSP_LIB_DIR}/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.c
    ${DSP_LIB_DIR}/Source/MatrixFunctions/arm_mat_trans_q31.c
    ${DSP_LIB_DIR}/Source/MatrixFunctions/arm_mat_add_f32.c
    ${DSP_LIB_DIR}/Source/MatrixFunctions/arm_mat_init_f32.c
    ${DSP_LIB_DIR}/Source/MatrixFunctions/arm_mat_init_q15.c
    ${DSP_LIB_DIR}/Source/MatrixFunctions/arm_mat_mult_fast_q15.c
    ${DSP_LIB_DIR}/Source/MatrixFunctions/arm_mat_mult_f32.c
    ${DSP_LIB_DIR}/Source/MatrixFunctions/MatrixFunctions.c
    ${DSP_LIB_DIR}/Source/MatrixFunctions/arm_mat_inverse_f64.c
    ${DSP_LIB_DIR}/Source/MatrixFunctions/arm_mat_inverse_f32.c
    ${DSP_LIB_DIR}/Source/MatrixFunctions/arm_mat_mult_q15.c
    ${DSP_LIB_DIR}/Source/MatrixFunctions/arm_mat_add_q31.c
    ${DSP_LIB_DIR}/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.c
    ${DSP_LIB_DIR}/Source/MatrixFunctions/arm_mat_sub_q15.c
    ${DSP_LIB_DIR}/Source/MatrixFunctions/arm_mat_scale_q31.c

    ${DSP_LIB_DIR}/Source/ControllerFunctions/arm_pid_init_f32.c
    ${DSP_LIB_DIR}/Source/ControllerFunctions/arm_sin_cos_f32.c
    ${DSP_LIB_DIR}/Source/ControllerFunctions/arm_pid_init_q15.c
    ${DSP_LIB_DIR}/Source/ControllerFunctions/ControllerFunctions.c
    ${DSP_LIB_DIR}/Source/ControllerFunctions/arm_pid_reset_q31.c
    ${DSP_LIB_DIR}/Source/ControllerFunctions/arm_pid_init_q31.c
    ${DSP_LIB_DIR}/Source/ControllerFunctions/arm_pid_reset_f32.c
    ${DSP_LIB_DIR}/Source/ControllerFunctions/arm_sin_cos_q31.c
    ${DSP_LIB_DIR}/Source/ControllerFunctions/arm_pid_reset_q15.c

    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_spline_interp_f32.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_copy_f32.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_q15_to_float.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_fill_q15.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_q7_to_q15.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_merge_sort_f32.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_q7_to_q31.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_selection_sort_f32.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_fill_q7.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_float_to_q31.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_q31_to_q15.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_barycenter_f32.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_spline_interp_init_f32.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_heap_sort_f32.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_q15_to_q7.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_q15_to_q31.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_q7_to_float.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_weighted_sum_f32.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_insertion_sort_f32.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_bubble_sort_f32.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_q31_to_float.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_float_to_q15.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_fill_q31.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_merge_sort_init_f32.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_sort_f32.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_quick_sort_f32.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_sort_init_f32.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_copy_q31.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_fill_f32.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_float_to_q7.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/SupportFunctions.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_q31_to_q7.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_copy_q7.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_copy_q15.c
    ${DSP_LIB_DIR}/Source/SupportFunctions/arm_bitonic_sort_f32.c

    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_power_q15.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_max_q15.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_mean_q7.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_max_q31.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_power_q31.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_rms_q31.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_max_f32.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_max_q7.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_logsumexp_f32.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_entropy_f64.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_kullback_leibler_f32.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_rms_f32.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_min_q31.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_mean_f32.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_var_q15.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_std_q31.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_mean_q15.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_rms_q15.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_var_q31.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_min_q15.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_entropy_f32.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_mean_q31.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_min_f32.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_max_no_idx_f32.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_std_q15.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_power_f32.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_power_q7.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_std_f32.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f32.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_var_f32.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_min_q7.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/arm_kullback_leibler_f64.c
    ${DSP_LIB_DIR}/Source/StatisticsFunctions/StatisticsFunctions.c

    ${DSP_LIB_DIR}/Source/DistanceFunctions/arm_chebyshev_distance_f32.c
    ${DSP_LIB_DIR}/Source/DistanceFunctions/arm_hamming_distance.c
    ${DSP_LIB_DIR}/Source/DistanceFunctions/arm_minkowski_distance_f32.c
    ${DSP_LIB_DIR}/Source/DistanceFunctions/arm_boolean_distance_template.h
    ${DSP_LIB_DIR}/Source/DistanceFunctions/arm_sokalsneath_distance.c
    ${DSP_LIB_DIR}/Source/DistanceFunctions/arm_jaccard_distance.c
    ${DSP_LIB_DIR}/Source/DistanceFunctions/DistanceFunctions.c
    ${DSP_LIB_DIR}/Source/DistanceFunctions/arm_rogerstanimoto_distance.c
    ${DSP_LIB_DIR}/Source/DistanceFunctions/arm_braycurtis_distance_f32.c
    ${DSP_LIB_DIR}/Source/DistanceFunctions/arm_correlation_distance_f32.c
    ${DSP_LIB_DIR}/Source/DistanceFunctions/arm_canberra_distance_f32.c
    ${DSP_LIB_DIR}/Source/DistanceFunctions/arm_yule_distance.c
    ${DSP_LIB_DIR}/Source/DistanceFunctions/arm_sokalmichener_distance.c
    ${DSP_LIB_DIR}/Source/DistanceFunctions/arm_dice_distance.c
    ${DSP_LIB_DIR}/Source/DistanceFunctions/arm_jensenshannon_distance_f32.c
    ${DSP_LIB_DIR}/Source/DistanceFunctions/arm_russellrao_distance.c
    ${DSP_LIB_DIR}/Source/DistanceFunctions/arm_cityblock_distance_f32.c
    ${DSP_LIB_DIR}/Source/DistanceFunctions/arm_kulsinski_distance.c
    ${DSP_LIB_DIR}/Source/DistanceFunctions/arm_euclidean_distance_f32.c
    ${DSP_LIB_DIR}/Source/DistanceFunctions/arm_cosine_distance_f32.c
    ${DSP_LIB_DIR}/Source/DistanceFunctions/arm_boolean_distance.c
    
    ${DSP_LIB_DIR}/Source/CommonTables/arm_const_structs.c
    ${DSP_LIB_DIR}/Source/CommonTables/arm_mve_tables.c
    ${DSP_LIB_DIR}/Source/CommonTables/CommonTables.c
    ${DSP_LIB_DIR}/Source/CommonTables/arm_common_tables.c
    
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_q7.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_conv_fast_opt_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_sparse_init_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_lattice_init_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_lattice_init_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_sparse_f32.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_decimate_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_conv_partial_f32.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_lms_norm_f32.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_sparse_init_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_conv_partial_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_lattice_init_f32.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_interpolate_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_interpolate_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_decimate_init_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_conv_f32.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_lms_norm_init_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_init_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_lms_norm_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_iir_lattice_init_f32.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_lms_init_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_init_q7.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_lms_init_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_interpolate_init_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_correlate_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_decimate_init_f32.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_lattice_f32.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_conv_partial_fast_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_correlate_opt_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_conv_partial_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_conv_partial_opt_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_lms_init_f32.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_interpolate_init_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_decimate_init_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_lms_norm_init_f32.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_f32.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_conv_partial_fast_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_interpolate_f32.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_correlate_opt_q7.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_init_f32.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_correlate_fast_opt_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_lms_norm_init_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_conv_opt_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_decimate_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_decimate_f32.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_conv_fast_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_iir_lattice_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_conv_partial_q7.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_conv_q7.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_iir_lattice_f32.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_conv_opt_q7.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_iir_lattice_init_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_fast_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_sparse_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_lms_f32.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_sparse_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_iir_lattice_init_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_sparse_init_q7.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_lms_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_conv_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_conv_fast_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_correlate_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_interpolate_init_f32.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_correlate_fast_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_iir_lattice_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_conv_partial_opt_q7.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_lms_norm_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_lms_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_conv_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_lattice_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_decimate_fast_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_lattice_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_sparse_init_f32.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/FilteringFunctions.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_fast_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_correlate_fast_q31.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_correlate_q7.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_correlate_f32.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_init_q15.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_sparse_q7.c
    ${DSP_LIB_DIR}/Source/FilteringFunctions/arm_fir_decimate_fast_q15.c
)

set_source_files_properties(${DSP_LIB_SRC}
    PROPERTIES COMPILE_FLAGS ${STM32F7_DEFINES}
)

add_library(cmsis_dsp_lib STATIC ${DSP_LIB_SRC})
set_target_properties(cmsis_dsp_lib PROPERTIES LINKER_LANGUAGE C)

set(EXTERNAL_LIBS ${EXTERNAL_LIBS} cmsis_dsp_lib)