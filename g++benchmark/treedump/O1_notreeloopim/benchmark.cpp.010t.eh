
;; Function mainbase (_Z8mainbasev, funcdef_no=1888, decl_uid=44493, cgraph_uid=648, symbol_order=665)

mainbase ()
{
  struct __ostream_type & D.48284;
  struct basic_ostream & D.48283;
  struct __ostream_type & D.48282;
  struct basic_ostream & D.48281;
  struct basic_ostream & D.48280;
  struct basic_ostream & D.48279;
  float r;
  double elapsed_secs;
  clock_t end;
  clock_t begin;
  int p;
  int q;
  double timetake[5];
  long int count;

  q = 1;
  <D.48233>:
  if (q > 5) goto <D.44600>; else goto <D.48234>;
  <D.48234>:
  p = 1;
  <D.48235>:
  if (p > 5) goto <D.44602>; else goto <D.48236>;
  <D.48236>:
  begin = clock ();
  a = 1.0e+0;
  b = 1.0e+0;
  c = 1.0e+0;
  d = 1.0e+0;
  count = 0;
  if (p == 1) goto <D.48237>; else goto <D.48238>;
  <D.48237>:
  k = 1.0e+2;
  goto <D.48239>;
  <D.48238>:
  if (p == 2) goto <D.48240>; else goto <D.48241>;
  <D.48240>:
  k = 2.5e+2;
  goto <D.48242>;
  <D.48241>:
  if (p == 3) goto <D.48243>; else goto <D.48244>;
  <D.48243>:
  k = 5.0e+2;
  goto <D.48245>;
  <D.48244>:
  if (p == 4) goto <D.48246>; else goto <D.48247>;
  <D.48246>:
  k = 1.0e+3;
  goto <D.48248>;
  <D.48247>:
  if (p == 5) goto <D.48249>; else goto <D.48250>;
  <D.48249>:
  k = 1.5e+3;
  goto <D.48251>;
  <D.48250>:
  <D.48251>:
  <D.48248>:
  <D.48245>:
  <D.48242>:
  <D.48239>:
  <D.48252>:
  b.0_1 = b;
  k.1_2 = k;
  if (b.0_1 <= k.1_2) goto <D.48253>; else goto <D.44604>;
  <D.48253>:
  <D.48254>:
  a.2_3 = a;
  k.3_4 = k;
  if (a.2_3 <= k.3_4) goto <D.48255>; else goto <D.44606>;
  <D.48255>:
  a.4_5 = a;
  a.5_6 = a;
  _7 = a.4_5 * a.5_6;
  x = _7;
  b.6_8 = b;
  b.7_9 = b;
  _10 = b.6_8 * b.7_9;
  y = _10;
  x.8_11 = x;
  y.9_12 = y;
  _13 = x.8_11 + y.9_12;
  c = _13;
  b.10_14 = b;
  powcheck = b.10_14;
  <D.48256>:
  k.11_15 = k;
  _16 = k.11_15 * 1.4199999999999999289457264239899814128875732421875e+0;
  _17 = ceil (_16);
  powcheck.12_18 = powcheck;
  if (_17 >= powcheck.12_18) goto <D.48257>; else goto <D.44608>;
  <D.48257>:
  powcheck.13_19 = powcheck;
  powcheck.14_20 = powcheck;
  _21 = powcheck.13_19 * powcheck.14_20;
  c.15_22 = c;
  if (_21 == c.15_22) goto <D.48258>; else goto <D.48259>;
  <D.48258>:
  c.16_23 = c;
  d.17_24 = d;
  if (c.16_23 >= d.17_24) goto <D.48260>; else goto <D.48261>;
  <D.48260>:
  c.18_25 = c;
  d = c.18_25;
  goto <D.48262>;
  <D.48261>:
  <D.48262>:
  count = count + 1;
  k.19_26 = k;
  _27 = k.19_26 * 2.0e+0;
  _28 = _27 + 1.0e+0;
  powcheck = _28;
  goto <D.48263>;
  <D.48259>:
  powcheck.20_29 = powcheck;
  _30 = powcheck.20_29 + 1.0e+0;
  powcheck = _30;
  <D.48263>:
  goto <D.48256>;
  <D.44608>:
  a.21_31 = a;
  _32 = a.21_31 + 1.0e+0;
  a = _32;
  goto <D.48254>;
  <D.44606>:
  a = 1.0e+0;
  b.22_33 = b;
  _34 = b.22_33 + 1.0e+0;
  b = _34;
  goto <D.48252>;
  <D.44604>:
  end = clock ();
  _35 = end - begin;
  _36 = (double) _35;
  elapsed_secs = _36 / 1.0e+6;
  _37 = p + -1;
  timetake[_37] = elapsed_secs;
  if (p == 1) goto <D.48264>; else goto <D.48265>;
  <D.48264>:
  r = 3.0000000260770320892333984375e-3;
  goto <D.48266>;
  <D.48265>:
  <D.48266>:
  if (p == 2) goto <D.48267>; else goto <D.48268>;
  <D.48267>:
  r = 3.50000001490116119384765625e-2;
  goto <D.48269>;
  <D.48268>:
  <D.48269>:
  if (p == 3) goto <D.48270>; else goto <D.48271>;
  <D.48270>:
  r = 2.730000019073486328125e-1;
  goto <D.48272>;
  <D.48271>:
  <D.48272>:
  if (p == 4) goto <D.48273>; else goto <D.48274>;
  <D.48273>:
  r = 2.224999904632568359375e+0;
  goto <D.48275>;
  <D.48274>:
  <D.48275>:
  if (p == 5) goto <D.48276>; else goto <D.48277>;
  <D.48276>:
  r = 7.535999774932861328125e+0;
  goto <D.48278>;
  <D.48277>:
  <D.48278>:
  _38 = (double) r;
  _39 = p + -1;
  _40 = timetake[_39];
  _41 = _38 / _40;
  _42 = _41 * 2.0e+2;
  _43 = p + -1;
  _44 = (float) _42;
  score[_43] = _44;
  totalscore.23_45 = totalscore;
  _46 = (double) totalscore.23_45;
  _47 = p + -1;
  _48 = score[_47];
  _49 = (double) _48;
  _50 = _49 * 2.00000000000000011102230246251565404236316680908203125e-1;
  _51 = _46 + _50;
  _52 = (float) _51;
  totalscore = _52;
  _53 = p + -1;
  _54 = stagetime[_53];
  _55 = elapsed_secs * 2.00000000000000011102230246251565404236316680908203125e-1;
  _56 = p + -1;
  _57 = _54 + _55;
  stagetime[_56] = _57;
  _58 = q + -1;
  _59 = _58 * 5;
  _60 = p + _59;
  _61 = _60 * 4;
  D.48279 = std::basic_ostream<char>::operator<< (&cout, _61);
  _62 = D.48279;
  D.48280 = std::operator<< <std::char_traits<char> > (_62, " % complete!");
  _63 = D.48280;
  std::operator<< <std::char_traits<char> > (_63, 10);
  D.48281 = std::operator<< <std::char_traits<char> > (&cout, "Time taken for that stage:- ");
  _64 = D.48281;
  _65 = p + -1;
  _66 = timetake[_65];
  D.48282 = std::basic_ostream<char>::operator<< (_64, _66);
  _67 = D.48282;
  std::operator<< <std::char_traits<char> > (_67, 10);
  D.48283 = std::operator<< <std::char_traits<char> > (&cout, "Score obtained for that stage:- ");
  _68 = D.48283;
  _69 = p + -1;
  _70 = score[_69];
  _71 = _70 * 5.0e+0;
  D.48284 = std::basic_ostream<char>::operator<< (_68, _71);
  _72 = D.48284;
  std::operator<< <std::char_traits<char> > (_72, 10);
  p = p + 1;
  goto <D.48235>;
  <D.44602>:
  q = q + 1;
  goto <D.48233>;
  <D.44600>:
  timetake = {CLOBBER};
  return;
  <D.48285>:
  timetake = {CLOBBER};
  resx 1
}



