; ModuleID = 'linpackm.cpp'
source_filename = "linpackm.cpp"
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
%"struct.std::_Setw" = type { i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

$_ZSt4setwi = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"LINPACK_BENCH_S - Fatal error!\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"  The matrix A is apparently singular.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"  Abnormal end of execution.\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@_ZZ9r4mat_geniiE4init = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 3, i32 1325], align 16
@_ZZ9timestampvE11time_buffer = internal global [40 x i8] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"%d %B %Y %I:%M:%S %p\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_linpackm.cpp, i8* null }]

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

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca float*, align 8
  %3 = alloca float, align 4
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float*, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float*, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca [6 x double], align 16
  %21 = alloca float, align 4
  %22 = alloca float*, align 8
  %23 = alloca %"struct.std::_Setw", align 4
  %24 = alloca %"struct.std::_Setw", align 4
  %25 = alloca %"struct.std::_Setw", align 4
  %26 = alloca %"struct.std::_Setw", align 4
  %27 = alloca %"struct.std::_Setw", align 4
  %28 = alloca %"struct.std::_Setw", align 4
  store i32 0, i32* %1, align 4
  store float 0x3FACAC0840000000, float* %6, align 4
  call void @_Z9timestampv()
  store float 0x41C3ED85A0000000, float* %13, align 4
  %29 = call float* @_Z9r4mat_genii(i32 1001, i32 1000)
  store float* %29, float** %2, align 8
  %30 = call i8* @_Znam(i64 4000) #11
  %31 = bitcast i8* %30 to float*
  store float* %31, float** %4, align 8
  %32 = call i8* @_Znam(i64 4000) #11
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** %10, align 8
  %34 = call i8* @_Znam(i64 4000) #11
  %35 = bitcast i8* %34 to float*
  store float* %35, float** %14, align 8
  %36 = call i8* @_Znam(i64 4000) #11
  %37 = bitcast i8* %36 to float*
  store float* %37, float** %17, align 8
  %38 = call i8* @_Znam(i64 4000) #11
  %39 = bitcast i8* %38 to float*
  store float* %39, float** %22, align 8
  store float 0.000000e+00, float* %3, align 4
  store i32 0, i32* %11, align 4
  br label %40

; <label>:40:                                     ; preds = %62, %0
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 1000
  br i1 %42, label %43, label %65

; <label>:43:                                     ; preds = %40
  store i32 0, i32* %8, align 4
  br label %44

; <label>:44:                                     ; preds = %58, %43
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 1000
  br i1 %46, label %47, label %61

; <label>:47:                                     ; preds = %44
  %48 = load float, float* %3, align 4
  %49 = load float*, float** %2, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %11, align 4
  %52 = mul nsw i32 %51, 1001
  %53 = add nsw i32 %50, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %49, i64 %54
  %56 = load float, float* %55, align 4
  %57 = call float @_Z6r4_maxff(float %48, float %56)
  store float %57, float* %3, align 4
  br label %58

; <label>:58:                                     ; preds = %47
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %44

; <label>:61:                                     ; preds = %44
  br label %62

; <label>:62:                                     ; preds = %61
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %40

; <label>:65:                                     ; preds = %40
  store i32 0, i32* %8, align 4
  br label %66

; <label>:66:                                     ; preds = %74, %65
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 1000
  br i1 %68, label %69, label %77

; <label>:69:                                     ; preds = %66
  %70 = load float*, float** %22, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %70, i64 %72
  store float 1.000000e+00, float* %73, align 4
  br label %74

; <label>:74:                                     ; preds = %69
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %66

; <label>:77:                                     ; preds = %66
  store i32 0, i32* %8, align 4
  br label %78

; <label>:78:                                     ; preds = %118, %77
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 1000
  br i1 %80, label %81, label %121

; <label>:81:                                     ; preds = %78
  %82 = load float*, float** %4, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %82, i64 %84
  store float 0.000000e+00, float* %85, align 4
  store i32 0, i32* %11, align 4
  br label %86

; <label>:86:                                     ; preds = %114, %81
  %87 = load i32, i32* %11, align 4
  %88 = icmp slt i32 %87, 1000
  br i1 %88, label %89, label %117

; <label>:89:                                     ; preds = %86
  %90 = load float*, float** %4, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %90, i64 %92
  %94 = load float, float* %93, align 4
  %95 = load float*, float** %2, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %11, align 4
  %98 = mul nsw i32 %97, 1001
  %99 = add nsw i32 %96, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %95, i64 %100
  %102 = load float, float* %101, align 4
  %103 = load float*, float** %22, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float, float* %103, i64 %105
  %107 = load float, float* %106, align 4
  %108 = fmul float %102, %107
  %109 = fadd float %94, %108
  %110 = load float*, float** %4, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, float* %110, i64 %112
  store float %109, float* %113, align 4
  br label %114

; <label>:114:                                    ; preds = %89
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %86

; <label>:117:                                    ; preds = %86
  br label %118

; <label>:118:                                    ; preds = %117
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %78

; <label>:121:                                    ; preds = %78
  %122 = call double @_Z8cpu_timev()
  store double %122, double* %18, align 8
  %123 = load float*, float** %2, align 8
  %124 = load i32*, i32** %10, align 8
  %125 = call i32 @_Z5sgefaPfiiPi(float* %123, i32 1001, i32 1000, i32* %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

; <label>:128:                                    ; preds = %121
  %129 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %130 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0))
  %131 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0))
  %132 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store i32 1, i32* %1, align 4
  br label %418

; <label>:133:                                    ; preds = %121
  %134 = call double @_Z8cpu_timev()
  store double %134, double* %19, align 8
  %135 = load double, double* %19, align 8
  %136 = load double, double* %18, align 8
  %137 = fsub double %135, %136
  %138 = getelementptr inbounds [6 x double], [6 x double]* %20, i64 0, i64 0
  store double %137, double* %138, align 16
  %139 = call double @_Z8cpu_timev()
  store double %139, double* %18, align 8
  store i32 0, i32* %12, align 4
  %140 = load float*, float** %2, align 8
  %141 = load i32*, i32** %10, align 8
  %142 = load float*, float** %4, align 8
  %143 = load i32, i32* %12, align 4
  call void @_Z5sgeslPfiiPiS_i(float* %140, i32 1001, i32 1000, i32* %141, float* %142, i32 %143)
  %144 = call double @_Z8cpu_timev()
  store double %144, double* %19, align 8
  %145 = load double, double* %19, align 8
  %146 = load double, double* %18, align 8
  %147 = fsub double %145, %146
  %148 = getelementptr inbounds [6 x double], [6 x double]* %20, i64 0, i64 1
  store double %147, double* %148, align 8
  %149 = getelementptr inbounds [6 x double], [6 x double]* %20, i64 0, i64 0
  %150 = load double, double* %149, align 16
  %151 = getelementptr inbounds [6 x double], [6 x double]* %20, i64 0, i64 1
  %152 = load double, double* %151, align 8
  %153 = fadd double %150, %152
  %154 = fptrunc double %153 to float
  store float %154, float* %21, align 4
  %155 = load float*, float** %2, align 8
  %156 = icmp eq float* %155, null
  br i1 %156, label %159, label %157

; <label>:157:                                    ; preds = %133
  %158 = bitcast float* %155 to i8*
  call void @_ZdaPv(i8* %158) #12
  br label %159

; <label>:159:                                    ; preds = %157, %133
  %160 = call float* @_Z9r4mat_genii(i32 1001, i32 1000)
  store float* %160, float** %2, align 8
  store i32 0, i32* %8, align 4
  br label %161

; <label>:161:                                    ; preds = %169, %159
  %162 = load i32, i32* %8, align 4
  %163 = icmp slt i32 %162, 1000
  br i1 %163, label %164, label %172

; <label>:164:                                    ; preds = %161
  %165 = load float*, float** %22, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, float* %165, i64 %167
  store float 1.000000e+00, float* %168, align 4
  br label %169

; <label>:169:                                    ; preds = %164
  %170 = load i32, i32* %8, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %8, align 4
  br label %161

