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
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }

$_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_ = comdat any

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
@.str = private unnamed_addr constant [30 x i8] c"Type 1 to start benchmarking.\00", align 1
@_ZTIPc = external dso_local constant i8*
@_ZTIi = external dso_local constant i8*
@_ZSt3cin = external dso_local global %"class.std::basic_istream", align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid number, try again \0A\00", align 1
@_ZTIPKc = external dso_local constant i8*
@.str.2 = private unnamed_addr constant [41 x i8] c"Invalid entry. Program will close now. \0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" % complete!\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Time taken for that stage:- \00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Score obtained for that stage:- \00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Average time taken for stage \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" is \00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Your system has scored a total of \00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c" points!\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
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
define dso_local void @_Z9selectionv() #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca i32, align 4
  %2 = alloca i8*
  %3 = alloca i32
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  br label %6

; <label>:6:                                      ; preds = %37, %0
  %7 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0))
  %8 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* dereferenceable(272) %7, i8 signext 10)
  %9 = invoke dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %1)
          to label %10 unwind label %22

; <label>:10:                                     ; preds = %6
  %11 = load i8*, i8** bitcast (%"class.std::basic_istream"* @_ZSt3cin to i8**), align 8
  %12 = getelementptr i8, i8* %11, i64 -24
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_istream"* @_ZSt3cin to i8*), i64 %14
  %16 = bitcast i8* %15 to %"class.std::basic_ios"*
  %17 = invoke zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv(%"class.std::basic_ios"* %16)
          to label %18 unwind label %22

; <label>:18:                                     ; preds = %10
  br i1 %17, label %19, label %50

; <label>:19:                                     ; preds = %18
  %20 = call i8* @__cxa_allocate_exception(i64 4) #3
  %21 = bitcast i8* %20 to i32*
  store i32 2, i32* %21, align 16
  invoke void @__cxa_throw(i8* %20, i8* bitcast (i8** @_ZTIi to i8*), i8* null) #10
          to label %71 unwind label %22

; <label>:22:                                     ; preds = %53, %19, %10, %6
  %23 = landingpad { i8*, i32 }
          catch i8* bitcast (i8** @_ZTIPc to i8*)
          catch i8* bitcast (i8** @_ZTIi to i8*)
  %24 = extractvalue { i8*, i32 } %23, 0
  store i8* %24, i8** %2, align 8
  %25 = extractvalue { i8*, i32 } %23, 1
  store i32 %25, i32* %3, align 4
  br label %26

; <label>:26:                                     ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @llvm.eh.typeid.for(i8* bitcast (i8** @_ZTIPc to i8*)) #3
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %38

; <label>:30:                                     ; preds = %26
  %31 = load i8*, i8** %2, align 8
  %32 = call i8* @__cxa_begin_catch(i8* %31) #3
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* %33)
          to label %35 unwind label %61

; <label>:35:                                     ; preds = %30
  %36 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* dereferenceable(272) %34, i8 signext 10)
          to label %37 unwind label %61

; <label>:37:                                     ; preds = %35
  call void @__cxa_end_catch() #3
  br label %6

; <label>:38:                                     ; preds = %26
  %39 = call i32 @llvm.eh.typeid.for(i8* bitcast (i8** @_ZTIi to i8*)) #3
  %40 = icmp eq i32 %27, %39
  br i1 %40, label %41, label %66

; <label>:41:                                     ; preds = %38
  %42 = load i8*, i8** %2, align 8
  %43 = call i8* @__cxa_begin_catch(i8* %42) #3
  %44 = bitcast i8* %43 to i32*
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %4, align 4
  %46 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0))
          to label %47 unwind label %57

; <label>:47:                                     ; preds = %41
  %48 = invoke i32 @getchar()
          to label %49 unwind label %57

; <label>:49:                                     ; preds = %47
  call void @exit(i32 1) #11
  unreachable

; <label>:50:                                     ; preds = %18
  %51 = load i32, i32* %1, align 4
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %56