;; Function std::basic_ostream<char>::operator<< (_ZNSolsEd, funcdef_no=2148, decl_uid=33054, cgraph_uid=908, symbol_order=925)

std::basic_ostream<char>::operator<< (struct basic_ostream * const this, double __f)
{
  struct __ostream_type & D.48289;
  struct __ostream_type & D.48287;

  D.48289 = std::basic_ostream<char>::_M_insert<double> (this, __f);
  D.48287 = D.48289;
  goto <D.48288>;
  <D.48288>:
  return D.48287;
}



;; Function std::operator<< <std::char_traits<char> > (_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc, funcdef_no=2146, decl_uid=33268, cgraph_uid=906, symbol_order=923)

std::operator<< <std::char_traits<char> > (struct basic_ostream & __out, const char * __s)
{
  struct basic_ostream & D.48293;

  if (__s == 0B) goto <D.48290>; else goto <D.48291>;
  <D.48290>:
  _1 = __out->_vptr.basic_ostream;
  _2 = _1 + 18446744073709551592;
  _3 = MEM[(long int *)_2];
  _4 = (sizetype) _3;
  _5 = __out + _4;
  std::basic_ios<char>::setstate (_5, 1);
  goto <D.48292>;
  <D.48291>:
  _6 = std::char_traits<char>::length (__s);
  _7 = (long int) _6;
  std::__ostream_insert<char, std::char_traits<char> > (__out, __s, _7);
  <D.48292>:
  D.48293 = __out;
  goto <D.48294>;
  <D.48294>:
  return D.48293;
}



