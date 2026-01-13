# run_suite.py
import argparse
import glob
import logging
import os
import time
from pathlib import Path

from ci_utils import TestFile, run_unittest_files

# 仅保留 Ascend 测试套件
suite_ascend = {
    "per-commit-1-npu-a3": [
      TestFile("ascend/function/test_ascend_bucket_e2e_request_latency.py",400),
      TestFile("ascend/function/test_ascend_bucket_inter_token_latency.py",400),
      TestFile("ascend/function/test_ascend_bucket_time_to_first_token.py",400),
      TestFile("ascend/function/test_ascend_collect_tokens_histogram.py",400),
      TestFile("ascend/function/test_ascend_cpu_offload_gb.py",400),
      TestFile("ascend/function/test_ascend_debug_tensor_dump_output_folder.py",400),
      TestFile("ascend/function/test_ascend_disable_custom_all_reduce.py",400),
      #TestFile("ascend/function/test_ascend_disable_shared_expoerts_fusion.py",400),
      TestFile("ascend/function/test_ascend_enable_mixed_chunk.py",400),
      TestFile("ascend/function/test_ascend_enable_profile_cuda_graph.py",400),
      TestFile("ascend/function/test_ascend_enable_request_time_stats_logging.py",400),
      TestFile("ascend/function/test_ascend_eplb_algorithm.py",400),
      TestFile("ascend/function/test_ascend_hicache_io_backend.py",400),
      TestFile("ascend/function/test_ascend_lora_backend.py",400),
      TestFile("ascend/function/test_ascend_lora_target_modules.py",400),
      TestFile("ascend/function/test_ascend_max_loaded_loras.py",400),
      TestFile("ascend/function/test_ascend_max_loras_per_batch.py",400),
      TestFile("ascend/function/test_ascend_mm_attention_backend.py",400),
      TestFile("ascend/function/test_ascend_schedule_conservativeness.py",400),
      TestFile("ascend/function/test_ascend_sleep_on_idle.py",400),
      TestFile("ascend/function/test_ascend_tbo_token_distribution_threshold.py",400),
      TestFile("ascend/function/test_ascend_tp2_fia_bf16.py",400),
      TestFile("ascend/function/test_ascend_tp4_bf16.py",400),
      TestFile("ascend/function/test_ascend_weight_loader_disable_mmap.py",400),
      TestFile("ascend/function/test_disaggregation_decode_dp.py",400),
      TestFile("ascend/function/test_disaggregation_decode_tp.py",400),
      TestFile("ascend/function/test_disaggregation_pp.py",400),
      TestFile("ascend/function/test_disaggregation_prefill_pp.py",400),
      TestFile("ascend/function/test_fp8_kvcache.py",400),
      TestFile("ascend/function/test_hicache_page.py",400),
      TestFile("ascend/function/test_hicache.py",400),
      TestFile("ascend/function/test_kv_events.py",400),
      TestFile("ascend/function/test_large_max_new_tokens.py",400),
      TestFile("ascend/function/test_lora_llama4.py",400),
      TestFile("ascend/function/test_lora_openai_compatible.py",400),
      TestFile("ascend/function/test_metrics.py",400),
      TestFile("ascend/function/test_nccl_port.py",400),
      TestFile("ascend/function/test_openai_function_calling.py",400),       
      TestFile("ascend/function/test_openai_server_hidden_states.py",400),
      TestFile("ascend/function/test_pytorch_sampling_backend.py",400),
      TestFile("ascend/function/test_radix_attention.py",400),
      TestFile("ascend/function/test_reasoning_content.py",400),
      TestFile("ascend/function/test_torch_compile_moe.py",400),
      TestFile("ascend/function/test_torch_compile.py",400),
      TestFile("ascend/function/test_two_batch_overlap.py",400),
      TestFile("ascend/neiyuan/test_ascend_allow_auto_truncate.py", 400),
      TestFile("ascend/neiyuan/test_ascend_completion_template.py", 400),
      TestFile("ascend/neiyuan/test_ascend_custom_weight_loader.py", 400),
      TestFile("ascend/neiyuan/test_ascend_debug_tensor_input_file.py", 400),
      TestFile("ascend/neiyuan/test_ascend_deepep_mtp.py", 400),
      TestFile("ascend/neiyuan/test_ascend_deepseek_mtp.py", 400),
      TestFile("ascend/neiyuan/test_ascend_delete_ckpt_after_loading.py", 400),
      TestFile("ascend/neiyuan/test_ascend_disable_chunked_prefix_cache.py", 400),
      TestFile("ascend/neiyuan/test_ascend_disable_cuda_graph_padding.py", 400),
      TestFile("ascend/neiyuan/test_ascend_disable_custom_all_reduce.py", 400),
      TestFile("ascend/neiyuan/test_ascend_disable_fast_image_processor.py", 400),
      TestFile("ascend/neiyuan/test_ascend_disable_shared_expoerts_fusion.py", 400),
      TestFile("ascend/neiyuan/test_ascend_download_dir.py", 400),
      TestFile("ascend/neiyuan/test_ascend_dtype.py", 400),
      TestFile("ascend/neiyuan/test_ascend_model_impl.py", 400),
      TestFile("ascend/neiyuan/test_ascend_enable_cache_report.py", 400),
      TestFile("ascend/neiyuan/test_ascend_enable_tokenizer_batch_encode.py", 400),
      TestFile("ascend/neiyuan/test_ascend_gpu_id.py", 400),
      TestFile("ascend/neiyuan/test_ascend_graph_tp1_bf16.py", 400),
      TestFile("ascend/neiyuan/test_ascend_graph_tp2_bf16.py", 400),
      TestFile("ascend/neiyuan/test_ascend_hicache_mha.py", 400),
      TestFile("ascend/neiyuan/test_ascend_hybrid_attention_backend.py", 400),
      TestFile("ascend/neiyuan/test_ascend_json_model_override_args.py", 400),
      TestFile("ascend/neiyuan/test_ascend_load_balance_method.py", 400),
      TestFile("ascend/neiyuan/test_ascend_log_level.py", 400),
      TestFile("ascend/neiyuan/test_ascend_log_requests.py", 400),
      TestFile("ascend/neiyuan/test_ascend_mla_fia_w8a8int8.py", 400),
      TestFile("ascend/neiyuan/test_ascend_mla_w8a8int8.py", 400),
      #TestFile("ascend/neiyuan/test_ascend_model_impl.py", 400),
      TestFile("ascend/neiyuan/test_ascend_moe_runner_backend.py", 400),
      TestFile("ascend/neiyuan/test_ascend_prefferred_sampling_params.py", 400),
      TestFile("ascend/neiyuan/test_ascend_random_seed.py", 400),
      TestFile("ascend/neiyuan/test_ascend_revision.py", 400),
      TestFile("ascend/neiyuan/test_ascend_sampling_backend.py", 400),
      TestFile("ascend/neiyuan/test_ascend_served_model_name.py", 400),
      TestFile("ascend/neiyuan/test_ascend_skip_warmup.py", 400),
      TestFile("ascend/neiyuan/test_ascend_stream_interval.py", 400),
      TestFile("ascend/neiyuan/test_ascend_tokenizer_mode.py", 400),
      TestFile("ascend/neiyuan/test_ascend_tp1_bf16.py", 400),
      TestFile("ascend/neiyuan/test_ascend_tp2_bf16.py", 400),
      TestFile("ascend/neiyuan/test_ascend_tp2_fia_bf16.py", 400),
      #TestFile("ascend/neiyuan/test_ascend_tp4_bf16.py", 400),
      TestFile("ascend/neiyuan/test_ascend_warmups.py", 400),
     # TestFile("ascend/neiyuan/test_ascend_weight_loader_disable_mmap.py", 400),
      TestFile("ascend/neiyuan/test_enable_multimodal_non_mlm.py", 400),
      TestFile("ascend/neiyuan/test_skip_tokenizer_init.py", 400),
      TestFile("ascend/srt/test_create_kvindices.py", 400),
      TestFile("ascend/srt/test_data_parallelism.py", 400),
      TestFile("ascend/srt/test_enable_thinking.py", 400),
      TestFile("ascend/srt/test_eplb.py", 400),
      TestFile("ascend/srt/test_harmony_parser.py", 400),
      TestFile("ascend/srt/test_hidden_states.py", 400),
      TestFile("ascend/srt/test_input_embeddings.py", 400),
      TestFile("ascend/srt/test_io_struct.py", 400),
      TestFile("ascend/srt/test_jinja_template_utils.py", 400),
      TestFile("ascend/srt/test_matched_stop.py", 400),
      TestFile("ascend/srt/test_no_chunked_prefill.py", 400),
      TestFile("ascend/srt/test_no_overlap_scheduler.py", 400),
      TestFile("ascend/srt/test_openai_embedding.py", 400),
      TestFile("ascend/srt/test_openai_server_ignore_eos.py", 400),
      TestFile("ascend/srt/test_original_logprobs.py", 400),
      TestFile("ascend/srt/test_penalty.py", 400),
      TestFile("ascend/srt/test_protocol.py", 400),
      TestFile("ascend/srt/test_reasoning_parser.py", 400),
      TestFile("ascend/srt/test_request_length_validation.py", 400),
      TestFile("ascend/srt/test_request_queue_validation.py", 400),
      TestFile("ascend/srt/test_retract_decode.py", 400),
      TestFile("ascend/srt/test_server_args.py", 400),
      TestFile("ascend/srt/test_serving_completions.py", 400),
      TestFile("ascend/srt/test_serving_embedding.py", 400),
      TestFile("ascend/srt/test_start_profile.py", 400),
      TestFile("ascend/test_ascend_pp_single_node.py", 400),
    ],
    "per-commit-2-npu-a3": [
       # TestFile("ascend/test_ascend_graph_tp2_bf16.py", 400),
    ],
    "per-commit-4-npu-a3": [
       # TestFile("ascend/test_ascend_tp4_bf16.py", 400),
    ],
    "per-commit-16-npu-a3": [
       # TestFile("ascend/test_ascend_deepseek_mtp.py", 400),
    ],
}

