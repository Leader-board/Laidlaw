; ModuleID = 'benchmark.cpp'
source_filename = "benchmark.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%"class.std::exception" = type { i32 (...)** }

$_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_ = comdat any

$_ZNSt9exceptionC2ERKS_ = comdat any

$__clang_call_terminate = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@check = dso_local global i32 2, align 4
@a = dso_local global double 0.000000e+00, align 8
@b = dso_local global double 0.000000e+00, align 8
@powcheck = dso_local global double 0.000000e+00, align 8
@k = dso_local global double 0.000000e+00, align 8
@d = dso_local global double 0.000000e+00, align 8
@x = dso_local global double 0.000000e+00, align 8
@y = dso_local global double 0.000000e+00, align 8
@verify = dso_local global i32 0, align 4
@percentage = dso_local global i32 0, align 4
@c = dso_local global double 0.000000e+00, align 8
@score = dso_local global [5 x float] zeroinitializer, align 16
@totalscore = dso_local global float 0.000000e+00, align 4
@stagetime = dso_local global [5 x double] zeroinitializer, align 16
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [13 x i8] c" % complete!\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Time taken for that stage:- \00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Score obtained for that stage:- \00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Arguments: filename optimisationflag\0A\00", align 1
@_ZTISt9exception = external dso_local constant i8*
@.str.4 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%s %lf\0A\00", align 1
@_ZSt4cerr = external dso_local global %"class.std::basic_ostream", align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"File error! \0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Your system has scored a total of \00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c" points!\00", align 1
@_ZTVSt9exception = external dso_local unnamed_addr constant { [5 x i8*] }
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_benchmark.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline optnone uwtable
define dso_local void @_Z8mainbasev() #4 {
  %1 = alloca i64, align 8
  %2 = alloca [5 x double], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca float, align 4
  store i32 1, i32* %3, align 4
  br label %9

; <label>:9:                                      ; preds = %194, %0
  %10 = load i32, i32* %3, align 4
  %11 = icmp sle i32 %10, 5
  br i1 %11, label %12, label %197

; <label>:12:                                     ; preds = %9
  store i32 1, i32* %4, align 4
  br label %13

; <label>:13:                                     ; preds = %190, %12
  %14 = load i32, i32* %4, align 4
  %15 = icmp sle i32 %14, 5
  br i1 %15, label %16, label %193

; <label>:16:                                     ; preds = %13
  %17 = call i64 @clock() #3
  store i64 %17, i64* %5, align 8
  store double 1.000000e+00, double* @a, align 8
  store double 1.000000e+00, double* @b, align 8
  store double 1.000000e+00, double* @c, align 8
  store double 1.000000e+00, double* @d, align 8
  store i64 0, i64* %1, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %16
  store double 1.000000e+02, double* @k, align 8
  br label %41

; <label>:21:                                     ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %21
  store double 2.500000e+02, double* @k, align 8
  br label %40

; <label>:25:                                     ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %25
  store double 5.000000e+02, double* @k, align 8
  br label %39

; <label>:29:                                     ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %29
  store double 1.000000e+03, double* @k, align 8
  br label %38

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 5
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %33
  store double 1.500000e+03, double* @k, align 8
  br label %37

; <label>:37:                                     ; preds = %36, %33
  br label %38

; <label>:38:                                     ; preds = %37, %32
  br label %39

; <label>:39:                                     ; preds = %38, %28
  br label %40

; <label>:40:                                     ; preds = %39, %24
  br label %41

; <label>:41:                                     ; preds = %40, %20
  br label %42

; <label>:42:                                     ; preds = %92, %41
  %43 = load double, double* @b, align 8
  %44 = load double, double* @k, align 8
  %45 = fcmp ole double %43, %44
  br i1 %45, label %46, label %95

; <label>:46:                                     ; preds = %42
  br label %47

; <label>:47:                                     ; preds = %89, %46
  %48 = load double, double* @a, align 8
  %49 = load double, double* @k, align 8
  %50 = fcmp ole double %48, %49
  br i1 %50, label %51, label %92