; <label>:53:                                     ; preds = %50
  %54 = call i8* @__cxa_allocate_exception(i64 8) #3
  %55 = bitcast i8* %54 to i8**
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i8** %55, align 16
  invoke void @__cxa_throw(i8* %54, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #10
          to label %71 unwind label %22

; <label>:56:                                     ; preds = %50
  br label %65

; <label>:57:                                     ; preds = %47, %41
  %58 = landingpad { i8*, i32 }
          cleanup
  %59 = extractvalue { i8*, i32 } %58, 0
  store i8* %59, i8** %2, align 8
  %60 = extractvalue { i8*, i32 } %58, 1
  store i32 %60, i32* %3, align 4
  call void @__cxa_end_catch() #3
  br label %66

; <label>:61:                                     ; preds = %35, %30
  %62 = landingpad { i8*, i32 }
          cleanup
  %63 = extractvalue { i8*, i32 } %62, 0
  store i8* %63, i8** %2, align 8
  %64 = extractvalue { i8*, i32 } %62, 1
  store i32 %64, i32* %3, align 4
  call void @__cxa_end_catch() #3
  br label %66

; <label>:65:                                     ; preds = %56
  ret void

; <label>:66:                                     ; preds = %61, %57, %38
  %67 = load i8*, i8** %2, align 8
  %68 = load i32, i32* %3, align 4
  %69 = insertvalue { i8*, i32 } undef, i8* %67, 0
  %70 = insertvalue { i8*, i32 } %69, i32 %68, 1
  resume { i8*, i32 } %70

; <label>:71:                                     ; preds = %53, %19
  unreachable
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* dereferenceable(272), i8 signext) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dso_local dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"*, i32* dereferenceable(4)) #1

declare dso_local i32 @__gxx_personality_v0(...)

declare dso_local zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv(%"class.std::basic_ios"*) #1

declare dso_local i8* @__cxa_allocate_exception(i64)

declare dso_local void @__cxa_throw(i8*, i8*, i8*)

; Function Attrs: nounwind readnone
declare i32 @llvm.eh.typeid.for(i8*) #5

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local i32 @getchar() #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #6

declare dso_local void @__cxa_end_catch()

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
  %171 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %170, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  %172 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* dereferenceable(272) %171, i8 signext 10)
  %173 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  %174 = load i32, i32* %4, align 4
  %175 = sub nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [5 x double], [5 x double]* %2, i64 0, i64 %176
  %178 = load double, double* %177, align 8
  %179 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %173, double %178)
  %180 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* dereferenceable(272) %179, i8 signext 10)
  %181 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0))
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
declare double @llvm.ceil.f64(double) #7

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local double @_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(double, i32) #8 comdat {
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

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"*, double) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"*, float) #1

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main() #9 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @_Z9selectionv()
  call void @_Z8mainbasev()
  store i32 0, i32* %2, align 4
  br label %3

; <label>:3:                                      ; preds = %18, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 5
  br i1 %5, label %6, label %21

; <label>:6:                                      ; preds = %3
  %7 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0))
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %8, 1
  %10 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %7, i32 %9)
  %11 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0))
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [5 x double], [5 x double]* @stagetime, i64 0, i64 %13
  %15 = load double, double* %14, align 8
  %16 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %11, double %15)
  %17 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* dereferenceable(272) %16, i8 signext 10)
  br label %18

; <label>:18:                                     ; preds = %6
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %3

; <label>:21:                                     ; preds = %3
  %22 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0))
  %23 = load float, float* @totalscore, align 4
  %24 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* %22, float %23)
  %25 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0))
  %26 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* dereferenceable(272) %25, i8 signext 10)
  %27 = call i32 @system(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0))
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @system(i8*) #1

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
attributes #5 = { nounwind readnone }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone speculatable }
attributes #8 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 7.0.1 (Fedora 7.0.1-6.fc29)"}