; <label>:172:                                    ; preds = %161
  store i32 0, i32* %8, align 4
  br label %173

; <label>:173:                                    ; preds = %213, %172
  %174 = load i32, i32* %8, align 4
  %175 = icmp slt i32 %174, 1000
  br i1 %175, label %176, label %216

; <label>:176:                                    ; preds = %173
  %177 = load float*, float** %17, align 8
  %178 = load i32, i32* %8, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %177, i64 %179
  store float 0.000000e+00, float* %180, align 4
  store i32 0, i32* %11, align 4
  br label %181

; <label>:181:                                    ; preds = %209, %176
  %182 = load i32, i32* %11, align 4
  %183 = icmp slt i32 %182, 1000
  br i1 %183, label %184, label %212

; <label>:184:                                    ; preds = %181
  %185 = load float*, float** %17, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds float, float* %185, i64 %187
  %189 = load float, float* %188, align 4
  %190 = load float*, float** %2, align 8
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* %11, align 4
  %193 = mul nsw i32 %192, 1001
  %194 = add nsw i32 %191, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds float, float* %190, i64 %195
  %197 = load float, float* %196, align 4
  %198 = load float*, float** %22, align 8
  %199 = load i32, i32* %11, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds float, float* %198, i64 %200
  %202 = load float, float* %201, align 4
  %203 = fmul float %197, %202
  %204 = fadd float %189, %203
  %205 = load float*, float** %17, align 8
  %206 = load i32, i32* %8, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float, float* %205, i64 %207
  store float %204, float* %208, align 4
  br label %209

; <label>:209:                                    ; preds = %184
  %210 = load i32, i32* %11, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %11, align 4
  br label %181

; <label>:212:                                    ; preds = %181
  br label %213

; <label>:213:                                    ; preds = %212
  %214 = load i32, i32* %8, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %8, align 4
  br label %173

; <label>:216:                                    ; preds = %173
  store i32 0, i32* %8, align 4
  br label %217

; <label>:217:                                    ; preds = %263, %216
  %218 = load i32, i32* %8, align 4
  %219 = icmp slt i32 %218, 1000
  br i1 %219, label %220, label %266

; <label>:220:                                    ; preds = %217
  %221 = load float*, float** %17, align 8
  %222 = load i32, i32* %8, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds float, float* %221, i64 %223
  %225 = load float, float* %224, align 4
  %226 = fsub float -0.000000e+00, %225
  %227 = load float*, float** %14, align 8
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds float, float* %227, i64 %229
  store float %226, float* %230, align 4
  store i32 0, i32* %11, align 4
  br label %231

; <label>:231:                                    ; preds = %259, %220
  %232 = load i32, i32* %11, align 4
  %233 = icmp slt i32 %232, 1000
  br i1 %233, label %234, label %262

; <label>:234:                                    ; preds = %231
  %235 = load float*, float** %14, align 8
  %236 = load i32, i32* %8, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds float, float* %235, i64 %237
  %239 = load float, float* %238, align 4
  %240 = load float*, float** %2, align 8
  %241 = load i32, i32* %8, align 4
  %242 = load i32, i32* %11, align 4
  %243 = mul nsw i32 %242, 1001
  %244 = add nsw i32 %241, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds float, float* %240, i64 %245
  %247 = load float, float* %246, align 4
  %248 = load float*, float** %4, align 8
  %249 = load i32, i32* %11, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds float, float* %248, i64 %250
  %252 = load float, float* %251, align 4
  %253 = fmul float %247, %252
  %254 = fadd float %239, %253
  %255 = load float*, float** %14, align 8
  %256 = load i32, i32* %8, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds float, float* %255, i64 %257
  store float %254, float* %258, align 4
  br label %259

; <label>:259:                                    ; preds = %234
  %260 = load i32, i32* %11, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %11, align 4
  br label %231

; <label>:262:                                    ; preds = %231
  br label %263

; <label>:263:                                    ; preds = %262
  %264 = load i32, i32* %8, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %8, align 4
  br label %217

; <label>:266:                                    ; preds = %217
  store float 0.000000e+00, float* %15, align 4
  store i32 0, i32* %8, align 4
  br label %267

; <label>:267:                                    ; preds = %279, %266
  %268 = load i32, i32* %8, align 4
  %269 = icmp slt i32 %268, 1000
  br i1 %269, label %270, label %282

; <label>:270:                                    ; preds = %267
  %271 = load float, float* %15, align 4
  %272 = load float*, float** %14, align 8
  %273 = load i32, i32* %8, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds float, float* %272, i64 %274
  %276 = load float, float* %275, align 4
  %277 = call float @_Z6r4_absf(float %276)
  %278 = call float @_Z6r4_maxff(float %271, float %277)
  store float %278, float* %15, align 4
  br label %279

; <label>:279:                                    ; preds = %270
  %280 = load i32, i32* %8, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %8, align 4
  br label %267

; <label>:282:                                    ; preds = %267
  store float 0.000000e+00, float* %5, align 4
  store i32 0, i32* %8, align 4
  br label %283

; <label>:283:                                    ; preds = %295, %282
  %284 = load i32, i32* %8, align 4
  %285 = icmp slt i32 %284, 1000
  br i1 %285, label %286, label %298

; <label>:286:                                    ; preds = %283
  %287 = load float, float* %5, align 4
  %288 = load float*, float** %4, align 8
  %289 = load i32, i32* %8, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds float, float* %288, i64 %290
  %292 = load float, float* %291, align 4
  %293 = call float @_Z6r4_absf(float %292)
  %294 = call float @_Z6r4_maxff(float %287, float %293)
  store float %294, float* %5, align 4
  br label %295

; <label>:295:                                    ; preds = %286
  %296 = load i32, i32* %8, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %8, align 4
  br label %283

; <label>:298:                                    ; preds = %283
  %299 = call float @_Z10r4_epsilonv()
  store float %299, float* %7, align 4
  %300 = load float, float* %15, align 4
  %301 = load float, float* %3, align 4
  %302 = fmul float 1.000000e+03, %301
  %303 = load float, float* %5, align 4
  %304 = fmul float %302, %303
  %305 = load float, float* %7, align 4
  %306 = fmul float %304, %305
  %307 = fdiv float %300, %306
  store float %307, float* %16, align 4
  %308 = load float, float* %21, align 4
  %309 = fpext float %308 to double
  %310 = getelementptr inbounds [6 x double], [6 x double]* %20, i64 0, i64 2
  store double %309, double* %310, align 16
  %311 = load float, float* %21, align 4
  %312 = fpext float %311 to double
  %313 = fcmp olt double 0.000000e+00, %312
  br i1 %313, label %314, label %322

; <label>:314:                                    ; preds = %298
  %315 = load float, float* %13, align 4
  %316 = fpext float %315 to double
  %317 = load float, float* %21, align 4
  %318 = fpext float %317 to double
  %319 = fmul double 1.000000e+06, %318
  %320 = fdiv double %316, %319
  %321 = getelementptr inbounds [6 x double], [6 x double]* %20, i64 0, i64 3
  store double %320, double* %321, align 8
  br label %324

; <label>:322:                                    ; preds = %298
  %323 = getelementptr inbounds [6 x double], [6 x double]* %20, i64 0, i64 3
  store double -1.000000e+00, double* %323, align 8
  br label %324