# 全局套件仅保留 Ascend
suites = suite_ascend


def auto_partition(files, rank, size):
    """负载均衡：按预估时间均分测试文件"""
    weights = [f.estimated_time for f in files]

    if not weights or size <= 0 or size > len(weights):
        return []

    indexed_weights = [(w, -i) for i, w in enumerate(weights)]
    indexed_weights = sorted(indexed_weights, reverse=True)
    indexed_weights = [(w, -i) for w, i in indexed_weights]

    partitions = [[] for _ in range(size)]
    sums = [0.0] * size

    for weight, idx in indexed_weights:
        min_sum_idx = sums.index(min(sums))
        partitions[min_sum_idx].append(idx)
        sums[min_sum_idx] += weight

    indices = partitions[rank]
    return [files[i] for i in indices]


def _sanity_check_suites(suites):
    """校验测试文件是否存在、无遗漏"""
    dir_base = Path(__file__).parent
    disk_files = set(
        [
            str(x.relative_to(dir_base))
            for x in dir_base.glob("ascend/**/test_*.py")
            if x.name.startswith("test_")
        ]
    )

    suite_files = set(
        [test_file.name for _, suite in suites.items() for test_file in suite]
    )

    # 检查遗漏文件
    missing_files = sorted(list(disk_files - suite_files))
    missing_text = "\n".join(f'TestFile("{x}"),' for x in missing_files)
    assert len(missing_files) == 0, (
        f"Some test files are not in test suite. "
        f"If this is intentional, add to __not_in_ci__:\n{missing_text}"
    )

    # 检查不存在的文件
    nonexistent_files = sorted(list(suite_files - disk_files))
    nonexistent_text = "\n".join(f'TestFile("{x}"),' for x in nonexistent_files)
    assert len(nonexistent_files) == 0, (
        f"Some test files do not exist:\n{nonexistent_text}"
    )