;; Function std::basic_ios<char>::setstate (_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate, funcdef_no=2258, decl_uid=32204, cgraph_uid=1018, symbol_order=1035)

std::basic_ios<char>::setstate (struct basic_ios * const this, iostate __state)
{
  _Ios_Iostate D.48295;

  D.48295 = std::basic_ios<char>::rdstate (this);
  _1 = D.48295;
  _2 = std::operator| (_1, __state);
  std::basic_ios<char>::clear (this, _2);
  return;
}



;; Function std::basic_ios<char>::rdstate (_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv, funcdef_no=2293, decl_uid=32199, cgraph_uid=1053, symbol_order=1070)

std::basic_ios<char>::rdstate (const struct basic_ios * const this)
{
  iostate D.48296;

  D.48296 = this->D.32317._M_streambuf_state;
  goto <D.48297>;
  <D.48297>:
  return D.48296;
}



;; Function std::operator| (_ZStorSt12_Ios_IostateS_, funcdef_no=1147, decl_uid=26730, cgraph_uid=387, symbol_order=389)

std::operator| (_Ios_Iostate __a, _Ios_Iostate __b)
{
  _Ios_Iostate D.48298;

  D.48298 = __a | __b;
  goto <D.48299>;
  <D.48299>:
  return D.48298;
}



;; Function std::char_traits<char>::length (_ZNSt11char_traitsIcE6lengthEPKc, funcdef_no=397, decl_uid=11285, cgraph_uid=73, symbol_order=74)

std::char_traits<char>::length (const char_type * __s)
{
  size_t D.48300;

  D.48300 = __builtin_strlen (__s);
  goto <D.48301>;
  <D.48301>:
  return D.48300;
}



;; Function std::basic_ostream<char>::operator<< (_ZNSolsEf, funcdef_no=2149, decl_uid=33057, cgraph_uid=909, symbol_order=926)

std::basic_ostream<char>::operator<< (struct basic_ostream * const this, float __f)
{
  struct __ostream_type & D.48304;
  struct __ostream_type & D.48302;

  _1 = (double) __f;
  D.48304 = std::basic_ostream<char>::_M_insert<double> (this, _1);
  D.48302 = D.48304;
  goto <D.48303>;
  <D.48303>:
  return D.48302;
}



;; Function std::operator<< <std::char_traits<char> > (_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c, funcdef_no=2147, decl_uid=33238, cgraph_uid=907, symbol_order=924)