; <label>:324:                                    ; preds = %322, %314
  %325 = getelementptr inbounds [6 x double], [6 x double]* %20, i64 0, i64 3
  %326 = load double, double* %325, align 8
  %327 = fdiv double 2.000000e+00, %326
  %328 = getelementptr inbounds [6 x double], [6 x double]* %20, i64 0, i64 4
  store double %327, double* %328, align 16
  %329 = load float, float* %21, align 4
  %330 = load float, float* %6, align 4
  %331 = fdiv float %329, %330
  %332 = fpext float %331 to double
  %333 = getelementptr inbounds [6 x double], [6 x double]* %20, i64 0, i64 5
  store double %332, double* %333, align 8
  %334 = call i32 @_ZSt4setwi(i32 9)
  %335 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %23, i32 0, i32 0
  store i32 %334, i32* %335, align 4
  %336 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %23, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i32 %337)
  %339 = getelementptr inbounds [6 x double], [6 x double]* %20, i64 0, i64 0
  %340 = load double, double* %339, align 16
  %341 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %338, double %340)
  %342 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %341, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  %343 = call i32 @_ZSt4setwi(i32 9)
  %344 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %24, i32 0, i32 0
  store i32 %343, i32* %344, align 4
  %345 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %24, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* dereferenceable(272) %342, i32 %346)
  %348 = getelementptr inbounds [6 x double], [6 x double]* %20, i64 0, i64 1
  %349 = load double, double* %348, align 8
  %350 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %347, double %349)
  %351 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %350, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  %352 = call i32 @_ZSt4setwi(i32 9)
  %353 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %25, i32 0, i32 0
  store i32 %352, i32* %353, align 4
  %354 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %25, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* dereferenceable(272) %351, i32 %355)
  %357 = getelementptr inbounds [6 x double], [6 x double]* %20, i64 0, i64 2
  %358 = load double, double* %357, align 16
  %359 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %356, double %358)
  %360 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %359, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  %361 = call i32 @_ZSt4setwi(i32 9)
  %362 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %26, i32 0, i32 0
  store i32 %361, i32* %362, align 4
  %363 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %26, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* dereferenceable(272) %360, i32 %364)
  %366 = getelementptr inbounds [6 x double], [6 x double]* %20, i64 0, i64 3
  %367 = load double, double* %366, align 8
  %368 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %365, double %367)
  %369 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %368, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  %370 = call i32 @_ZSt4setwi(i32 9)
  %371 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %27, i32 0, i32 0
  store i32 %370, i32* %371, align 4
  %372 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %27, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* dereferenceable(272) %369, i32 %373)
  %375 = getelementptr inbounds [6 x double], [6 x double]* %20, i64 0, i64 4
  %376 = load double, double* %375, align 16
  %377 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %374, double %376)
  %378 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %377, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  %379 = call i32 @_ZSt4setwi(i32 9)
  %380 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %28, i32 0, i32 0
  store i32 %379, i32* %380, align 4
  %381 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %28, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* dereferenceable(272) %378, i32 %382)
  %384 = getelementptr inbounds [6 x double], [6 x double]* %20, i64 0, i64 5
  %385 = load double, double* %384, align 8
  %386 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %383, double %385)
  %387 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %386, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %388 = load float*, float** %2, align 8
  %389 = icmp eq float* %388, null
  br i1 %389, label %392, label %390

; <label>:390:                                    ; preds = %324
  %391 = bitcast float* %388 to i8*
  call void @_ZdaPv(i8* %391) #12
  br label %392

; <label>:392:                                    ; preds = %390, %324
  %393 = load float*, float** %4, align 8
  %394 = icmp eq float* %393, null
  br i1 %394, label %397, label %395

; <label>:395:                                    ; preds = %392
  %396 = bitcast float* %393 to i8*
  call void @_ZdaPv(i8* %396) #12
  br label %397

; <label>:397:                                    ; preds = %395, %392
  %398 = load i32*, i32** %10, align 8
  %399 = icmp eq i32* %398, null
  br i1 %399, label %402, label %400

; <label>:400:                                    ; preds = %397
  %401 = bitcast i32* %398 to i8*
  call void @_ZdaPv(i8* %401) #12
  br label %402

; <label>:402:                                    ; preds = %400, %397
  %403 = load float*, float** %14, align 8
  %404 = icmp eq float* %403, null
  br i1 %404, label %407, label %405

; <label>:405:                                    ; preds = %402
  %406 = bitcast float* %403 to i8*
  call void @_ZdaPv(i8* %406) #12
  br label %407

; <label>:407:                                    ; preds = %405, %402
  %408 = load float*, float** %17, align 8
  %409 = icmp eq float* %408, null
  br i1 %409, label %412, label %410

; <label>:410:                                    ; preds = %407
  %411 = bitcast float* %408 to i8*
  call void @_ZdaPv(i8* %411) #12
  br label %412

; <label>:412:                                    ; preds = %410, %407
  %413 = load float*, float** %22, align 8
  %414 = icmp eq float* %413, null
  br i1 %414, label %417, label %415

; <label>:415:                                    ; preds = %412
  %416 = bitcast float* %413 to i8*
  call void @_ZdaPv(i8* %416) #12
  br label %417

; <label>:417:                                    ; preds = %415, %412
  call void @_Z9timestampv()
  store i32 0, i32* %1, align 4
  br label %418

; <label>:418:                                    ; preds = %417, %128
  %419 = load i32, i32* %1, align 4
  ret i32 %419
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_Z9timestampv() #5 {
  %1 = alloca %struct.tm*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call i64 @time(i64* null) #3
  store i64 %4, i64* %3, align 8
  %5 = call %struct.tm* @localtime(i64* %3) #3
  store %struct.tm* %5, %struct.tm** %1, align 8
  %6 = load %struct.tm*, %struct.tm** %1, align 8
  %7 = call i64 @strftime(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @_ZZ9timestampvE11time_buffer, i32 0, i32 0), i64 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), %struct.tm* %6) #3
  store i64 %7, i64* %2, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define dso_local float* @_Z9r4mat_genii(i32, i32) #6 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = bitcast [4 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([4 x i32]* @_ZZ9r4mat_geniiE4init to i8*), i64 16, i1 false)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = mul nsw i32 %10, %11
  %13 = sext i32 %12 to i64
  %14 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %13, i64 4)
  %15 = extractvalue { i64, i1 } %14, 1
  %16 = extractvalue { i64, i1 } %14, 0
  %17 = select i1 %15, i64 -1, i64 %16
  %18 = call i8* @_Znam(i64 %17) #11
  %19 = bitcast i8* %18 to float*
  store float* %19, float** %5, align 8
  store i32 1, i32* %8, align 4
  br label %20

; <label>:20:                                     ; preds = %49, %2
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %52

; <label>:24:                                     ; preds = %20
  store i32 1, i32* %6, align 4
  br label %25

; <label>:25:                                     ; preds = %45, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %48

; <label>:29:                                     ; preds = %25
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i32 0, i32 0
  %31 = call float @_Z9r4_randomPi(i32* %30)
  %32 = fpext float %31 to double
  %33 = fsub double %32, 5.000000e-01
  %34 = fptrunc double %33 to float
  %35 = load float*, float** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* %3, align 4
  %41 = mul nsw i32 %39, %40
  %42 = add nsw i32 %37, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %35, i64 %43
  store float %34, float* %44, align 4
  br label %45

; <label>:45:                                     ; preds = %29
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %25

; <label>:48:                                     ; preds = %25
  br label %49

; <label>:49:                                     ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %20

; <label>:52:                                     ; preds = %20
  %53 = load float*, float** %5, align 8
  ret float* %53
}

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znam(i64) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @_Z6r4_maxff(float, float) #5 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %6 = load float, float* %5, align 4
  %7 = load float, float* %4, align 4
  %8 = fcmp olt float %6, %7
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %2
  %10 = load float, float* %4, align 4
  store float %10, float* %3, align 4
  br label %13

; <label>:11:                                     ; preds = %2
  %12 = load float, float* %5, align 4
  store float %12, float* %3, align 4
  br label %13

; <label>:13:                                     ; preds = %11, %9
  %14 = load float, float* %3, align 4
  ret float %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @_Z8cpu_timev() #5 {
  %1 = alloca double, align 8
  %2 = call i64 @clock() #3
  %3 = sitofp i64 %2 to double
  %4 = fdiv double %3, 1.000000e+06
  store double %4, double* %1, align 8
  %5 = load double, double* %1, align 8
  ret double %5
}

; Function Attrs: noinline optnone uwtable
define dso_local i32 @_Z5sgefaPfiiPi(float*, i32, i32, i32*) #6 {
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  store float* %0, float** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %11, align 4
  br label %14