; <label>:51:                                     ; preds = %47
  %52 = load double, double* @a, align 8
  %53 = load double, double* @a, align 8
  %54 = fmul double %52, %53
  store double %54, double* @x, align 8
  %55 = load double, double* @b, align 8
  %56 = load double, double* @b, align 8
  %57 = fmul double %55, %56
  store double %57, double* @y, align 8
  %58 = load double, double* @x, align 8
  %59 = load double, double* @y, align 8
  %60 = fadd double %58, %59
  store double %60, double* @c, align 8
  %61 = load double, double* @b, align 8
  store double %61, double* @powcheck, align 8
  br label %62

; <label>:62:                                     ; preds = %88, %51
  %63 = load double, double* @powcheck, align 8
  %64 = load double, double* @k, align 8
  %65 = fmul double 1.420000e+00, %64
  %66 = call double @llvm.ceil.f64(double %65)
  %67 = fcmp ole double %63, %66
  br i1 %67, label %68, label %89

; <label>:68:                                     ; preds = %62
  %69 = load double, double* @c, align 8
  %70 = load double, double* @powcheck, align 8
  %71 = call double @_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(double %70, i32 2)
  %72 = fcmp oeq double %69, %71
  br i1 %72, label %73, label %85

; <label>:73:                                     ; preds = %68
  %74 = load double, double* @c, align 8
  %75 = load double, double* @d, align 8
  %76 = fcmp oge double %74, %75
  br i1 %76, label %77, label %79

; <label>:77:                                     ; preds = %73
  %78 = load double, double* @c, align 8
  store double %78, double* @d, align 8
  br label %79

; <label>:79:                                     ; preds = %77, %73
  %80 = load i64, i64* %1, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %1, align 8
  %82 = load double, double* @k, align 8
  %83 = fmul double 2.000000e+00, %82
  %84 = fadd double %83, 1.000000e+00
  store double %84, double* @powcheck, align 8
  br label %88

; <label>:85:                                     ; preds = %68
  %86 = load double, double* @powcheck, align 8
  %87 = fadd double %86, 1.000000e+00
  store double %87, double* @powcheck, align 8
  br label %88

; <label>:88:                                     ; preds = %85, %79
  br label %62

; <label>:89:                                     ; preds = %62
  %90 = load double, double* @a, align 8
  %91 = fadd double %90, 1.000000e+00
  store double %91, double* @a, align 8
  br label %47

; <label>:92:                                     ; preds = %47
  store double 1.000000e+00, double* @a, align 8
  %93 = load double, double* @b, align 8
  %94 = fadd double %93, 1.000000e+00
  store double %94, double* @b, align 8
  br label %42

; <label>:95:                                     ; preds = %42
  %96 = call i64 @clock() #3
  store i64 %96, i64* %6, align 8
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* %5, align 8
  %99 = sub nsw i64 %97, %98
  %100 = sitofp i64 %99 to double
  %101 = fdiv double %100, 1.000000e+06
  store double %101, double* %7, align 8
  %102 = load double, double* %7, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [5 x double], [5 x double]* %2, i64 0, i64 %105
  store double %102, double* %106, align 8
  %107 = load i32, i32* %4, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %110

; <label>:109:                                    ; preds = %95
  store float 0x3F689374C0000000, float* %8, align 4
  br label %110

; <label>:110:                                    ; preds = %109, %95
  %111 = load i32, i32* %4, align 4
  %112 = icmp eq i32 %111, 2
  br i1 %112, label %113, label %114

; <label>:113:                                    ; preds = %110
  store float 0x3FA1EB8520000000, float* %8, align 4
  br label %114

; <label>:114:                                    ; preds = %113, %110
  %115 = load i32, i32* %4, align 4
  %116 = icmp eq i32 %115, 3
  br i1 %116, label %117, label %118

; <label>:117:                                    ; preds = %114
  store float 0x3FD178D500000000, float* %8, align 4
  br label %118

; <label>:118:                                    ; preds = %117, %114
  %119 = load i32, i32* %4, align 4
  %120 = icmp eq i32 %119, 4
  br i1 %120, label %121, label %122

; <label>:121:                                    ; preds = %118
  store float 0x4001CCCCC0000000, float* %8, align 4
  br label %122

; <label>:122:                                    ; preds = %121, %118
  %123 = load i32, i32* %4, align 4
  %124 = icmp eq i32 %123, 5
  br i1 %124, label %125, label %126