def setup_logger(suite_name, log_dir="test_logs"):
    """初始化日志器：输出到控制台 + 文件"""
    timestamp = time.strftime("%Y%m%d_%H%M%S")
    log_dir = Path(log_dir) / suite_name / timestamp
    log_dir.mkdir(parents=True, exist_ok=True)

    # 框架日志
    framework_logger = logging.getLogger("framework")
    framework_logger.setLevel(logging.INFO)
    # 控制台handler
    ch = logging.StreamHandler()
    ch.setFormatter(logging.Formatter("%(asctime)s - %(levelname)s - %(message)s"))
    # 文件handler
    fh = logging.FileHandler(log_dir / "framework.log", encoding="utf-8")
    fh.setFormatter(logging.Formatter("%(asctime)s - %(levelname)s - %(message)s"))
    framework_logger.addHandler(ch)
    framework_logger.addHandler(fh)

    return framework_logger, log_dir


def main():
    parser = argparse.ArgumentParser(description="Run Ascend NPU test suites")
    parser.add_argument(
        "--timeout-per-file",
        type=int,
        default=1200,
        help="Timeout per test file (seconds)"
    )
    parser.add_argument(
        "--suite",
        type=str,
        default=list(suites.keys())[0],
        choices=list(suites.keys()) + ["all"],
        help="Test suite to run (Ascend only)"
    )
    parser.add_argument(
        "--auto-partition-id",
        type=int,
        help="Auto partition: part id (for load balancing)"
    )
    parser.add_argument(
        "--auto-partition-size",
        type=int,
        help="Auto partition: total parts (for load balancing)"
    )
    parser.add_argument(
        "--continue-on-error",
        action="store_true",
        default=False,
        help="Continue running even if one test fails"
    )
    parser.add_argument(
        "--enable-retry",
        action="store_true",
        default=False,
        help="Enable retry for retriable failures"
    )
    parser.add_argument(
        "--max-attempts",
        type=int,
        default=2,
        help="Max attempts per test file (default: 2)"
    )
    parser.add_argument(
        "--retry-wait-seconds",
        type=int,
        default=60,
        help="Seconds to wait between retries (default: 60)"
    )
    parser.add_argument(
        "--log-dir",
        type=str,
        default="test_logs",
        help="Root directory for test logs (default: test_logs)"
    )
    args = parser.parse_args()

    # 初始化日志
    framework_logger, log_dir = setup_logger(args.suite, args.log_dir)
    framework_logger.info(f"Starting Ascend test suite: {args.suite}")
    framework_logger.info(f"Command args: {args}")
    framework_logger.info(f"Log directory: {log_dir}")

    # 校验套件
    try:
        _sanity_check_suites(suites)
        framework_logger.info("✅ Suite sanity check passed")
    except AssertionError as e:
        framework_logger.error(f"❌ Suite sanity check failed: {e}")
        exit(1)

    # 筛选测试文件
    if args.suite == "all":
        files = [
            TestFile(str(x.relative_to(Path(__file__).parent)), 400)
            for x in Path(__file__).parent.glob("ascend/**/test_*.py")
        ]
    else:
        files = suites[args.suite]
    framework_logger.info(f"Total test files: {len(files)}")

    # 负载均衡分区
    if args.auto_partition_size:
        files = auto_partition(files, args.auto_partition_id, args.auto_partition_size)
        framework_logger.info(
            f"Auto partition {args.auto_partition_id}/{args.auto_partition_size}, "
            f"files to run: {[f.name for f in files]}"
        )

    # 执行测试
    timeout = args.timeout_per_file
    if args.enable_retry:
        timeout += 600  # 重试时增加超时

    exit_code = run_unittest_files(
        files,
        timeout_per_file=timeout,
        continue_on_error=args.continue_on_error,
        enable_retry=args.enable_retry,
        max_attempts=args.max_attempts,
        retry_wait_seconds=args.retry_wait_seconds
    )

    framework_logger.info(f"Test suite finished with exit code: {exit_code}")
    framework_logger.info(f"All logs saved to: {log_dir}")
    exit(exit_code)


if __name__ == "__main__":
    main()