; <label>:14:                                     ; preds = %220, %4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp sle i32 %15, %17
  br i1 %18, label %19, label %223

; <label>:19:                                     ; preds = %14
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %11, align 4
  %22 = sub nsw i32 %20, %21
  %23 = add nsw i32 %22, 1
  %24 = load float*, float** %5, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %24, i64 %27
  %29 = load i32, i32* %11, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* %6, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %28, i64 %33
  %35 = call i32 @_Z6isamaxiPfi(i32 %23, float* %34, i32 1)
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %35, %36
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  store i32 %39, i32* %44, align 4
  %45 = load float*, float** %5, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load i32, i32* %11, align 4
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* %6, align 4
  %51 = mul nsw i32 %49, %50
  %52 = add nsw i32 %47, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %45, i64 %53
  %55 = load float, float* %54, align 4
  %56 = fpext float %55 to double
  %57 = fcmp oeq double %56, 0.000000e+00
  br i1 %57, label %58, label %60

; <label>:58:                                     ; preds = %19
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %9, align 4
  br label %220

; <label>:60:                                     ; preds = %19
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %108

; <label>:64:                                     ; preds = %60
  %65 = load float*, float** %5, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sub nsw i32 %66, 1
  %68 = load i32, i32* %11, align 4
  %69 = sub nsw i32 %68, 1
  %70 = load i32, i32* %6, align 4
  %71 = mul nsw i32 %69, %70
  %72 = add nsw i32 %67, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %65, i64 %73
  %75 = load float, float* %74, align 4
  store float %75, float* %13, align 4
  %76 = load float*, float** %5, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sub nsw i32 %77, 1
  %79 = load i32, i32* %11, align 4
  %80 = sub nsw i32 %79, 1
  %81 = load i32, i32* %6, align 4
  %82 = mul nsw i32 %80, %81
  %83 = add nsw i32 %78, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %76, i64 %84
  %86 = load float, float* %85, align 4
  %87 = load float*, float** %5, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sub nsw i32 %88, 1
  %90 = load i32, i32* %11, align 4
  %91 = sub nsw i32 %90, 1
  %92 = load i32, i32* %6, align 4
  %93 = mul nsw i32 %91, %92
  %94 = add nsw i32 %89, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %87, i64 %95
  store float %86, float* %96, align 4
  %97 = load float, float* %13, align 4
  %98 = load float*, float** %5, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sub nsw i32 %99, 1
  %101 = load i32, i32* %11, align 4
  %102 = sub nsw i32 %101, 1
  %103 = load i32, i32* %6, align 4
  %104 = mul nsw i32 %102, %103
  %105 = add nsw i32 %100, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %98, i64 %106
  store float %97, float* %107, align 4
  br label %108

; <label>:108:                                    ; preds = %64, %60
  %109 = load float*, float** %5, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sub nsw i32 %110, 1
  %112 = load i32, i32* %11, align 4
  %113 = sub nsw i32 %112, 1
  %114 = load i32, i32* %6, align 4
  %115 = mul nsw i32 %113, %114
  %116 = add nsw i32 %111, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %109, i64 %117
  %119 = load float, float* %118, align 4
  %120 = fpext float %119 to double
  %121 = fdiv double -1.000000e+00, %120
  %122 = fptrunc double %121 to float
  store float %122, float* %13, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %11, align 4
  %125 = sub nsw i32 %123, %124
  %126 = load float, float* %13, align 4
  %127 = load float*, float** %5, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds float, float* %127, i64 %129
  %131 = load i32, i32* %11, align 4
  %132 = sub nsw i32 %131, 1
  %133 = load i32, i32* %6, align 4
  %134 = mul nsw i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, float* %130, i64 %135
  call void @_Z5sscalifPfi(i32 %125, float %126, float* %136, i32 1)
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %139

; <label>:139:                                    ; preds = %216, %108
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp sle i32 %140, %141
  br i1 %142, label %143, label %219

; <label>:143:                                    ; preds = %139
  %144 = load float*, float** %5, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sub nsw i32 %145, 1
  %147 = load i32, i32* %10, align 4
  %148 = sub nsw i32 %147, 1
  %149 = load i32, i32* %6, align 4
  %150 = mul nsw i32 %148, %149
  %151 = add nsw i32 %146, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds float, float* %144, i64 %152
  %154 = load float, float* %153, align 4
  store float %154, float* %13, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %191

; <label>:158:                                    ; preds = %143
  %159 = load float*, float** %5, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sub nsw i32 %160, 1
  %162 = load i32, i32* %10, align 4
  %163 = sub nsw i32 %162, 1
  %164 = load i32, i32* %6, align 4
  %165 = mul nsw i32 %163, %164
  %166 = add nsw i32 %161, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, float* %159, i64 %167
  %169 = load float, float* %168, align 4
  %170 = load float*, float** %5, align 8
  %171 = load i32, i32* %12, align 4
  %172 = sub nsw i32 %171, 1
  %173 = load i32, i32* %10, align 4
  %174 = sub nsw i32 %173, 1
  %175 = load i32, i32* %6, align 4
  %176 = mul nsw i32 %174, %175
  %177 = add nsw i32 %172, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds float, float* %170, i64 %178
  store float %169, float* %179, align 4
  %180 = load float, float* %13, align 4
  %181 = load float*, float** %5, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sub nsw i32 %182, 1
  %184 = load i32, i32* %10, align 4
  %185 = sub nsw i32 %184, 1
  %186 = load i32, i32* %6, align 4
  %187 = mul nsw i32 %185, %186
  %188 = add nsw i32 %183, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %181, i64 %189
  store float %180, float* %190, align 4
  br label %191

; <label>:191:                                    ; preds = %158, %143
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* %11, align 4
  %194 = sub nsw i32 %192, %193
  %195 = load float, float* %13, align 4
  %196 = load float*, float** %5, align 8
  %197 = load i32, i32* %11, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %196, i64 %198
  %200 = load i32, i32* %11, align 4
  %201 = sub nsw i32 %200, 1
  %202 = load i32, i32* %6, align 4
  %203 = mul nsw i32 %201, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds float, float* %199, i64 %204
  %206 = load float*, float** %5, align 8
  %207 = load i32, i32* %11, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %206, i64 %208
  %210 = load i32, i32* %10, align 4
  %211 = sub nsw i32 %210, 1
  %212 = load i32, i32* %6, align 4
  %213 = mul nsw i32 %211, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %209, i64 %214
  call void @_Z5saxpyifPfiS_i(i32 %194, float %195, float* %205, i32 1, float* %215, i32 1)
  br label %216

; <label>:216:                                    ; preds = %191
  %217 = load i32, i32* %10, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %10, align 4
  br label %139

; <label>:219:                                    ; preds = %139
  br label %220

; <label>:220:                                    ; preds = %219, %58
  %221 = load i32, i32* %11, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %11, align 4
  br label %14

; <label>:223:                                    ; preds = %14
  %224 = load i32, i32* %7, align 4
  %225 = load i32*, i32** %8, align 8
  %226 = load i32, i32* %7, align 4
  %227 = sub nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %225, i64 %228
  store i32 %224, i32* %229, align 4
  %230 = load float*, float** %5, align 8
  %231 = load i32, i32* %7, align 4
  %232 = sub nsw i32 %231, 1
  %233 = load i32, i32* %7, align 4
  %234 = sub nsw i32 %233, 1
  %235 = load i32, i32* %6, align 4
  %236 = mul nsw i32 %234, %235
  %237 = add nsw i32 %232, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds float, float* %230, i64 %238
  %240 = load float, float* %239, align 4
  %241 = fpext float %240 to double
  %242 = fcmp oeq double %241, 0.000000e+00
  br i1 %242, label %243, label %245

; <label>:243:                                    ; preds = %223
  %244 = load i32, i32* %7, align 4
  store i32 %244, i32* %9, align 4
  br label %245