; <label>:125:                                    ; preds = %122
  store float 0x401E24DD20000000, float* %8, align 4
  br label %126

; <label>:126:                                    ; preds = %125, %122
  %127 = load float, float* %8, align 4
  %128 = fpext float %127 to double
  %129 = load i32, i32* %4, align 4
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [5 x double], [5 x double]* %2, i64 0, i64 %131
  %133 = load double, double* %132, align 8
  %134 = fdiv double %128, %133
  %135 = fmul double 2.000000e+02, %134
  %136 = fptrunc double %135 to float
  %137 = load i32, i32* %4, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [5 x float], [5 x float]* @score, i64 0, i64 %139
  store float %136, float* %140, align 4
  %141 = load float, float* @totalscore, align 4
  %142 = fpext float %141 to double
  %143 = load i32, i32* %4, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [5 x float], [5 x float]* @score, i64 0, i64 %145
  %147 = load float, float* %146, align 4
  %148 = fpext float %147 to double
  %149 = fmul double 2.000000e-01, %148
  %150 = fadd double %142, %149
  %151 = fptrunc double %150 to float
  store float %151, float* @totalscore, align 4
  %152 = load i32, i32* %4, align 4
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [5 x double], [5 x double]* @stagetime, i64 0, i64 %154
  %156 = load double, double* %155, align 8
  %157 = load double, double* %7, align 8
  %158 = fmul double 2.000000e-01, %157
  %159 = fadd double %156, %158
  %160 = load i32, i32* %4, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [5 x double], [5 x double]* @stagetime, i64 0, i64 %162
  store double %159, double* %163, align 8
  %164 = load i32, i32* %4, align 4
  %165 = mul nsw i32 %164, 4
  %166 = load i32, i32* %3, align 4
  %167 = sub nsw i32 %166, 1
  %168 = mul nsw i32 %167, 20
  %169 = add nsw i32 %165, %168
  %170 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %169)
  %171 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %170, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %172 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* dereferenceable(272) %171, i8 signext 10)
  %173 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0))
  %174 = load i32, i32* %4, align 4
  %175 = sub nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [5 x double], [5 x double]* %2, i64 0, i64 %176
  %178 = load double, double* %177, align 8
  %179 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %173, double %178)
  %180 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* dereferenceable(272) %179, i8 signext 10)
  %181 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  %182 = load i32, i32* %4, align 4
  %183 = sub nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [5 x float], [5 x float]* @score, i64 0, i64 %184
  %186 = load float, float* %185, align 4
  %187 = fmul float %186, 5.000000e+00
  %188 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* %181, float %187)
  %189 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* dereferenceable(272) %188, i8 signext 10)
  br label %190

; <label>:190:                                    ; preds = %126
  %191 = load i32, i32* %4, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %4, align 4
  br label %13

; <label>:193:                                    ; preds = %13
  br label %194

; <label>:194:                                    ; preds = %193
  %195 = load i32, i32* %3, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %3, align 4
  br label %9

; <label>:197:                                    ; preds = %9
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @clock() #2

; Function Attrs: nounwind readnone speculatable
declare double @llvm.ceil.f64(double) #5

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local double @_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(double, i32) #6 comdat {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  store double %0, double* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load double, double* %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sitofp i32 %6 to double
  %8 = call double @pow(double %5, double %7) #3
  ret double %8
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* dereferenceable(272), i8 signext) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"*, double) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"*, float) #1

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main(i32, i8**) #7 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*
  %8 = alloca i32
  %9 = alloca %"class.std::exception", align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %2
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 -1) #11
  unreachable

; <label>:14:                                     ; preds = %2
  call void @_Z8mainbasev()
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = invoke %struct._IO_FILE* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
          to label %19 unwind label %31

; <label>:19:                                     ; preds = %14
  store %struct._IO_FILE* %18, %struct._IO_FILE** %6, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 2
  %23 = load i8*, i8** %22, align 8
  %24 = load float, float* @totalscore, align 4
  %25 = fpext float %24 to double
  %26 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* %23, double %25)
          to label %27 unwind label %31

