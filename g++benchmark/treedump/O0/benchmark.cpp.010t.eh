
;; Function mainbase (_Z8mainbasev, funcdef_no=1866, decl_uid=44408, cgraph_uid=626, symbol_order=643)

mainbase ()
{
  struct __ostream_type & D.48194;
  struct basic_ostream & D.48193;
  struct __ostream_type & D.48192;
  struct basic_ostream & D.48191;
  struct basic_ostream & D.48190;
  struct basic_ostream & D.48189;
  float r;
  double elapsed_secs;
  clock_t end;
  clock_t begin;
  int p;
  int q;
  double timetake[5];
  long int count;

  q = 1;
  <D.48143>:
  if (q > 5) goto <D.44515>; else goto <D.48144>;
  <D.48144>:
  p = 1;
  <D.48145>:
  if (p > 5) goto <D.44517>; else goto <D.48146>;
  <D.48146>:
  begin = clock ();
  a = 1.0e+0;
  b = 1.0e+0;
  c = 1.0e+0;
  d = 1.0e+0;
  count = 0;
  if (p == 1) goto <D.48147>; else goto <D.48148>;
  <D.48147>:
  k = 1.0e+2;
  goto <D.48149>;
  <D.48148>:
  if (p == 2) goto <D.48150>; else goto <D.48151>;
  <D.48150>:
  k = 2.5e+2;
  goto <D.48152>;
  <D.48151>:
  if (p == 3) goto <D.48153>; else goto <D.48154>;
  <D.48153>:
  k = 5.0e+2;
  goto <D.48155>;
  <D.48154>:
  if (p == 4) goto <D.48156>; else goto <D.48157>;
  <D.48156>:
  k = 1.0e+3;
  goto <D.48158>;
  <D.48157>:
  if (p == 5) goto <D.48159>; else goto <D.48160>;
  <D.48159>:
  k = 1.5e+3;
  goto <D.48161>;
  <D.48160>:
  <D.48161>:
  <D.48158>:
  <D.48155>:
  <D.48152>:
  <D.48149>:
  <D.48162>:
  b.0_1 = b;
  k.1_2 = k;
  if (b.0_1 <= k.1_2) goto <D.48163>; else goto <D.44519>;
  <D.48163>:
  <D.48164>:
  a.2_3 = a;
  k.3_4 = k;
  if (a.2_3 <= k.3_4) goto <D.48165>; else goto <D.44521>;
  <D.48165>:
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
  <D.48166>:
  k.11_15 = k;
  _16 = k.11_15 * 1.4199999999999999289457264239899814128875732421875e+0;
  _17 = ceil (_16);
  powcheck.12_18 = powcheck;
  if (_17 >= powcheck.12_18) goto <D.48167>; else goto <D.44523>;
  <D.48167>:
  powcheck.13_19 = powcheck;
  powcheck.14_20 = powcheck;
  _21 = powcheck.13_19 * powcheck.14_20;
  c.15_22 = c;
  if (_21 == c.15_22) goto <D.48168>; else goto <D.48169>;
  <D.48168>:
  c.16_23 = c;
  d.17_24 = d;
  if (c.16_23 >= d.17_24) goto <D.48170>; else goto <D.48171>;
  <D.48170>:
  c.18_25 = c;
  d = c.18_25;
  goto <D.48172>;
  <D.48171>:
  <D.48172>:
  count = count + 1;
  k.19_26 = k;
  _27 = k.19_26 * 2.0e+0;
  _28 = _27 + 1.0e+0;
  powcheck = _28;
  goto <D.48173>;
  <D.48169>:
  powcheck.20_29 = powcheck;
  _30 = powcheck.20_29 + 1.0e+0;
  powcheck = _30;
  <D.48173>:
  goto <D.48166>;
  <D.44523>:
  a.21_31 = a;
  _32 = a.21_31 + 1.0e+0;
  a = _32;
  goto <D.48164>;
  <D.44521>:
  a = 1.0e+0;
  b.22_33 = b;
  _34 = b.22_33 + 1.0e+0;
  b = _34;
  goto <D.48162>;
  <D.44519>:
  end = clock ();
  _35 = end - begin;
  _36 = (double) _35;
  elapsed_secs = _36 / 1.0e+6;
  _37 = p + -1;
  timetake[_37] = elapsed_secs;
  if (p == 1) goto <D.48174>; else goto <D.48175>;
  <D.48174>:
  r = 3.0000000260770320892333984375e-3;
  goto <D.48176>;
  <D.48175>:
  <D.48176>:
  if (p == 2) goto <D.48177>; else goto <D.48178>;
  <D.48177>:
  r = 3.50000001490116119384765625e-2;
  goto <D.48179>;
  <D.48178>:
  <D.48179>:
  if (p == 3) goto <D.48180>; else goto <D.48181>;
  <D.48180>:
  r = 2.730000019073486328125e-1;
  goto <D.48182>;
  <D.48181>:
  <D.48182>:
  if (p == 4) goto <D.48183>; else goto <D.48184>;
  <D.48183>:
  r = 2.224999904632568359375e+0;
  goto <D.48185>;
  <D.48184>:
  <D.48185>:
  if (p == 5) goto <D.48186>; else goto <D.48187>;
  <D.48186>:
  r = 7.535999774932861328125e+0;
  goto <D.48188>;
  <D.48187>:
  <D.48188>:
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
  D.48189 = std::basic_ostream<char>::operator<< (&cout, _61);
  _62 = D.48189;
  D.48190 = std::operator<< <std::char_traits<char> > (_62, " % complete!");
  _63 = D.48190;
  std::operator<< <std::char_traits<char> > (_63, 10);
  D.48191 = std::operator<< <std::char_traits<char> > (&cout, "Time taken for that stage:- ");
  _64 = D.48191;
  _65 = p + -1;
  _66 = timetake[_65];
  D.48192 = std::basic_ostream<char>::operator<< (_64, _66);
  _67 = D.48192;
  std::operator<< <std::char_traits<char> > (_67, 10);
  D.48193 = std::operator<< <std::char_traits<char> > (&cout, "Score obtained for that stage:- ");
  _68 = D.48193;
  _69 = p + -1;
  _70 = score[_69];
  _71 = _70 * 5.0e+0;
  D.48194 = std::basic_ostream<char>::operator<< (_68, _71);
  _72 = D.48194;
  std::operator<< <std::char_traits<char> > (_72, 10);
  p = p + 1;
  goto <D.48145>;
  <D.44517>:
  q = q + 1;
  goto <D.48143>;
  <D.44515>:
  timetake = {CLOBBER};
  return;
  <D.48195>:
  timetake = {CLOBBER};
  resx 1
}