std::operator<< <std::char_traits<char> > (struct basic_ostream & __out, char __c)
{
  struct basic_ostream & D.48307;
  struct basic_ostream & D.48305;

  D.48307 = std::__ostream_insert<char, std::char_traits<char> > (__out, &__c, 1);
  D.48305 = D.48307;
  goto <D.48306>;
  <D.48306>:
  return D.48305;
}



;; Function main (main, funcdef_no=1889, decl_uid=44612, cgraph_uid=652, symbol_order=669)

main (int argc, char * * argv)
{
  struct basic_ostream & D.48321;
  struct __ostream_type & D.48320;
  struct basic_ostream & D.48319;
  struct FILE * D.48312;
  struct exception e;
  struct FILE * F;
  int D.48310;

  if (argc != 3) goto <D.48308>; else goto <D.48309>;
  <D.48308>:
  __builtin_puts (&"Arguments: filename optimisationflag"[0]);
  exit (-1);
  <D.48309>:
  mainbase ();
  _1 = argv + 8;
  _2 = *_1;
  D.48312 = fopen (_2, "a");
  F = D.48312;
  totalscore.24_3 = totalscore;
  _4 = (double) totalscore.24_3;
  _5 = argv + 16;
  _6 = *_5;
  fprintf (F, "%s %lf\n", _6, _4);
  fclose (F);
  <D.48317>:
  D.48319 = std::operator<< <std::char_traits<char> > (&cout, "Your system has scored a total of ");
  _10 = D.48319;
  totalscore.25_11 = totalscore;
  D.48320 = std::basic_ostream<char>::operator<< (_10, totalscore.25_11);
  _12 = D.48320;
  D.48321 = std::operator<< <std::char_traits<char> > (_12, " points!");
  _13 = D.48321;
  std::operator<< <std::char_traits<char> > (_13, 10);
  D.48310 = 0;
  goto <D.48311>;
  <D.48311>:
  return D.48310;
  <D.48318>:
  eh_dispatch 1
  resx 1
  <D.48316>:
  _7 = __builtin_eh_pointer (1);
  _8 = __cxa_get_exception_ptr (_7);
  std::exception::exception (&e, _8);
  _9 = __builtin_eh_pointer (1);
  __cxa_begin_catch (_9);
  std::operator<< <std::char_traits<char> > (&cerr, "File error! \n");
  std::exception::~exception (&e);
  __cxa_end_catch ();
  e = {CLOBBER};
  goto <D.48317>;
  <D.48313>:
  std::exception::~exception (&e);
  resx 5
  <D.48314>:
  __cxa_end_catch ();
  resx 3
  <D.48315>:
  e = {CLOBBER};
  resx 2
}



;; Function std::exception::exception (_ZNSt9exceptionC2ERKS_, funcdef_no=1891, decl_uid=3171, cgraph_uid=650, symbol_order=667)

std::exception::exception (struct exception * const this, const struct exception & D.3173)
{
  MEM[(struct  &)this] = {CLOBBER};
  _1 = &_ZTVSt9exception + 16;
  this->_vptr.exception = _1;
  return;
}



;; Function _GLOBAL__sub_I_check (_GLOBAL__sub_I_check, funcdef_no=2397, decl_uid=48231, cgraph_uid=1157, symbol_order=1366)

_GLOBAL__sub_I_check ()
{
  __static_initialization_and_destruction_0 (1, 65535);
  return;
}



;; Function __static_initialization_and_destruction_0 (_Z41__static_initialization_and_destruction_0ii, funcdef_no=2396, decl_uid=48223, cgraph_uid=1156, symbol_order=1223)

__static_initialization_and_destruction_0 (int __initialize_p, int __priority)
{
  if (__initialize_p == 1) goto <D.48322>; else goto <D.48323>;
  <D.48322>:
  if (__priority == 65535) goto <D.48324>; else goto <D.48325>;
  <D.48324>:
  std::ios_base::Init::Init (&__ioinit);
  __cxa_atexit (__dt_comp , &__ioinit, &__dso_handle);
  goto <D.48326>;
  <D.48325>:
  <D.48326>:
  goto <D.48327>;
  <D.48323>:
  <D.48327>:
  return;
}