; <label>:27:                                     ; preds = %19
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %29 = invoke i32 @fclose(%struct._IO_FILE* %28)
          to label %30 unwind label %31

; <label>:30:                                     ; preds = %27
  br label %46

; <label>:31:                                     ; preds = %27, %19, %14
  %32 = landingpad { i8*, i32 }
          catch i8* bitcast (i8** @_ZTISt9exception to i8*)
  %33 = extractvalue { i8*, i32 } %32, 0
  store i8* %33, i8** %7, align 8
  %34 = extractvalue { i8*, i32 } %32, 1
  store i32 %34, i32* %8, align 4
  br label %35

; <label>:35:                                     ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @llvm.eh.typeid.for(i8* bitcast (i8** @_ZTISt9exception to i8*)) #3
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %58

; <label>:39:                                     ; preds = %35
  %40 = load i8*, i8** %7, align 8
  %41 = call i8* @__cxa_get_exception_ptr(i8* %40) #3
  %42 = bitcast i8* %41 to %"class.std::exception"*
  call void @_ZNSt9exceptionC2ERKS_(%"class.std::exception"* %9, %"class.std::exception"* dereferenceable(8) %42) #3
  %43 = call i8* @__cxa_begin_catch(i8* %40) #3
  %44 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cerr, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
          to label %45 unwind label %53

; <label>:45:                                     ; preds = %39
  call void @_ZNSt9exceptionD1Ev(%"class.std::exception"* %9) #3
  call void @__cxa_end_catch()
  br label %46

; <label>:46:                                     ; preds = %45, %30
  %47 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0))
  %48 = load float, float* @totalscore, align 4
  %49 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* %47, float %48)
  %50 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0))
  %51 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* dereferenceable(272) %50, i8 signext 10)
  %52 = load i32, i32* %3, align 4
  ret i32 %52

; <label>:53:                                     ; preds = %39
  %54 = landingpad { i8*, i32 }
          cleanup
  %55 = extractvalue { i8*, i32 } %54, 0
  store i8* %55, i8** %7, align 8
  %56 = extractvalue { i8*, i32 } %54, 1
  store i32 %56, i32* %8, align 4
  call void @_ZNSt9exceptionD1Ev(%"class.std::exception"* %9) #3
  invoke void @__cxa_end_catch()
          to label %57 unwind label %63

; <label>:57:                                     ; preds = %53
  br label %58

; <label>:58:                                     ; preds = %57, %35
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = insertvalue { i8*, i32 } undef, i8* %59, 0
  %62 = insertvalue { i8*, i32 } %61, i32 %60, 1
  resume { i8*, i32 } %62

; <label>:63:                                     ; preds = %53
  %64 = landingpad { i8*, i32 }
          catch i8* null
  %65 = extractvalue { i8*, i32 } %64, 0
  call void @__clang_call_terminate(i8* %65) #11
  unreachable
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #8

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @__gxx_personality_v0(...)

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind readnone
declare i32 @llvm.eh.typeid.for(i8*) #9

declare dso_local i8* @__cxa_get_exception_ptr(i8*)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt9exceptionC2ERKS_(%"class.std::exception"*, %"class.std::exception"* dereferenceable(8)) unnamed_addr #6 comdat align 2 {
  %3 = alloca %"class.std::exception"*, align 8
  %4 = alloca %"class.std::exception"*, align 8
  store %"class.std::exception"* %0, %"class.std::exception"** %3, align 8
  store %"class.std::exception"* %1, %"class.std::exception"** %4, align 8
  %5 = load %"class.std::exception"*, %"class.std::exception"** %3, align 8
  %6 = bitcast %"class.std::exception"* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt9exception, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %6, align 8
  ret void
}

declare dso_local i8* @__cxa_begin_catch(i8*)

; Function Attrs: nounwind
declare dso_local void @_ZNSt9exceptionD1Ev(%"class.std::exception"*) unnamed_addr #2

declare dso_local void @__cxa_end_catch()

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #10 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #3
  call void @_ZSt9terminatev() #11
  unreachable
}

declare dso_local void @_ZSt9terminatev()

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #2

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_benchmark.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone }
attributes #10 = { noinline noreturn nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 7.0.1 (Fedora 7.0.1-6.fc29)"}