; <label>:245:                                    ; preds = %243, %223
  %246 = load i32, i32* %9, align 4
  ret i32 %246
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_Z5sgeslPfiiPiS_i(float*, i32, i32, i32*, float*, i32) #5 {
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  store float* %0, float** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store float* %4, float** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %132

; <label>:18:                                     ; preds = %6
  store i32 1, i32* %13, align 4
  br label %19

; <label>:19:                                     ; preds = %77, %18
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %9, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp sle i32 %20, %22
  br i1 %23, label %24, label %80

; <label>:24:                                     ; preds = %19
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %14, align 4
  %31 = load float*, float** %11, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %31, i64 %34
  %36 = load float, float* %35, align 4
  store float %36, float* %15, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %58

; <label>:40:                                     ; preds = %24
  %41 = load float*, float** %11, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %41, i64 %44
  %46 = load float, float* %45, align 4
  %47 = load float*, float** %11, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %47, i64 %50
  store float %46, float* %51, align 4
  %52 = load float, float* %15, align 4
  %53 = load float*, float** %11, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %53, i64 %56
  store float %52, float* %57, align 4
  br label %58

; <label>:58:                                     ; preds = %40, %24
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %13, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load float, float* %15, align 4
  %63 = load float*, float** %7, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %63, i64 %65
  %67 = load i32, i32* %13, align 4
  %68 = sub nsw i32 %67, 1
  %69 = load i32, i32* %8, align 4
  %70 = mul nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %66, i64 %71
  %73 = load float*, float** %11, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %73, i64 %75
  call void @_Z5saxpyifPfiS_i(i32 %61, float %62, float* %72, i32 1, float* %76, i32 1)
  br label %77

; <label>:77:                                     ; preds = %58
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %13, align 4
  br label %19

; <label>:80:                                     ; preds = %19
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %13, align 4
  br label %82

; <label>:82:                                     ; preds = %128, %80
  %83 = load i32, i32* %13, align 4
  %84 = icmp sle i32 1, %83
  br i1 %84, label %85, label %131

; <label>:85:                                     ; preds = %82
  %86 = load float*, float** %11, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %86, i64 %89
  %91 = load float, float* %90, align 4
  %92 = load float*, float** %7, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sub nsw i32 %93, 1
  %95 = load i32, i32* %13, align 4
  %96 = sub nsw i32 %95, 1
  %97 = load i32, i32* %8, align 4
  %98 = mul nsw i32 %96, %97
  %99 = add nsw i32 %94, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %92, i64 %100
  %102 = load float, float* %101, align 4
  %103 = fdiv float %91, %102
  %104 = load float*, float** %11, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %104, i64 %107
  store float %103, float* %108, align 4
  %109 = load float*, float** %11, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, float* %109, i64 %112
  %114 = load float, float* %113, align 4
  %115 = fsub float -0.000000e+00, %114
  store float %115, float* %15, align 4
  %116 = load i32, i32* %13, align 4
  %117 = sub nsw i32 %116, 1
  %118 = load float, float* %15, align 4
  %119 = load float*, float** %7, align 8
  %120 = getelementptr inbounds float, float* %119, i64 0
  %121 = load i32, i32* %13, align 4
  %122 = sub nsw i32 %121, 1
  %123 = load i32, i32* %8, align 4
  %124 = mul nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, float* %120, i64 %125
  %127 = load float*, float** %11, align 8
  call void @_Z5saxpyifPfiS_i(i32 %117, float %118, float* %126, i32 1, float* %127, i32 1)
  br label %128

; <label>:128:                                    ; preds = %85
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %13, align 4
  br label %82

; <label>:131:                                    ; preds = %82
  br label %253

; <label>:132:                                    ; preds = %6
  store i32 1, i32* %13, align 4
  br label %133

; <label>:133:                                    ; preds = %175, %132
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp sle i32 %134, %135
  br i1 %136, label %137, label %178

; <label>:137:                                    ; preds = %133
  %138 = load i32, i32* %13, align 4
  %139 = sub nsw i32 %138, 1
  %140 = load float*, float** %7, align 8
  %141 = getelementptr inbounds float, float* %140, i64 0
  %142 = load i32, i32* %13, align 4
  %143 = sub nsw i32 %142, 1
  %144 = load i32, i32* %8, align 4
  %145 = mul nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %141, i64 %146
  %148 = load float*, float** %11, align 8
  %149 = call float @_Z4sdotiPfiS_i(i32 %139, float* %147, i32 1, float* %148, i32 1)
  store float %149, float* %15, align 4
  %150 = load float*, float** %11, align 8
  %151 = load i32, i32* %13, align 4
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %150, i64 %153
  %155 = load float, float* %154, align 4
  %156 = load float, float* %15, align 4
  %157 = fsub float %155, %156
  %158 = load float*, float** %7, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sub nsw i32 %159, 1
  %161 = load i32, i32* %13, align 4
  %162 = sub nsw i32 %161, 1
  %163 = load i32, i32* %8, align 4
  %164 = mul nsw i32 %162, %163
  %165 = add nsw i32 %160, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds float, float* %158, i64 %166
  %168 = load float, float* %167, align 4
  %169 = fdiv float %157, %168
  %170 = load float*, float** %11, align 8
  %171 = load i32, i32* %13, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds float, float* %170, i64 %173
  store float %169, float* %174, align 4
  br label %175

; <label>:175:                                    ; preds = %137
  %176 = load i32, i32* %13, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %13, align 4
  br label %133

; <label>:178:                                    ; preds = %133
  %179 = load i32, i32* %9, align 4
  %180 = sub nsw i32 %179, 1
  store i32 %180, i32* %13, align 4
  br label %181

; <label>:181:                                    ; preds = %249, %178
  %182 = load i32, i32* %13, align 4
  %183 = icmp sle i32 1, %182
  br i1 %183, label %184, label %252

; <label>:184:                                    ; preds = %181
  %185 = load float*, float** %11, align 8
  %186 = load i32, i32* %13, align 4
  %187 = sub nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds float, float* %185, i64 %188
  %190 = load float, float* %189, align 4
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* %13, align 4
  %193 = sub nsw i32 %191, %192
  %194 = load float*, float** %7, align 8
  %195 = load i32, i32* %13, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds float, float* %194, i64 %196
  %198 = load i32, i32* %13, align 4
  %199 = sub nsw i32 %198, 1
  %200 = load i32, i32* %8, align 4
  %201 = mul nsw i32 %199, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds float, float* %197, i64 %202
  %204 = load float*, float** %11, align 8
  %205 = load i32, i32* %13, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds float, float* %204, i64 %206
  %208 = call float @_Z4sdotiPfiS_i(i32 %193, float* %203, i32 1, float* %207, i32 1)
  %209 = fadd float %190, %208
  %210 = load float*, float** %11, align 8
  %211 = load i32, i32* %13, align 4
  %212 = sub nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds float, float* %210, i64 %213
  store float %209, float* %214, align 4
  %215 = load i32*, i32** %10, align 8
  %216 = load i32, i32* %13, align 4
  %217 = sub nsw i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %215, i64 %218
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* %14, align 4
  %221 = load i32, i32* %14, align 4
  %222 = load i32, i32* %13, align 4
  %223 = icmp ne i32 %221, %222
  br i1 %223, label %224, label %248

; <label>:224:                                    ; preds = %184
  %225 = load float*, float** %11, align 8
  %226 = load i32, i32* %14, align 4
  %227 = sub nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %225, i64 %228
  %230 = load float, float* %229, align 4
  store float %230, float* %15, align 4
  %231 = load float*, float** %11, align 8
  %232 = load i32, i32* %13, align 4
  %233 = sub nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds float, float* %231, i64 %234
  %236 = load float, float* %235, align 4
  %237 = load float*, float** %11, align 8
  %238 = load i32, i32* %14, align 4
  %239 = sub nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds float, float* %237, i64 %240
  store float %236, float* %241, align 4
  %242 = load float, float* %15, align 4
  %243 = load float*, float** %11, align 8
  %244 = load i32, i32* %13, align 4
  %245 = sub nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds float, float* %243, i64 %246
  store float %242, float* %247, align 4
  br label %248