;; Function main (main, funcdef_no=1867, decl_uid=44527, cgraph_uid=630, symbol_order=647)

main (int argc, char * * argv)
{
  struct basic_ostream & D.48210;
  struct __ostream_type & D.48209;
  struct basic_ostream & D.48208;
  struct FILE * D.48201;
  struct exception e;
  struct FILE * F;
  int D.48199;

  if (argc != 3) goto <D.48197>; else goto <D.48198>;
  <D.48197>:
  __builtin_puts (&"Arguments: filename optimisationflag"[0]);
  exit (-1);
  <D.48198>:
  mainbase ();
  _1 = argv + 8;
  _2 = *_1;
  D.48201 = fopen (_2, "a");
  F = D.48201;
  totalscore.24_3 = totalscore;
  _4 = (double) totalscore.24_3;
  _5 = argv + 16;
  _6 = *_5;
  fprintf (F, "%s %lf\n", _6, _4);
  fclose (F);
  <D.48206>:
  D.48208 = std::operator<< <std::char_traits<char> > (&cout, "Your system has scored a total of ");
  _10 = D.48208;
  totalscore.25_11 = totalscore;
  D.48209 = std::basic_ostream<char>::operator<< (_10, totalscore.25_11);
  _12 = D.48209;
  D.48210 = std::operator<< <std::char_traits<char> > (_12, " points!");
  _13 = D.48210;
  std::operator<< <std::char_traits<char> > (_13, 10);
  D.48199 = 0;
  goto <D.48200>;
  <D.48200>:
  return D.48199;
  <D.48207>:
  eh_dispatch 1
  resx 1
  <D.48205>:
  _7 = __builtin_eh_pointer (1);
  _8 = __cxa_get_exception_ptr (_7);
  std::exception::exception (&e, _8);
  _9 = __builtin_eh_pointer (1);
  __cxa_begin_catch (_9);
  std::operator<< <std::char_traits<char> > (&cerr, "File error! \n");
  std::exception::~exception (&e);
  __cxa_end_catch ();
  e = {CLOBBER};
  goto <D.48206>;
  <D.48202>:
  std::exception::~exception (&e);
  resx 5
  <D.48203>:
  __cxa_end_catch ();
  resx 3
  <D.48204>:
  e = {CLOBBER};
  resx 2
}



;; Function std::exception::exception (_ZNSt9exceptionC2ERKS_, funcdef_no=1869, decl_uid=3156, cgraph_uid=628, symbol_order=645)

std::exception::exception (struct exception * const this, const struct exception & D.3158)
{
  MEM[(struct  &)this] = {CLOBBER};
  _1 = &_ZTVSt9exception + 16;
  this->_vptr.exception = _1;
  return;
}



;; Function __static_initialization_and_destruction_0 (_Z41__static_initialization_and_destruction_0ii, funcdef_no=2375, decl_uid=48133, cgraph_uid=1135, symbol_order=1202)

__static_initialization_and_destruction_0 (int __initialize_p, int __priority)
{
  if (__initialize_p == 1) goto <D.48211>; else goto <D.48212>;
  <D.48211>:
  if (__priority == 65535) goto <D.48213>; else goto <D.48214>;
  <D.48213>:
  std::ios_base::Init::Init (&__ioinit);
  __cxa_atexit (__dt_comp , &__ioinit, &__dso_handle);
  goto <D.48215>;
  <D.48214>:
  <D.48215>:
  goto <D.48216>;
  <D.48212>:
  <D.48216>:
  return;
}



;; Function _GLOBAL__sub_I_check (_GLOBAL__sub_I_check, funcdef_no=2376, decl_uid=48141, cgraph_uid=1136, symbol_order=1345)

_GLOBAL__sub_I_check ()
{
  __static_initialization_and_destruction_0 (1, 65535);
  return;
}


