project("libavcodec")
  uuid("9DB2830C-D326-48ED-B4CC-08EA6A1B7272")
  kind("StaticLib")
  language("C")
  ffmpeg_common()
  files({
    "ac3_parser.h",
    "adts_parser.h",
    "avcodec.h",
    "avdct.h",
    "avfft.h",
    "bsf.h",
    "codec.h",
    "codec_desc.h",
    "codec_id.h",
    "codec_par.h",
    "d3d11va.h",
    "dirac.h",
    "dv_profile.h",
    "dxva2.h",
    "jni.h",
    "mediacodec.h",
    "packet.h",
    "qsv.h",
    "vaapi.h",
    "vdpau.h",
    "version.h",
    "videotoolbox.h",
    "vorbis_parser.h",
    "xvmc.h",
  })
  files({
    "ac3_parser.c",
    "adts_parser.c",
    "allcodecs.c",
    "avdct.c",
    "avpacket.c",
    "avpicture.c",
    "bitstream.c",
    "bitstream_filter.c",
    "bitstream_filters.c",
    "bsf.c",
    "codec_desc.c",
    "d3d11va.c",
    "decode.c",
    "dirac.c",
    "dv_profile.c",
    "encode.c",
    "imgconvert.c",
    "jni.c",
    "mathtables.c",
    "mediacodec.c",
    "mpeg12framerate.c",
    "options.c",
    "mjpegenc_huffman.c",
    "parser.c",
    "parsers.c",
    "profiles.c",
    "qsv_api.c",
    "raw.c",
    "utils.c",
    "vorbis_parser.c",
    "xiph.c",
  })
  -- subsystems
  files({
    -- CONFIG_FAANDCT
    "faandct.c",
    -- CONFIG_FAANIDCT
    "faanidct.c",
    -- CONFIG_FDCTDSP
    "fdctdsp.c",
    -- CONFIG_FFT
    "avfft.c",
    "fft_fixed.c",
    "fft_float.c",
    "fft_fixed_32.c",
    "fft_init_table.c",
    -- "cos_tables.c",
    -- "cos_fixed_tables.c",
    -- CONFIG_IDCTDSP
    "idctdsp.c",
    "simple_idct.c",
    "jrevdct.c",
    -- CONFIG_MDCT
    "mdct_fixed.c",
    "mdct_float.c",
    "mdct_fixed_32.c",
    -- CONFIG_SINEWIN
    "sinewin.c",
    "sinewin_fixed.c",
    -- CONFIG_WMA_FREQS
    "wma_freqs.c",
  })
  -- decoders/encoders
  files({
    -- CONFIG_WMAPRO_DECODER
    -- CONFIG_XMA1_DECODER
    -- CONFIG_XMA2_DECODER
    -- CONFIG_XMAFRAMES_DECODER
    "wmaprodec.c",
    "wma.c",
    "wma_common.c",
  })
  -- bitstream filters
  files({
    -- CONFIG_NULL_BSF
    "null_bsf.c",
  })
  -- thread libraries
  files({
    -- HAVE_LIBC_MSVCRT
    "file_open.c",
    -- HAVE_THREADS
    "pthread.c",
    "pthread_slice.c",
    "pthread_frame.c",
  })
  files({
    "x86/constants.c",
    "x86/fdct.c",
    "x86/fdctdsp_init.c",
    "x86/fft_init.c",
    "x86/idctdsp_init.c",
  })
  links({
    "libavutil",
  })
  filter("platforms:Windows")
    buildoptions({
      "/wd4003", --	not enough arguments for function-like macro invocation
      "/wd4013", -- undefined; assuming extern returning int
      "/wd4018", -- signed/unsigned mismatch
      "/wd4028", -- formal parameter 3 different from declaration
      "/wd4047", -- 'initializing': 'x' differs in levels of indirection from 'x'
      "/wd4087",
      "/wd4089", -- different types in actual parameter x, formal parameter x
      "/wd4090", -- different const qualifiers
      "/wd4101", -- unreferenced local variable
      "/wd4113",
      "/wd4133", -- incompatible types
      "/wd4146", -- unary minus operator applied to unsigned type, result still unsigned
      "/wd4244", -- conversion 'x' to 'x', possible loss of data
      "/wd4267", -- 'initializing': conversion from 'x' to 'x', possible loss of data
      "/wd4305", -- 'initializing': truncation from 'x' to 'x'
      "/wd4334", -- result of 32-bit shift implicitly converted to 64 bits
      "/wd4554", -- check operator precedence for possible error
      "/wd4996", -- was declared deprecated
    })
  filter("platforms:Linux")
    buildoptions({
      "-Wno-error=incompatible-pointer-types-discards-qualifiers",
      "-Wno-error=switch",
      "-Wno-error=incompatible-pointer-types",
      "-Wno-error=pointer-sign",
      "-Wno-error=parentheses",
      "-Wno-error=string-plus-int",
      "-Wno-error=deprecated-declarations",
    })