; <label>:248:                                    ; preds = %224, %184
  br label %249

; <label>:249:                                    ; preds = %248
  %250 = load i32, i32* %13, align 4
  %251 = add nsw i32 %250, -1
  store i32 %251, i32* %13, align 4
  br label %181

; <label>:252:                                    ; preds = %181
  br label %253

; <label>:253:                                    ; preds = %252, %131
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8*) #8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @_Z6r4_absf(float) #5 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, float* %3, align 4
  %4 = load float, float* %3, align 4
  %5 = fpext float %4 to double
  %6 = fcmp ole double 0.000000e+00, %5
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %1
  %8 = load float, float* %3, align 4
  store float %8, float* %2, align 4
  br label %12

; <label>:9:                                      ; preds = %1
  %10 = load float, float* %3, align 4
  %11 = fsub float -0.000000e+00, %10
  store float %11, float* %2, align 4
  br label %12

; <label>:12:                                     ; preds = %9, %7
  %13 = load float, float* %2, align 4
  ret float %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @_Z10r4_epsilonv() #5 {
  %1 = alloca float, align 4
  store float 1.000000e+00, float* %1, align 4
  br label %2

; <label>:2:                                      ; preds = %9, %0
  %3 = load float, float* %1, align 4
  %4 = fpext float %3 to double
  %5 = fadd double 1.000000e+00, %4
  %6 = fptrunc double %5 to float
  %7 = fpext float %6 to double
  %8 = fcmp olt double 1.000000e+00, %7
  br i1 %8, label %9, label %14

; <label>:9:                                      ; preds = %2
  %10 = load float, float* %1, align 4
  %11 = fpext float %10 to double
  %12 = fdiv double %11, 2.000000e+00
  %13 = fptrunc double %12 to float
  store float %13, float* %1, align 4
  br label %2

; <label>:14:                                     ; preds = %2
  %15 = load float, float* %1, align 4
  %16 = fpext float %15 to double
  %17 = fmul double 2.000000e+00, %16
  %18 = fptrunc double %17 to float
  ret float %18
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* dereferenceable(272), i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZSt4setwi(i32) #5 comdat {
  %2 = alloca %"struct.std::_Setw", align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %2, i32 0, i32 0
  %5 = load i32, i32* %3, align 4
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds %"struct.std::_Setw", %"struct.std::_Setw"* %2, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  ret i32 %7
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"*, double) #1

; Function Attrs: nounwind
declare dso_local i64 @clock() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_Z5saxpyifPfiS_i(i32, float, float*, i32, float*, i32) #5 {
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store float %1, float* %8, align 4
  store float* %2, float** %9, align 8
  store i32 %3, i32* %10, align 4
  store float* %4, float** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %6
  br label %201

; <label>:20:                                     ; preds = %6
  %21 = load float, float* %8, align 4
  %22 = fpext float %21 to double
  %23 = fcmp oeq double %22, 0.000000e+00
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %20
  br label %201

; <label>:25:                                     ; preds = %20
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %31, label %28

; <label>:28:                                     ; preds = %25
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %84

; <label>:31:                                     ; preds = %28, %25
  %32 = load i32, i32* %10, align 4
  %33 = icmp sle i32 0, %32
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %31
  store i32 0, i32* %14, align 4
  br label %41

; <label>:35:                                     ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 0, %36
  %38 = add nsw i32 %37, 1
  %39 = load i32, i32* %10, align 4
  %40 = mul nsw i32 %38, %39
  store i32 %40, i32* %14, align 4
  br label %41

; <label>:41:                                     ; preds = %35, %34
  %42 = load i32, i32* %12, align 4
  %43 = icmp sle i32 0, %42
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %41
  store i32 0, i32* %15, align 4
  br label %51

; <label>:45:                                     ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 0, %46
  %48 = add nsw i32 %47, 1
  %49 = load i32, i32* %12, align 4
  %50 = mul nsw i32 %48, %49
  store i32 %50, i32* %15, align 4
  br label %51

; <label>:51:                                     ; preds = %45, %44
  store i32 0, i32* %13, align 4
  br label %52

; <label>:52:                                     ; preds = %80, %51
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %83

; <label>:56:                                     ; preds = %52
  %57 = load float*, float** %11, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %57, i64 %59
  %61 = load float, float* %60, align 4
  %62 = load float, float* %8, align 4
  %63 = load float*, float** %9, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %63, i64 %65
  %67 = load float, float* %66, align 4
  %68 = fmul float %62, %67
  %69 = fadd float %61, %68
  %70 = load float*, float** %11, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %70, i64 %72
  store float %69, float* %73, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %74, %75
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %77, %78
  store i32 %79, i32* %15, align 4
  br label %80

; <label>:80:                                     ; preds = %56
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %52

; <label>:83:                                     ; preds = %52
  br label %200

; <label>:84:                                     ; preds = %28
  %85 = load i32, i32* %7, align 4
  %86 = srem i32 %85, 4
  store i32 %86, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %87

; <label>:87:                                     ; preds = %109, %84
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %16, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %112

; <label>:91:                                     ; preds = %87
  %92 = load float*, float** %11, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %92, i64 %94
  %96 = load float, float* %95, align 4
  %97 = load float, float* %8, align 4
  %98 = load float*, float** %9, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %98, i64 %100
  %102 = load float, float* %101, align 4
  %103 = fmul float %97, %102
  %104 = fadd float %96, %103
  %105 = load float*, float** %11, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %105, i64 %107
  store float %104, float* %108, align 4
  br label %109

; <label>:109:                                    ; preds = %91
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  br label %87

; <label>:112:                                    ; preds = %87
  %113 = load i32, i32* %16, align 4
  store i32 %113, i32* %13, align 4
  br label %114

; <label>:114:                                    ; preds = %196, %112
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %199

; <label>:118:                                    ; preds = %114
  %119 = load float*, float** %11, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %119, i64 %121
  %123 = load float, float* %122, align 4
  %124 = load float, float* %8, align 4
  %125 = load float*, float** %9, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %125, i64 %127
  %129 = load float, float* %128, align 4
  %130 = fmul float %124, %129
  %131 = fadd float %123, %130
  %132 = load float*, float** %11, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds float, float* %132, i64 %134
  store float %131, float* %135, align 4
  %136 = load float*, float** %11, align 8
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, float* %136, i64 %139
  %141 = load float, float* %140, align 4
  %142 = load float, float* %8, align 4
  %143 = load float*, float** %9, align 8
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %143, i64 %146
  %148 = load float, float* %147, align 4
  %149 = fmul float %142, %148
  %150 = fadd float %141, %149
  %151 = load float*, float** %11, align 8
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds float, float* %151, i64 %154
  store float %150, float* %155, align 4
  %156 = load float*, float** %11, align 8
  %157 = load i32, i32* %13, align 4
  %158 = add nsw i32 %157, 2
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, float* %156, i64 %159
  %161 = load float, float* %160, align 4
  %162 = load float, float* %8, align 4
  %163 = load float*, float** %9, align 8
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %164, 2
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds float, float* %163, i64 %166
  %168 = load float, float* %167, align 4
  %169 = fmul float %162, %168
  %170 = fadd float %161, %169
  %171 = load float*, float** %11, align 8
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, 2
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float, float* %171, i64 %174
  store float %170, float* %175, align 4
  %176 = load float*, float** %11, align 8
  %177 = load i32, i32* %13, align 4
  %178 = add nsw i32 %177, 3
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %176, i64 %179
  %181 = load float, float* %180, align 4
  %182 = load float, float* %8, align 4
  %183 = load float*, float** %9, align 8
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %184, 3
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float, float* %183, i64 %186
  %188 = load float, float* %187, align 4
  %189 = fmul float %182, %188
  %190 = fadd float %181, %189
  %191 = load float*, float** %11, align 8
  %192 = load i32, i32* %13, align 4
  %193 = add nsw i32 %192, 3
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float, float* %191, i64 %194
  store float %190, float* %195, align 4
  br label %196

