
-----------------------------------------------------------------------
---- Automatically generated by generate_premake.py. Do not edit ! ----
-----------------------------------------------------------------------

project("libavutil")
  uuid("19216035-F781-4F15-B009-213B7E3A18AC")
  kind("StaticLib")
  language("C")
  ffmpeg_common()

  filter("platforms:Windows")
    buildoptions({
      "/wd4018", -- signed/unsigned mismatch
      "/wd4028", -- formal parameter 3 different from declaration
      "/wd4090", -- different const qualifiers
      "/wd4101", -- unreferenced local variable
      "/wd4133", -- incompatible types
      "/wd4146", -- unary minus operator applied to unsigned type, result still unsigned
      "/wd4244", -- conversion 'x' to 'x', possible loss of data
      "/wd4267", -- 'initializing': conversion from 'x' to 'x', possible loss of data
      "/wd4305", -- 'initializing': truncation from 'x' to 'x'
      "/wd4333", -- right shift by too large amount, data loss
      "/wd4554", -- check operator precedence for possible error
    })
  filter("platforms:Linux")
    buildoptions({
      "-Wno-error=implicit-const-int-float-conversion",
      "-Wno-error=incompatible-pointer-types-discards-qualifiers",
      "-Wno-error=switch",
      "-Wno-error=incompatible-pointer-types",
      "-Wno-error=logical-op-parentheses",
      "-Wno-error=pointer-sign",
      "-Wno-error=parentheses",
      "-Wno-error=string-plus-int",
      "-Wno-error=tautological-constant-out-of-range-compare",
    })
  filter {}

  -- libavutil/Makefile:
  --   HEADERS:
  files({
    "adler32.h",
    "aes.h",
    "aes_ctr.h",
    "attributes.h",
    "audio_fifo.h",
    "avassert.h",
    "avstring.h",
    "avutil.h",
    "base64.h",
    "blowfish.h",
    "bprint.h",
    "bswap.h",
    "buffer.h",
    "cast5.h",
    "camellia.h",
    "channel_layout.h",
    "common.h",
    "cpu.h",
    "crc.h",
    "des.h",
    "dict.h",
    "display.h",
    "dovi_meta.h",
    "downmix_info.h",
    "encryption_info.h",
    "error.h",
    "eval.h",
    "fifo.h",
    "file.h",
    "frame.h",
    "hash.h",
    "hdr_dynamic_metadata.h",
    "hmac.h",
    "hwcontext.h",
    "hwcontext_cuda.h",
    "hwcontext_d3d11va.h",
    "hwcontext_drm.h",
    "hwcontext_dxva2.h",
    "hwcontext_qsv.h",
    "hwcontext_mediacodec.h",
    "hwcontext_opencl.h",
    "hwcontext_vaapi.h",
    "hwcontext_videotoolbox.h",
    "hwcontext_vdpau.h",
    "hwcontext_vulkan.h",
    "imgutils.h",
    "intfloat.h",
    "intreadwrite.h",
    "lfg.h",
    "log.h",
    "macros.h",
    "mathematics.h",
    "mastering_display_metadata.h",
    "md5.h",
    "mem.h",
    "motion_vector.h",
    "murmur3.h",
    "opt.h",
    "parseutils.h",
    "pixdesc.h",
    "pixelutils.h",
    "pixfmt.h",
    "random_seed.h",
    "rc4.h",
    "rational.h",
    "replaygain.h",
    "ripemd.h",
    "samplefmt.h",
    "sha.h",
    "sha512.h",
    "spherical.h",
    "stereo3d.h",
    "threadmessage.h",
    "time.h",
    "timecode.h",
    "timestamp.h",
    "tree.h",
    "twofish.h",
    "version.h",
    "video_enc_params.h",
    "xtea.h",
    "tea.h",
    "tx.h",
    "film_grain_params.h",
  })
  -- libavutil/Makefile:
  --   ARCH_HEADERS:
  files({
    "bswap.h",
    "intmath.h",
    "intreadwrite.h",
    "timer.h",
  })
  -- libavutil/Makefile:
  --   BUILT_HEADERS:
  files({
    "avconfig.h",
    "ffversion.h",
  })
  -- libavutil/Makefile:
  --   OBJS:
  files({
    "adler32.c",
    "aes.c",
    "aes_ctr.c",
    "audio_fifo.c",
    "avstring.c",
    "avsscanf.c",
    "base64.c",
    "blowfish.c",
    "bprint.c",
    "buffer.c",
    "cast5.c",
    "camellia.c",
    "channel_layout.c",
    "color_utils.c",
    "cpu.c",
    "crc.c",
    "des.c",
    "dict.c",
    "display.c",
    "dovi_meta.c",
    "downmix_info.c",
    "encryption_info.c",
    "error.c",
    "eval.c",
    "fifo.c",
    "file.c",
    "file_open.c",
    "float_dsp.c",
    "fixed_dsp.c",
    "frame.c",
    "hash.c",
    "hdr_dynamic_metadata.c",
    "hmac.c",
    "hwcontext.c",
    "imgutils.c",
    "integer.c",
    "intmath.c",
    "lfg.c",
    "lls.c",
    "log.c",
    "log2_tab.c",
    "mathematics.c",
    "mastering_display_metadata.c",
    "md5.c",
    "mem.c",
    "murmur3.c",
    "opt.c",
    "parseutils.c",
    "pixdesc.c",
    "pixelutils.c",
    "random_seed.c",
    "rational.c",
    "reverse.c",
    "rc4.c",
    "ripemd.c",
    "samplefmt.c",
    "sha.c",
    "sha512.c",
    "slicethread.c",
    "spherical.c",
    "stereo3d.c",
    "threadmessage.c",
    "time.c",
    "timecode.c",
    "tree.c",
    "twofish.c",
    "utils.c",
    "xga_font_data.c",
    "xtea.c",
    "tea.c",
    "tx.c",
    "tx_float.c",
    "tx_double.c",
    "tx_int32.c",
    "video_enc_params.c",
    "film_grain_params.c",
  })
  -- libavutil/aarch64/Makefile:
  --   OBJS:
  files({
    "aarch64/cpu.c",
    "aarch64/float_dsp_init.c",
  })
  -- libavutil/x86/Makefile:
  --   OBJS:
  files({
    "x86/cpu.c",
    "x86/fixed_dsp_init.c",
    "x86/float_dsp_init.c",
    "x86/imgutils_init.c",
    "x86/lls_init.c",
  })