; <label>:196:                                    ; preds = %118
  %197 = load i32, i32* %13, align 4
  %198 = add nsw i32 %197, 4
  store i32 %198, i32* %13, align 4
  br label %114

; <label>:199:                                    ; preds = %114
  br label %200

; <label>:200:                                    ; preds = %199, %83
  br label %201

; <label>:201:                                    ; preds = %200, %24, %19
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @_Z4sdotiPfiS_i(i32, float*, i32, float*, i32) #5 {
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store float* %1, float** %8, align 8
  store i32 %2, i32* %9, align 4
  store float* %3, float** %10, align 8
  store i32 %4, i32* %11, align 4
  store float 0.000000e+00, float* %12, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %5
  %20 = load float, float* %12, align 4
  store float %20, float* %6, align 4
  br label %182

; <label>:21:                                     ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %27, label %24

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %76

; <label>:27:                                     ; preds = %24, %21
  %28 = load i32, i32* %9, align 4
  %29 = icmp sle i32 0, %28
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  store i32 0, i32* %14, align 4
  br label %37

; <label>:31:                                     ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 0, %32
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* %9, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %14, align 4
  br label %37

; <label>:37:                                     ; preds = %31, %30
  %38 = load i32, i32* %11, align 4
  %39 = icmp sle i32 0, %38
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %37
  store i32 0, i32* %15, align 4
  br label %47

; <label>:41:                                     ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 0, %42
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* %11, align 4
  %46 = mul nsw i32 %44, %45
  store i32 %46, i32* %15, align 4
  br label %47

; <label>:47:                                     ; preds = %41, %40
  store i32 0, i32* %13, align 4
  br label %48

; <label>:48:                                     ; preds = %72, %47
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %75

; <label>:52:                                     ; preds = %48
  %53 = load float, float* %12, align 4
  %54 = load float*, float** %8, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %54, i64 %56
  %58 = load float, float* %57, align 4
  %59 = load float*, float** %10, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %59, i64 %61
  %63 = load float, float* %62, align 4
  %64 = fmul float %58, %63
  %65 = fadd float %53, %64
  store float %65, float* %12, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %69, %70
  store i32 %71, i32* %15, align 4
  br label %72

; <label>:72:                                     ; preds = %52
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %48

; <label>:75:                                     ; preds = %48
  br label %180

; <label>:76:                                     ; preds = %24
  %77 = load i32, i32* %7, align 4
  %78 = srem i32 %77, 5
  store i32 %78, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %79

; <label>:79:                                     ; preds = %97, %76
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %100

; <label>:83:                                     ; preds = %79
  %84 = load float, float* %12, align 4
  %85 = load float*, float** %8, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %85, i64 %87
  %89 = load float, float* %88, align 4
  %90 = load float*, float** %10, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %90, i64 %92
  %94 = load float, float* %93, align 4
  %95 = fmul float %89, %94
  %96 = fadd float %84, %95
  store float %96, float* %12, align 4
  br label %97

; <label>:97:                                     ; preds = %83
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  br label %79

; <label>:100:                                    ; preds = %79
  %101 = load i32, i32* %16, align 4
  store i32 %101, i32* %13, align 4
  br label %102

; <label>:102:                                    ; preds = %176, %100
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %179

; <label>:106:                                    ; preds = %102
  %107 = load float, float* %12, align 4
  %108 = load float*, float** %8, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %108, i64 %110
  %112 = load float, float* %111, align 4
  %113 = load float*, float** %10, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %113, i64 %115
  %117 = load float, float* %116, align 4
  %118 = fmul float %112, %117
  %119 = fadd float %107, %118
  %120 = load float*, float** %8, align 8
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds float, float* %120, i64 %123
  %125 = load float, float* %124, align 4
  %126 = load float*, float** %10, align 8
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds float, float* %126, i64 %129
  %131 = load float, float* %130, align 4
  %132 = fmul float %125, %131
  %133 = fadd float %119, %132
  %134 = load float*, float** %8, align 8
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, 2
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds float, float* %134, i64 %137
  %139 = load float, float* %138, align 4
  %140 = load float*, float** %10, align 8
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, 2
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float, float* %140, i64 %143
  %145 = load float, float* %144, align 4
  %146 = fmul float %139, %145
  %147 = fadd float %133, %146
  %148 = load float*, float** %8, align 8
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, 3
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float, float* %148, i64 %151
  %153 = load float, float* %152, align 4
  %154 = load float*, float** %10, align 8
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %155, 3
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds float, float* %154, i64 %157
  %159 = load float, float* %158, align 4
  %160 = fmul float %153, %159
  %161 = fadd float %147, %160
  %162 = load float*, float** %8, align 8
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %163, 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, float* %162, i64 %165
  %167 = load float, float* %166, align 4
  %168 = load float*, float** %10, align 8
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float, float* %168, i64 %171
  %173 = load float, float* %172, align 4
  %174 = fmul float %167, %173
  %175 = fadd float %161, %174
  store float %175, float* %12, align 4
  br label %176

; <label>:176:                                    ; preds = %106
  %177 = load i32, i32* %13, align 4
  %178 = add nsw i32 %177, 5
  store i32 %178, i32* %13, align 4
  br label %102

; <label>:179:                                    ; preds = %102
  br label %180

; <label>:180:                                    ; preds = %179, %75
  %181 = load float, float* %12, align 4
  store float %181, float* %6, align 4
  br label %182

; <label>:182:                                    ; preds = %180, %19
  %183 = load float, float* %6, align 4
  ret float %183
}

; Function Attrs: noinline optnone uwtable
define dso_local i32 @_Z6isamaxiPfi(i32, float*, i32) #6 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %17, label %14

; <label>:14:                                     ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %14, %3
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %4, align 4
  br label %99

; <label>:19:                                     ; preds = %14
  store i32 1, i32* %11, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %4, align 4
  br label %99

; <label>:24:                                     ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %59

; <label>:27:                                     ; preds = %24
  %28 = load float*, float** %6, align 8
  %29 = getelementptr inbounds float, float* %28, i64 0
  %30 = load float, float* %29, align 4
  %31 = call float @_Z6r4_absf(float %30)
  store float %31, float* %8, align 4
  store i32 1, i32* %9, align 4
  br label %32

; <label>:32:                                     ; preds = %55, %27
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %58

; <label>:36:                                     ; preds = %32
  %37 = load float, float* %8, align 4
  %38 = load float*, float** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %38, i64 %40
  %42 = load float, float* %41, align 4
  %43 = call float @_Z6r4_absf(float %42)
  %44 = fcmp olt float %37, %43
  br i1 %44, label %45, label %54

; <label>:45:                                     ; preds = %36
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  %48 = load float*, float** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %48, i64 %50
  %52 = load float, float* %51, align 4
  %53 = call float @_Z6r4_absf(float %52)
  store float %53, float* %8, align 4
  br label %54

; <label>:54:                                     ; preds = %45, %36
  br label %55

; <label>:55:                                     ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %32

; <label>:58:                                     ; preds = %32
  br label %97

; <label>:59:                                     ; preds = %24
  store i32 0, i32* %10, align 4
  %60 = load float*, float** %6, align 8
  %61 = getelementptr inbounds float, float* %60, i64 0
  %62 = load float, float* %61, align 4
  %63 = call float @_Z6r4_absf(float %62)
  store float %63, float* %8, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %64, %65
  store i32 %66, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %67

; <label>:67:                                     ; preds = %93, %59
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %96

; <label>:71:                                     ; preds = %67
  %72 = load float, float* %8, align 4
  %73 = load float*, float** %6, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %73, i64 %75
  %77 = load float, float* %76, align 4
  %78 = call float @_Z6r4_absf(float %77)
  %79 = fcmp olt float %72, %78
  br i1 %79, label %80, label %89

; <label>:80:                                     ; preds = %71
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  %83 = load float*, float** %6, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %83, i64 %85
  %87 = load float, float* %86, align 4
  %88 = call float @_Z6r4_absf(float %87)
  store float %88, float* %8, align 4
  br label %89

; <label>:89:                                     ; preds = %80, %71
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %90, %91
  store i32 %92, i32* %10, align 4
  br label %93

; <label>:93:                                     ; preds = %89
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %67

; <label>:96:                                     ; preds = %67
  br label %97

; <label>:97:                                     ; preds = %96, %58
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %4, align 4
  br label %99

; <label>:99:                                     ; preds = %97, %22, %17
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_Z5sscalifPfi(i32, float, float*, i32) #5 {
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store float %1, float* %6, align 4
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %4
  br label %149

; <label>:15:                                     ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %114

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = srem i32 %19, 5
  store i32 %20, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %21

; <label>:21:                                     ; preds = %37, %18
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %40

; <label>:25:                                     ; preds = %21
  %26 = load float, float* %6, align 4
  %27 = load float*, float** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %27, i64 %29
  %31 = load float, float* %30, align 4
  %32 = fmul float %26, %31
  %33 = load float*, float** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %33, i64 %35
  store float %32, float* %36, align 4
  br label %37

; <label>:37:                                     ; preds = %25
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %21

; <label>:40:                                     ; preds = %21
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %9, align 4
  br label %42

; <label>:42:                                     ; preds = %110, %40
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %113

; <label>:46:                                     ; preds = %42
  %47 = load float, float* %6, align 4
  %48 = load float*, float** %7, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %48, i64 %50
  %52 = load float, float* %51, align 4
  %53 = fmul float %47, %52
  %54 = load float*, float** %7, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %54, i64 %56
  store float %53, float* %57, align 4
  %58 = load float, float* %6, align 4
  %59 = load float*, float** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %59, i64 %62
  %64 = load float, float* %63, align 4
  %65 = fmul float %58, %64
  %66 = load float*, float** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %66, i64 %69
  store float %65, float* %70, align 4
  %71 = load float, float* %6, align 4
  %72 = load float*, float** %7, align 8
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 2
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %72, i64 %75
  %77 = load float, float* %76, align 4
  %78 = fmul float %71, %77
  %79 = load float*, float** %7, align 8
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %79, i64 %82
  store float %78, float* %83, align 4
  %84 = load float, float* %6, align 4
  %85 = load float*, float** %7, align 8
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 3
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, float* %85, i64 %88
  %90 = load float, float* %89, align 4
  %91 = fmul float %84, %90
  %92 = load float*, float** %7, align 8
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 3
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %92, i64 %95
  store float %91, float* %96, align 4
  %97 = load float, float* %6, align 4
  %98 = load float*, float** %7, align 8
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, float* %98, i64 %101
  %103 = load float, float* %102, align 4
  %104 = fmul float %97, %103
  %105 = load float*, float** %7, align 8
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %105, i64 %108
  store float %104, float* %109, align 4
  br label %110

; <label>:110:                                    ; preds = %46
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 5
  store i32 %112, i32* %9, align 4
  br label %42

; <label>:113:                                    ; preds = %42
  br label %148

; <label>:114:                                    ; preds = %15
  %115 = load i32, i32* %8, align 4
  %116 = icmp sle i32 0, %115
  br i1 %116, label %117, label %118

; <label>:117:                                    ; preds = %114
  store i32 0, i32* %10, align 4
  br label %124

; <label>:118:                                    ; preds = %114
  %119 = load i32, i32* %5, align 4
  %120 = sub nsw i32 0, %119
  %121 = add nsw i32 %120, 1
  %122 = load i32, i32* %8, align 4
  %123 = mul nsw i32 %121, %122
  store i32 %123, i32* %10, align 4
  br label %124

; <label>:124:                                    ; preds = %118, %117
  store i32 0, i32* %9, align 4
  br label %125

; <label>:125:                                    ; preds = %144, %124
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %5, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %147

; <label>:129:                                    ; preds = %125
  %130 = load float, float* %6, align 4
  %131 = load float*, float** %7, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %131, i64 %133
  %135 = load float, float* %134, align 4
  %136 = fmul float %130, %135
  %137 = load float*, float** %7, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, float* %137, i64 %139
  store float %136, float* %140, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %141, %142
  store i32 %143, i32* %10, align 4
  br label %144

; <label>:144:                                    ; preds = %129
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %125

; <label>:147:                                    ; preds = %125
  br label %148

; <label>:148:                                    ; preds = %147, %113
  br label %149

; <label>:149:                                    ; preds = %148, %14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @_Z9r4_randomPi(i32*) #5 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store i32* %0, i32** %2, align 8
  store i32 4096, i32* %3, align 4
  store i32 494, i32* %8, align 4
  store i32 322, i32* %9, align 4
  store i32 2508, i32* %10, align 4
  store i32 2549, i32* %11, align 4
  store float 1.000000e+00, float* %12, align 4
  store float 0x3F30000000000000, float* %13, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %11, align 4
  %19 = mul nsw i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %3, align 4
  %22 = sdiv i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %6, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sub nsw i32 %23, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32*, i32** %2, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %11, align 4
  %33 = mul nsw i32 %31, %32
  %34 = add nsw i32 %28, %33
  %35 = load i32*, i32** %2, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = mul nsw i32 %37, %38
  %40 = add nsw i32 %34, %39
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %3, align 4
  %43 = sdiv i32 %41, %42
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %5, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sub nsw i32 %44, %47
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32*, i32** %2, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 %52, %53
  %55 = add nsw i32 %49, %54
  %56 = load i32*, i32** %2, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = mul nsw i32 %58, %59
  %61 = add nsw i32 %55, %60
  %62 = load i32*, i32** %2, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %9, align 4
  %66 = mul nsw i32 %64, %65
  %67 = add nsw i32 %61, %66
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %3, align 4
  %70 = sdiv i32 %68, %69
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %4, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sub nsw i32 %71, %74
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load i32*, i32** %2, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %11, align 4
  %81 = mul nsw i32 %79, %80
  %82 = add nsw i32 %76, %81
  %83 = load i32*, i32** %2, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %10, align 4
  %87 = mul nsw i32 %85, %86
  %88 = add nsw i32 %82, %87
  %89 = load i32*, i32** %2, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %9, align 4
  %93 = mul nsw i32 %91, %92
  %94 = add nsw i32 %88, %93
  %95 = load i32*, i32** %2, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %8, align 4
  %99 = mul nsw i32 %97, %98
  %100 = add nsw i32 %94, %99
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* %3, align 4
  %103 = srem i32 %101, %102
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = load i32*, i32** %2, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %5, align 4
  %108 = load i32*, i32** %2, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32*, i32** %2, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %7, align 4
  %114 = load i32*, i32** %2, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  store i32 %113, i32* %115, align 4
  %116 = load float, float* %13, align 4
  %117 = load i32, i32* %4, align 4
  %118 = sitofp i32 %117 to float
  %119 = load float, float* %13, align 4
  %120 = load i32, i32* %5, align 4
  %121 = sitofp i32 %120 to float
  %122 = load float, float* %13, align 4
  %123 = load i32, i32* %6, align 4
  %124 = sitofp i32 %123 to float
  %125 = load float, float* %13, align 4
  %126 = load i32, i32* %7, align 4
  %127 = sitofp i32 %126 to float
  %128 = fmul float %125, %127
  %129 = fadd float %124, %128
  %130 = fmul float %122, %129
  %131 = fadd float %121, %130
  %132 = fmul float %119, %131
  %133 = fadd float %118, %132
  %134 = fmul float %116, %133
  store float %134, float* %14, align 4
  %135 = load float, float* %14, align 4
  ret float %135
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #9

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #10

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

; Function Attrs: nounwind
declare dso_local %struct.tm* @localtime(i64*) #2

; Function Attrs: nounwind
declare dso_local i64 @strftime(i8*, i64, i8*, %struct.tm*) #2

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_linpackm.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nounwind }
attributes #10 = { nounwind readnone speculatable }
attributes #11 = { builtin }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 7.0.1 (Fedora 7.0.1-6.fc29)"}
