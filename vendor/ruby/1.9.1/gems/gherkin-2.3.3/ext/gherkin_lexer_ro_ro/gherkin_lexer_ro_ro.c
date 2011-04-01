
#line 1 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"
#include <assert.h>
#include <ruby.h>

#if defined(_WIN32)
#include <stddef.h>
#endif

#ifdef HAVE_RUBY_RE_H
#include <ruby/re.h>
#else
#include <re.h>
#endif

#ifdef HAVE_RUBY_ENCODING_H
#include <ruby/encoding.h>
#define ENCODED_STR_NEW(ptr, len) \
    rb_enc_str_new(ptr, len, rb_utf8_encoding())
#else
#define ENCODED_STR_NEW(ptr, len) \
    rb_str_new(ptr, len)
#endif

#ifndef RSTRING_PTR
#define RSTRING_PTR(s) (RSTRING(s)->ptr)
#endif

#ifndef RSTRING_LEN
#define RSTRING_LEN(s) (RSTRING(s)->len)
#endif

#define DATA_GET(FROM, TYPE, NAME) \
  Data_Get_Struct(FROM, TYPE, NAME); \
  if (NAME == NULL) { \
    rb_raise(rb_eArgError, "NULL found for " # NAME " when it shouldn't be."); \
  }
 
typedef struct lexer_state {
  int content_len;
  int line_number;
  int current_line;
  int start_col;
  size_t mark;
  size_t keyword_start;
  size_t keyword_end;
  size_t next_keyword_start;
  size_t content_start;
  size_t content_end;
  size_t query_start;
  size_t last_newline;
  size_t final_newline;
} lexer_state;

static VALUE mGherkin;
static VALUE mGherkinLexer;
static VALUE mCLexer;
static VALUE cI18nLexer;
static VALUE rb_eGherkinLexingError;

#define LEN(AT, P) (P - data - lexer->AT)
#define MARK(M, P) (lexer->M = (P) - data)
#define PTR_TO(P) (data + lexer->P)

#define STORE_KW_END_CON(EVENT) \
  store_multiline_kw_con(listener, # EVENT, \
    PTR_TO(keyword_start), LEN(keyword_start, PTR_TO(keyword_end - 1)), \
    PTR_TO(content_start), LEN(content_start, PTR_TO(content_end)), \
    lexer->current_line, lexer->start_col); \
    if (lexer->content_end != 0) { \
      p = PTR_TO(content_end - 1); \
    } \
    lexer->content_end = 0

#define STORE_ATTR(ATTR) \
    store_attr(listener, # ATTR, \
      PTR_TO(content_start), LEN(content_start, p), \
      lexer->line_number)


#line 241 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"


/** Data **/

#line 87 "ext/gherkin_lexer_ro_ro/gherkin_lexer_ro_ro.c"
static const char _lexer_actions[] = {
	0, 1, 0, 1, 1, 1, 2, 1, 
	3, 1, 4, 1, 5, 1, 6, 1, 
	7, 1, 8, 1, 9, 1, 10, 1, 
	11, 1, 14, 1, 15, 1, 16, 1, 
	17, 1, 18, 1, 19, 1, 20, 1, 
	21, 2, 1, 16, 2, 11, 0, 2, 
	12, 13, 2, 15, 0, 2, 15, 2, 
	2, 15, 14, 2, 15, 17, 2, 16, 
	4, 2, 16, 5, 2, 16, 6, 2, 
	16, 7, 2, 16, 8, 2, 16, 14, 
	2, 18, 19, 2, 20, 0, 2, 20, 
	2, 2, 20, 14, 2, 20, 17, 3, 
	3, 12, 13, 3, 9, 12, 13, 3, 
	10, 12, 13, 3, 11, 12, 13, 3, 
	12, 13, 16, 3, 15, 12, 13, 4, 
	1, 12, 13, 16, 4, 15, 0, 12, 
	13
};

static const short _lexer_key_offsets[] = {
	0, 0, 18, 19, 20, 21, 22, 24, 
	41, 42, 43, 47, 52, 57, 62, 67, 
	71, 75, 77, 78, 79, 80, 81, 82, 
	83, 84, 85, 86, 87, 88, 89, 90, 
	91, 92, 97, 104, 109, 110, 111, 112, 
	113, 115, 116, 117, 118, 119, 120, 121, 
	122, 123, 124, 125, 126, 127, 128, 142, 
	144, 146, 148, 165, 166, 168, 169, 170, 
	171, 172, 173, 174, 175, 176, 177, 178, 
	179, 180, 181, 188, 190, 192, 194, 196, 
	198, 200, 202, 204, 206, 208, 210, 212, 
	214, 216, 218, 220, 221, 222, 223, 224, 
	225, 226, 227, 228, 229, 230, 231, 232, 
	233, 234, 235, 236, 237, 238, 249, 251, 
	253, 255, 257, 259, 261, 263, 265, 267, 
	269, 271, 273, 275, 277, 279, 281, 283, 
	285, 287, 289, 291, 293, 295, 297, 299, 
	301, 303, 305, 307, 309, 311, 313, 315, 
	317, 319, 321, 323, 325, 327, 329, 331, 
	333, 335, 337, 339, 341, 343, 345, 347, 
	349, 351, 353, 356, 358, 360, 362, 364, 
	366, 368, 370, 372, 374, 376, 378, 379, 
	380, 381, 382, 383, 384, 385, 387, 388, 
	389, 403, 405, 407, 409, 411, 413, 415, 
	417, 419, 421, 423, 425, 427, 429, 431, 
	433, 435, 437, 439, 441, 443, 445, 448, 
	450, 452, 454, 456, 458, 460, 462, 464, 
	466, 468, 470, 472, 475, 477, 479, 481, 
	483, 485, 487, 489, 491, 493, 495, 497, 
	499, 501, 503, 505, 507, 509, 511, 513, 
	515, 517, 519, 521, 523, 526, 528, 530, 
	532, 534, 536, 538, 540, 542, 544, 546, 
	548, 549, 550, 551, 552, 553, 554, 555, 
	556, 557, 558, 559, 560, 561, 562, 576, 
	578, 580, 582, 584, 586, 588, 590, 592, 
	594, 596, 598, 600, 602, 604, 606, 608, 
	610, 612, 614, 616, 618, 620, 622, 624, 
	626, 628, 631, 633, 635, 637, 639, 641, 
	643, 645, 647, 649, 651, 653, 655, 657, 
	659, 661, 663, 665, 667, 669, 671, 673, 
	675, 677, 679, 681, 685, 691, 694, 696, 
	702, 719, 721, 723, 725, 727, 729, 731, 
	733, 735, 737, 739, 741, 743, 745, 747, 
	749, 751, 753, 755, 757, 759, 761, 763, 
	765, 768, 770, 772, 774, 776, 778, 780, 
	782, 784, 786, 788, 790, 792, 794, 796, 
	798, 800, 802, 804, 806, 808, 810, 812, 
	814, 816, 818, 821, 823, 825, 827, 829, 
	831, 833, 835, 837, 839, 841, 843, 844, 
	845
};

static const char _lexer_trans_keys[] = {
	-56, -17, 10, 32, 34, 35, 37, 42, 
	64, 65, 67, 68, 69, 70, 83, 124, 
	9, 13, -104, 105, 32, 10, 10, 13, 
	-56, 10, 32, 34, 35, 37, 42, 64, 
	65, 67, 68, 69, 70, 83, 124, 9, 
	13, 34, 34, 10, 32, 9, 13, 10, 
	32, 34, 9, 13, 10, 32, 34, 9, 
	13, 10, 32, 34, 9, 13, 10, 32, 
	34, 9, 13, 10, 32, 9, 13, 10, 
	32, 9, 13, 10, 13, 10, 95, 70, 
	69, 65, 84, 85, 82, 69, 95, 69, 
	78, 68, 95, 37, 13, 32, 64, 9, 
	10, 9, 10, 13, 32, 64, 11, 12, 
	10, 32, 64, 9, 13, 116, 117, 110, 
	99, -61, 111, -94, 110, 100, 110, 100, 
	105, -59, -93, 105, 105, 58, 10, 10, 
	-56, 10, 32, 35, 37, 42, 64, 65, 
	67, 68, 70, 83, 9, 13, -104, 10, 
	10, 105, 10, 32, -56, 10, 32, 34, 
	35, 37, 42, 64, 65, 67, 68, 69, 
	70, 83, 124, 9, 13, 97, 99, 114, 
	-60, -125, 120, 101, 109, 112, 108, 101, 
	108, 101, 58, 10, 10, 10, 32, 35, 
	70, 124, 9, 13, 10, 117, 10, 110, 
	10, 99, -56, 10, -101, 10, 10, 105, 
	10, 111, 10, 110, 10, 97, 10, 108, 
	10, 105, 10, 116, 10, 97, 10, 116, 
	10, 101, 10, 58, 117, 110, 99, -56, 
	-101, 105, 111, 110, 97, 108, 105, 116, 
	97, 116, 101, 58, 10, 10, 10, 32, 
	35, 37, 64, 67, 69, 70, 83, 9, 
	13, 10, 95, 10, 70, 10, 69, 10, 
	65, 10, 84, 10, 85, 10, 82, 10, 
	69, 10, 95, 10, 69, 10, 78, 10, 
	68, 10, 95, 10, 37, 10, 111, 10, 
	110, 10, 100, 10, 105, -59, 10, -93, 
	10, 10, 105, 10, 105, 10, 58, 10, 
	120, 10, 101, 10, 109, 10, 112, 10, 
	108, 10, 101, 10, 108, 10, 101, 10, 
	117, 10, 110, 10, 99, -56, 10, -101, 
	10, 10, 105, 10, 111, 10, 110, 10, 
	97, 10, 108, 10, 105, 10, 116, 10, 
	97, 10, 116, 10, 99, 10, 101, 10, 
	110, 10, 97, 10, 114, 10, 105, 10, 
	117, 10, 58, 108, 10, 32, 10, 100, 
	10, 101, 10, 32, -59, 10, -97, 10, 
	10, 97, 10, 98, 10, 108, 10, 111, 
	10, 110, 99, 101, 110, 97, 114, 105, 
	117, 58, 108, 10, 10, -56, 10, 32, 
	35, 37, 42, 64, 65, 67, 68, 70, 
	83, 9, 13, -104, 10, 10, 105, 10, 
	32, 10, 95, 10, 70, 10, 69, 10, 
	65, 10, 84, 10, 85, 10, 82, 10, 
	69, 10, 95, 10, 69, 10, 78, 10, 
	68, 10, 95, 10, 37, 10, 116, 10, 
	117, 10, 110, 10, 99, -61, 10, 111, 
	-94, 10, 10, 110, 10, 100, 10, 110, 
	10, 100, 10, 105, -59, 10, -93, 10, 
	10, 105, 10, 105, 10, 58, 10, 97, 
	10, 99, 114, -60, 10, -125, 10, 10, 
	117, 10, 110, 10, 99, -56, 10, -101, 
	10, 10, 105, 10, 111, 10, 110, 10, 
	97, 10, 108, 10, 105, 10, 116, 10, 
	97, 10, 116, 10, 101, 10, 99, 10, 
	101, 10, 110, 10, 97, 10, 114, 10, 
	105, 10, 117, 10, 58, 108, 10, 32, 
	10, 100, 10, 101, 10, 32, -59, 10, 
	-97, 10, 10, 97, 10, 98, 10, 108, 
	10, 111, 10, 110, 32, 100, 101, 32, 
	-59, -97, 97, 98, 108, 111, 110, 58, 
	10, 10, -56, 10, 32, 35, 37, 42, 
	64, 65, 67, 68, 70, 83, 9, 13, 
	-104, 10, 10, 105, 10, 32, 10, 95, 
	10, 70, 10, 69, 10, 65, 10, 84, 
	10, 85, 10, 82, 10, 69, 10, 95, 
	10, 69, 10, 78, 10, 68, 10, 95, 
	10, 37, 10, 116, 10, 117, 10, 110, 
	10, 99, -61, 10, -94, 10, 10, 110, 
	10, 100, 10, 97, 10, 99, 114, -60, 
	10, -125, 10, 10, 117, 10, 110, 10, 
	99, -56, 10, -101, 10, 10, 105, 10, 
	111, 10, 110, 10, 97, 10, 108, 10, 
	105, 10, 116, 10, 97, 10, 116, 10, 
	101, 10, 58, 10, 99, 10, 101, 10, 
	110, 10, 97, 10, 114, 10, 105, 10, 
	117, 32, 124, 9, 13, 10, 32, 92, 
	124, 9, 13, 10, 92, 124, 10, 92, 
	10, 32, 92, 124, 9, 13, -56, 10, 
	32, 34, 35, 37, 42, 64, 65, 67, 
	68, 69, 70, 83, 124, 9, 13, 10, 
	95, 10, 70, 10, 69, 10, 65, 10, 
	84, 10, 85, 10, 82, 10, 69, 10, 
	95, 10, 69, 10, 78, 10, 68, 10, 
	95, 10, 37, 10, 116, 10, 117, 10, 
	110, 10, 99, -61, 10, -94, 10, 10, 
	110, 10, 100, 10, 97, 10, 99, 114, 
	-60, 10, -125, 10, 10, 117, 10, 110, 
	10, 99, -56, 10, -101, 10, 10, 105, 
	10, 111, 10, 110, 10, 97, 10, 108, 
	10, 105, 10, 116, 10, 97, 10, 116, 
	10, 101, 10, 58, 10, 99, 10, 101, 
	10, 110, 10, 97, 10, 114, 10, 105, 
	10, 117, 10, 58, 108, 10, 32, 10, 
	100, 10, 101, 10, 32, -59, 10, -97, 
	10, 10, 97, 10, 98, 10, 108, 10, 
	111, 10, 110, -69, -65, 0
};

static const char _lexer_single_lengths[] = {
	0, 16, 1, 1, 1, 1, 2, 15, 
	1, 1, 2, 3, 3, 3, 3, 2, 
	2, 2, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 3, 5, 3, 1, 1, 1, 1, 
	2, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 12, 2, 
	2, 2, 15, 1, 2, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 5, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 9, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 3, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 1, 1, 
	1, 1, 1, 1, 1, 2, 1, 1, 
	12, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 3, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 3, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 3, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 12, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 3, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 4, 3, 2, 4, 
	15, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	3, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 3, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 1, 1, 
	0
};

static const char _lexer_range_lengths[] = {
	0, 1, 0, 0, 0, 0, 0, 1, 
	0, 0, 1, 1, 1, 1, 1, 1, 
	1, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 1, 1, 1, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 1, 0, 
	0, 0, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 1, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	1, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 1, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 1, 1, 0, 0, 1, 
	1, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0
};

static const short _lexer_index_offsets[] = {
	0, 0, 18, 20, 22, 24, 26, 29, 
	46, 48, 50, 54, 59, 64, 69, 74, 
	78, 82, 85, 87, 89, 91, 93, 95, 
	97, 99, 101, 103, 105, 107, 109, 111, 
	113, 115, 120, 127, 132, 134, 136, 138, 
	140, 143, 145, 147, 149, 151, 153, 155, 
	157, 159, 161, 163, 165, 167, 169, 183, 
	186, 189, 192, 209, 211, 214, 216, 218, 
	220, 222, 224, 226, 228, 230, 232, 234, 
	236, 238, 240, 247, 250, 253, 256, 259, 
	262, 265, 268, 271, 274, 277, 280, 283, 
	286, 289, 292, 295, 297, 299, 301, 303, 
	305, 307, 309, 311, 313, 315, 317, 319, 
	321, 323, 325, 327, 329, 331, 342, 345, 
	348, 351, 354, 357, 360, 363, 366, 369, 
	372, 375, 378, 381, 384, 387, 390, 393, 
	396, 399, 402, 405, 408, 411, 414, 417, 
	420, 423, 426, 429, 432, 435, 438, 441, 
	444, 447, 450, 453, 456, 459, 462, 465, 
	468, 471, 474, 477, 480, 483, 486, 489, 
	492, 495, 498, 502, 505, 508, 511, 514, 
	517, 520, 523, 526, 529, 532, 535, 537, 
	539, 541, 543, 545, 547, 549, 552, 554, 
	556, 570, 573, 576, 579, 582, 585, 588, 
	591, 594, 597, 600, 603, 606, 609, 612, 
	615, 618, 621, 624, 627, 630, 633, 637, 
	640, 643, 646, 649, 652, 655, 658, 661, 
	664, 667, 670, 673, 677, 680, 683, 686, 
	689, 692, 695, 698, 701, 704, 707, 710, 
	713, 716, 719, 722, 725, 728, 731, 734, 
	737, 740, 743, 746, 749, 753, 756, 759, 
	762, 765, 768, 771, 774, 777, 780, 783, 
	786, 788, 790, 792, 794, 796, 798, 800, 
	802, 804, 806, 808, 810, 812, 814, 828, 
	831, 834, 837, 840, 843, 846, 849, 852, 
	855, 858, 861, 864, 867, 870, 873, 876, 
	879, 882, 885, 888, 891, 894, 897, 900, 
	903, 906, 910, 913, 916, 919, 922, 925, 
	928, 931, 934, 937, 940, 943, 946, 949, 
	952, 955, 958, 961, 964, 967, 970, 973, 
	976, 979, 982, 985, 989, 995, 999, 1002, 
	1008, 1025, 1028, 1031, 1034, 1037, 1040, 1043, 
	1046, 1049, 1052, 1055, 1058, 1061, 1064, 1067, 
	1070, 1073, 1076, 1079, 1082, 1085, 1088, 1091, 
	1094, 1098, 1101, 1104, 1107, 1110, 1113, 1116, 
	1119, 1122, 1125, 1128, 1131, 1134, 1137, 1140, 
	1143, 1146, 1149, 1152, 1155, 1158, 1161, 1164, 
	1167, 1170, 1173, 1177, 1180, 1183, 1186, 1189, 
	1192, 1195, 1198, 1201, 1204, 1207, 1210, 1212, 
	1214
};

static const short _lexer_trans_targs[] = {
	2, 390, 7, 7, 8, 17, 19, 4, 
	33, 36, 40, 59, 63, 91, 174, 323, 
	7, 0, 3, 0, 4, 0, 5, 0, 
	0, 6, 7, 18, 6, 2, 7, 7, 
	8, 17, 19, 4, 33, 36, 40, 59, 
	63, 91, 174, 323, 7, 0, 9, 0, 
	10, 0, 11, 10, 10, 0, 12, 12, 
	13, 12, 12, 12, 12, 13, 12, 12, 
	12, 12, 14, 12, 12, 12, 12, 15, 
	12, 12, 7, 16, 16, 0, 7, 16, 
	16, 0, 7, 18, 17, 7, 0, 20, 
	0, 21, 0, 22, 0, 23, 0, 24, 
	0, 25, 0, 26, 0, 27, 0, 28, 
	0, 29, 0, 30, 0, 31, 0, 32, 
	0, 392, 0, 0, 0, 0, 0, 34, 
	35, 7, 35, 35, 33, 34, 34, 7, 
	35, 33, 35, 0, 37, 0, 38, 0, 
	39, 0, 3, 0, 41, 44, 0, 42, 
	0, 43, 0, 4, 0, 45, 0, 46, 
	0, 47, 0, 48, 0, 49, 0, 50, 
	0, 51, 0, 52, 0, 54, 53, 54, 
	53, 55, 54, 54, 7, 329, 57, 7, 
	343, 347, 351, 355, 371, 54, 53, 56, 
	54, 53, 54, 57, 53, 54, 58, 53, 
	2, 7, 7, 8, 17, 19, 4, 33, 
	36, 40, 59, 63, 91, 174, 323, 7, 
	0, 60, 0, 61, 4, 0, 62, 0, 
	4, 0, 64, 0, 65, 0, 66, 0, 
	67, 0, 68, 0, 69, 0, 70, 0, 
	71, 0, 72, 0, 74, 73, 74, 73, 
	74, 74, 7, 75, 7, 74, 73, 74, 
	76, 73, 74, 77, 73, 74, 78, 73, 
	79, 74, 73, 80, 74, 73, 74, 81, 
	73, 74, 82, 73, 74, 83, 73, 74, 
	84, 73, 74, 85, 73, 74, 86, 73, 
	74, 87, 73, 74, 88, 73, 74, 89, 
	73, 74, 90, 73, 74, 58, 73, 92, 
	0, 93, 0, 94, 0, 95, 0, 96, 
	0, 97, 0, 98, 0, 99, 0, 100, 
	0, 101, 0, 102, 0, 103, 0, 104, 
	0, 105, 0, 106, 0, 107, 0, 109, 
	108, 109, 108, 109, 109, 7, 110, 7, 
	124, 133, 141, 155, 109, 108, 109, 111, 
	108, 109, 112, 108, 109, 113, 108, 109, 
	114, 108, 109, 115, 108, 109, 116, 108, 
	109, 117, 108, 109, 118, 108, 109, 119, 
	108, 109, 120, 108, 109, 121, 108, 109, 
	122, 108, 109, 123, 108, 109, 7, 108, 
	109, 125, 108, 109, 126, 108, 109, 127, 
	108, 109, 128, 108, 129, 109, 108, 130, 
	109, 108, 109, 131, 108, 109, 132, 108, 
	109, 58, 108, 109, 134, 108, 109, 135, 
	108, 109, 136, 108, 109, 137, 108, 109, 
	138, 108, 109, 139, 108, 109, 140, 108, 
	109, 132, 108, 109, 142, 108, 109, 143, 
	108, 109, 144, 108, 145, 109, 108, 146, 
	109, 108, 109, 147, 108, 109, 148, 108, 
	109, 149, 108, 109, 150, 108, 109, 151, 
	108, 109, 152, 108, 109, 153, 108, 109, 
	154, 108, 109, 140, 108, 109, 156, 108, 
	109, 157, 108, 109, 158, 108, 109, 159, 
	108, 109, 160, 108, 109, 161, 108, 109, 
	162, 108, 109, 58, 163, 108, 109, 164, 
	108, 109, 165, 108, 109, 166, 108, 109, 
	167, 108, 168, 109, 108, 169, 109, 108, 
	109, 170, 108, 109, 171, 108, 109, 172, 
	108, 109, 173, 108, 109, 132, 108, 175, 
	0, 176, 0, 177, 0, 178, 0, 179, 
	0, 180, 0, 181, 0, 182, 256, 0, 
	184, 183, 184, 183, 185, 184, 184, 7, 
	188, 187, 7, 202, 206, 218, 222, 237, 
	184, 183, 186, 184, 183, 184, 187, 183, 
	184, 58, 183, 184, 189, 183, 184, 190, 
	183, 184, 191, 183, 184, 192, 183, 184, 
	193, 183, 184, 194, 183, 184, 195, 183, 
	184, 196, 183, 184, 197, 183, 184, 198, 
	183, 184, 199, 183, 184, 200, 183, 184, 
	201, 183, 184, 7, 183, 184, 203, 183, 
	184, 204, 183, 184, 205, 183, 184, 186, 
	183, 207, 184, 210, 183, 208, 184, 183, 
	184, 209, 183, 184, 187, 183, 184, 211, 
	183, 184, 212, 183, 184, 213, 183, 214, 
	184, 183, 215, 184, 183, 184, 216, 183, 
	184, 217, 183, 184, 58, 183, 184, 219, 
	183, 184, 220, 187, 183, 221, 184, 183, 
	187, 184, 183, 184, 223, 183, 184, 224, 
	183, 184, 225, 183, 226, 184, 183, 227, 
	184, 183, 184, 228, 183, 184, 229, 183, 
	184, 230, 183, 184, 231, 183, 184, 232, 
	183, 184, 233, 183, 184, 234, 183, 184, 
	235, 183, 184, 236, 183, 184, 217, 183, 
	184, 238, 183, 184, 239, 183, 184, 240, 
	183, 184, 241, 183, 184, 242, 183, 184, 
	243, 183, 184, 244, 183, 184, 58, 245, 
	183, 184, 246, 183, 184, 247, 183, 184, 
	248, 183, 184, 249, 183, 250, 184, 183, 
	251, 184, 183, 184, 252, 183, 184, 253, 
	183, 184, 254, 183, 184, 255, 183, 184, 
	217, 183, 257, 0, 258, 0, 259, 0, 
	260, 0, 261, 0, 262, 0, 263, 0, 
	264, 0, 265, 0, 266, 0, 267, 0, 
	268, 0, 270, 269, 270, 269, 271, 270, 
	270, 7, 274, 273, 7, 288, 292, 296, 
	300, 316, 270, 269, 272, 270, 269, 270, 
	273, 269, 270, 58, 269, 270, 275, 269, 
	270, 276, 269, 270, 277, 269, 270, 278, 
	269, 270, 279, 269, 270, 280, 269, 270, 
	281, 269, 270, 282, 269, 270, 283, 269, 
	270, 284, 269, 270, 285, 269, 270, 286, 
	269, 270, 287, 269, 270, 7, 269, 270, 
	289, 269, 270, 290, 269, 270, 291, 269, 
	270, 272, 269, 293, 270, 269, 294, 270, 
	269, 270, 295, 269, 270, 273, 269, 270, 
	297, 269, 270, 298, 273, 269, 299, 270, 
	269, 273, 270, 269, 270, 301, 269, 270, 
	302, 269, 270, 303, 269, 304, 270, 269, 
	305, 270, 269, 270, 306, 269, 270, 307, 
	269, 270, 308, 269, 270, 309, 269, 270, 
	310, 269, 270, 311, 269, 270, 312, 269, 
	270, 313, 269, 270, 314, 269, 270, 315, 
	269, 270, 58, 269, 270, 317, 269, 270, 
	318, 269, 270, 319, 269, 270, 320, 269, 
	270, 321, 269, 270, 322, 269, 270, 315, 
	269, 323, 324, 323, 0, 328, 327, 326, 
	324, 327, 325, 0, 326, 324, 325, 0, 
	326, 325, 328, 327, 326, 324, 327, 325, 
	2, 328, 328, 8, 17, 19, 4, 33, 
	36, 40, 59, 63, 91, 174, 323, 328, 
	0, 54, 330, 53, 54, 331, 53, 54, 
	332, 53, 54, 333, 53, 54, 334, 53, 
	54, 335, 53, 54, 336, 53, 54, 337, 
	53, 54, 338, 53, 54, 339, 53, 54, 
	340, 53, 54, 341, 53, 54, 342, 53, 
	54, 7, 53, 54, 344, 53, 54, 345, 
	53, 54, 346, 53, 54, 56, 53, 348, 
	54, 53, 349, 54, 53, 54, 350, 53, 
	54, 57, 53, 54, 352, 53, 54, 353, 
	57, 53, 354, 54, 53, 57, 54, 53, 
	54, 356, 53, 54, 357, 53, 54, 358, 
	53, 359, 54, 53, 360, 54, 53, 54, 
	361, 53, 54, 362, 53, 54, 363, 53, 
	54, 364, 53, 54, 365, 53, 54, 366, 
	53, 54, 367, 53, 54, 368, 53, 54, 
	369, 53, 54, 370, 53, 54, 58, 53, 
	54, 372, 53, 54, 373, 53, 54, 374, 
	53, 54, 375, 53, 54, 376, 53, 54, 
	377, 53, 54, 378, 53, 54, 58, 379, 
	53, 54, 380, 53, 54, 381, 53, 54, 
	382, 53, 54, 383, 53, 384, 54, 53, 
	385, 54, 53, 54, 386, 53, 54, 387, 
	53, 54, 388, 53, 54, 389, 53, 54, 
	370, 53, 391, 0, 7, 0, 0, 0
};

static const char _lexer_trans_actions[] = {
	25, 0, 47, 0, 5, 1, 0, 25, 
	1, 25, 25, 25, 25, 25, 25, 31, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	39, 50, 99, 19, 0, 25, 47, 0, 
	5, 1, 0, 25, 1, 25, 25, 25, 
	25, 25, 25, 31, 0, 39, 0, 39, 
	0, 39, 47, 0, 0, 39, 119, 41, 
	41, 41, 3, 111, 29, 29, 29, 0, 
	111, 29, 29, 29, 0, 111, 29, 0, 
	29, 0, 95, 7, 7, 39, 47, 0, 
	0, 39, 103, 21, 0, 47, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 39, 39, 39, 39, 0, 
	23, 107, 23, 23, 44, 23, 0, 47, 
	0, 1, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 124, 50, 47, 
	0, 77, 47, 0, 65, 29, 77, 65, 
	77, 77, 77, 77, 77, 0, 0, 0, 
	47, 0, 47, 0, 0, 47, 11, 0, 
	56, 115, 27, 53, 50, 27, 56, 50, 
	56, 56, 56, 56, 56, 56, 59, 27, 
	39, 0, 39, 0, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 124, 50, 47, 0, 
	47, 0, 74, 77, 74, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	0, 47, 0, 0, 47, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 17, 0, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 124, 
	50, 47, 0, 47, 0, 62, 29, 62, 
	77, 77, 77, 77, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 9, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 0, 47, 0, 0, 
	47, 0, 47, 0, 0, 47, 0, 0, 
	47, 9, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 0, 47, 0, 0, 
	47, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 9, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 0, 47, 0, 0, 47, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 0, 39, 
	124, 50, 47, 0, 77, 47, 0, 68, 
	29, 77, 68, 77, 77, 77, 77, 77, 
	0, 0, 0, 47, 0, 47, 0, 0, 
	47, 13, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 13, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 0, 47, 0, 0, 0, 47, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 0, 
	47, 0, 0, 47, 0, 47, 0, 0, 
	47, 0, 0, 47, 13, 0, 47, 0, 
	0, 47, 0, 0, 0, 0, 47, 0, 
	0, 47, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 0, 47, 0, 0, 
	47, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 13, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 0, 47, 0, 
	0, 47, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 124, 50, 47, 0, 77, 47, 
	0, 71, 29, 77, 71, 77, 77, 77, 
	77, 77, 0, 0, 0, 47, 0, 47, 
	0, 0, 47, 15, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 15, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 0, 47, 0, 0, 47, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 0, 0, 47, 
	0, 0, 47, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 0, 47, 0, 
	0, 47, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 15, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 0, 0, 0, 39, 47, 33, 33, 
	80, 33, 33, 39, 0, 35, 0, 39, 
	0, 0, 47, 0, 0, 35, 0, 0, 
	89, 47, 0, 86, 83, 37, 89, 83, 
	89, 89, 89, 89, 89, 89, 92, 0, 
	39, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 11, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 0, 
	47, 0, 0, 47, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 0, 0, 47, 0, 0, 47, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 0, 47, 0, 0, 47, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 11, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 11, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 0, 47, 0, 
	0, 47, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 0, 39, 0, 39, 0, 0
};

static const char _lexer_eof_actions[] = {
	0, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39
};

static const int lexer_start = 1;
static const int lexer_first_final = 392;
static const int lexer_error = 0;

static const int lexer_en_main = 1;


#line 245 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"

static VALUE 
unindent(VALUE con, int start_col)
{
  // Gherkin will crash gracefully if the string representation of start_col pushes the pattern past 32 characters
  char pat[32]; 
  snprintf(pat, 32, "^[\t ]{0,%d}", start_col); 
  VALUE re = rb_reg_regcomp(rb_str_new2(pat));
  rb_funcall(con, rb_intern("gsub!"), 2, re, rb_str_new2(""));

  return Qnil;

}

static void 
store_kw_con(VALUE listener, const char * event_name, 
             const char * keyword_at, size_t keyword_length, 
             const char * at,         size_t length, 
             int current_line)
{
  VALUE con = Qnil, kw = Qnil;
  kw = ENCODED_STR_NEW(keyword_at, keyword_length);
  con = ENCODED_STR_NEW(at, length);
  rb_funcall(con, rb_intern("strip!"), 0);
  rb_funcall(listener, rb_intern(event_name), 3, kw, con, INT2FIX(current_line)); 
}

static void
store_multiline_kw_con(VALUE listener, const char * event_name,
                      const char * keyword_at, size_t keyword_length,
                      const char * at,         size_t length,
                      int current_line, int start_col)
{
  VALUE con = Qnil, kw = Qnil, name = Qnil, desc = Qnil;

  kw = ENCODED_STR_NEW(keyword_at, keyword_length);
  con = ENCODED_STR_NEW(at, length);

  unindent(con, start_col);
  
  VALUE split = rb_str_split(con, "\n");

  name = rb_funcall(split, rb_intern("shift"), 0);
  desc = rb_ary_join(split, rb_str_new2( "\n" ));

  if( name == Qnil ) 
  {
    name = rb_str_new2("");
  }
  if( rb_funcall(desc, rb_intern("size"), 0) == 0) 
  {
    desc = rb_str_new2("");
  }
  rb_funcall(name, rb_intern("strip!"), 0);
  rb_funcall(desc, rb_intern("rstrip!"), 0);
  rb_funcall(listener, rb_intern(event_name), 4, kw, name, desc, INT2FIX(current_line)); 
}

static void 
store_attr(VALUE listener, const char * attr_type,
           const char * at, size_t length, 
           int line)
{
  VALUE val = ENCODED_STR_NEW(at, length);
  rb_funcall(listener, rb_intern(attr_type), 2, val, INT2FIX(line));
}

static void 
store_pystring_content(VALUE listener, 
          int start_col, 
          const char *at, size_t length, 
          int current_line)
{
  VALUE con = ENCODED_STR_NEW(at, length);

  unindent(con, start_col);

  VALUE re2 = rb_reg_regcomp(rb_str_new2("\r\\Z"));
  VALUE unescape_escaped_quotes = rb_reg_regcomp(rb_str_new2("\\\\\"\\\\\"\\\\\""));
  rb_funcall(con, rb_intern("sub!"), 2, re2, rb_str_new2(""));
  rb_funcall(con, rb_intern("gsub!"), 2, unescape_escaped_quotes, rb_str_new2("\"\"\""));
  rb_funcall(listener, rb_intern("py_string"), 2, con, INT2FIX(current_line));
}

static void 
raise_lexer_error(const char * at, int line)
{ 
  rb_raise(rb_eGherkinLexingError, "Lexing error on line %d: '%s'. See http://wiki.github.com/aslakhellesoy/gherkin/lexingerror for more information.", line, at);
}

static void lexer_init(lexer_state *lexer) {
  lexer->content_start = 0;
  lexer->content_end = 0;
  lexer->content_len = 0;
  lexer->mark = 0;
  lexer->keyword_start = 0;
  lexer->keyword_end = 0;
  lexer->next_keyword_start = 0;
  lexer->line_number = 1;
  lexer->last_newline = 0;
  lexer->final_newline = 0;
  lexer->start_col = 0;
}

static VALUE CLexer_alloc(VALUE klass)
{
  VALUE obj;
  lexer_state *lxr = ALLOC(lexer_state);
  lexer_init(lxr);

  obj = Data_Wrap_Struct(klass, NULL, -1, lxr);

  return obj;
}

static VALUE CLexer_init(VALUE self, VALUE listener)
{
  rb_iv_set(self, "@listener", listener);
  
  lexer_state *lxr = NULL;
  DATA_GET(self, lexer_state, lxr);
  lexer_init(lxr);
  
  return self;
}

static VALUE CLexer_scan(VALUE self, VALUE input)
{
  VALUE listener = rb_iv_get(self, "@listener");

  lexer_state *lexer = NULL;
  DATA_GET(self, lexer_state, lexer);

  VALUE input_copy = rb_str_dup(input);

  rb_str_append(input_copy, rb_str_new2("\n%_FEATURE_END_%"));
  char *data = RSTRING_PTR(input_copy);
  size_t len = RSTRING_LEN(input_copy);
  
  if (len == 0) { 
    rb_raise(rb_eGherkinLexingError, "No content to lex.");
  } else {

    const char *p, *pe, *eof;
    int cs = 0;
    
    VALUE current_row = Qnil;

    p = data;
    pe = data + len;
    eof = pe;
    
    assert(*pe == '\0' && "pointer does not end on NULL");
    
    
#line 955 "ext/gherkin_lexer_ro_ro/gherkin_lexer_ro_ro.c"
	{
	cs = lexer_start;
	}

#line 400 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"
    
#line 962 "ext/gherkin_lexer_ro_ro/gherkin_lexer_ro_ro.c"
	{
	int _klen;
	unsigned int _trans;
	const char *_acts;
	unsigned int _nacts;
	const char *_keys;

	if ( p == pe )
		goto _test_eof;
	if ( cs == 0 )
		goto _out;
_resume:
	_keys = _lexer_trans_keys + _lexer_key_offsets[cs];
	_trans = _lexer_index_offsets[cs];

	_klen = _lexer_single_lengths[cs];
	if ( _klen > 0 ) {
		const char *_lower = _keys;
		const char *_mid;
		const char *_upper = _keys + _klen - 1;
		while (1) {
			if ( _upper < _lower )
				break;

			_mid = _lower + ((_upper-_lower) >> 1);
			if ( (*p) < *_mid )
				_upper = _mid - 1;
			else if ( (*p) > *_mid )
				_lower = _mid + 1;
			else {
				_trans += (_mid - _keys);
				goto _match;
			}
		}
		_keys += _klen;
		_trans += _klen;
	}

	_klen = _lexer_range_lengths[cs];
	if ( _klen > 0 ) {
		const char *_lower = _keys;
		const char *_mid;
		const char *_upper = _keys + (_klen<<1) - 2;
		while (1) {
			if ( _upper < _lower )
				break;

			_mid = _lower + (((_upper-_lower) >> 1) & ~1);
			if ( (*p) < _mid[0] )
				_upper = _mid - 2;
			else if ( (*p) > _mid[1] )
				_lower = _mid + 2;
			else {
				_trans += ((_mid - _keys)>>1);
				goto _match;
			}
		}
		_trans += _klen;
	}

_match:
	cs = _lexer_trans_targs[_trans];

	if ( _lexer_trans_actions[_trans] == 0 )
		goto _again;

	_acts = _lexer_actions + _lexer_trans_actions[_trans];
	_nacts = (unsigned int) *_acts++;
	while ( _nacts-- > 0 )
	{
		switch ( *_acts++ )
		{
	case 0:
#line 81 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"
	{
		MARK(content_start, p);
    lexer->current_line = lexer->line_number;
    lexer->start_col = lexer->content_start - lexer->last_newline - (lexer->keyword_end - lexer->keyword_start) + 2;
  }
	break;
	case 1:
#line 87 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"
	{
    MARK(content_start, p);
  }
	break;
	case 2:
#line 91 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"
	{
    lexer->current_line = lexer->line_number;
    lexer->start_col = p - data - lexer->last_newline;
  }
	break;
	case 3:
#line 96 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"
	{
    int len = LEN(content_start, PTR_TO(final_newline));

    if (len < 0) len = 0;

    store_pystring_content(listener, lexer->start_col, PTR_TO(content_start), len, lexer->current_line);
  }
	break;
	case 4:
#line 104 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"
	{
    STORE_KW_END_CON(feature);
  }
	break;
	case 5:
#line 108 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"
	{
    STORE_KW_END_CON(background);
  }
	break;
	case 6:
#line 112 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"
	{
    STORE_KW_END_CON(scenario);
  }
	break;
	case 7:
#line 116 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"
	{
    STORE_KW_END_CON(scenario_outline);
  }
	break;
	case 8:
#line 120 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"
	{
    STORE_KW_END_CON(examples);
  }
	break;
	case 9:
#line 124 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"
	{
    store_kw_con(listener, "step",
      PTR_TO(keyword_start), LEN(keyword_start, PTR_TO(keyword_end)),
      PTR_TO(content_start), LEN(content_start, p), 
      lexer->current_line);
  }
	break;
	case 10:
#line 131 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"
	{
    STORE_ATTR(comment);
    lexer->mark = 0;
  }
	break;
	case 11:
#line 136 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"
	{
    STORE_ATTR(tag);
    lexer->mark = 0;
  }
	break;
	case 12:
#line 141 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"
	{
    lexer->line_number += 1;
    MARK(final_newline, p);
  }
	break;
	case 13:
#line 146 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"
	{
    MARK(last_newline, p + 1);
  }
	break;
	case 14:
#line 150 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"
	{
    if (lexer->mark == 0) {
      MARK(mark, p);
    }
  }
	break;
	case 15:
#line 156 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"
	{
    MARK(keyword_end, p);
    MARK(keyword_start, PTR_TO(mark));
    MARK(content_start, p + 1);
    lexer->mark = 0;
  }
	break;
	case 16:
#line 163 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"
	{
    MARK(content_end, p);
  }
	break;
	case 17:
#line 167 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"
	{
    p = p - 1;
    lexer->current_line = lexer->line_number;
    current_row = rb_ary_new();
  }
	break;
	case 18:
#line 173 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"
	{
		MARK(content_start, p);
  }
	break;
	case 19:
#line 177 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"
	{
    VALUE con = ENCODED_STR_NEW(PTR_TO(content_start), LEN(content_start, p));
    rb_funcall(con, rb_intern("strip!"), 0);
    VALUE re_pipe      = rb_reg_regcomp(rb_str_new2("\\\\\\|"));
    VALUE re_newline   = rb_reg_regcomp(rb_str_new2("\\\\n"));
    VALUE re_backslash = rb_reg_regcomp(rb_str_new2("\\\\\\\\"));
    rb_funcall(con, rb_intern("gsub!"), 2, re_pipe,      rb_str_new2("|"));
    rb_funcall(con, rb_intern("gsub!"), 2, re_newline,   rb_str_new2("\n"));
    rb_funcall(con, rb_intern("gsub!"), 2, re_backslash, rb_str_new2("\\"));

    rb_ary_push(current_row, con);
  }
	break;
	case 20:
#line 190 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"
	{
    rb_funcall(listener, rb_intern("row"), 2, current_row, INT2FIX(lexer->current_line));
  }
	break;
	case 21:
#line 194 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"
	{
    if (cs < lexer_first_final) {
      if (raise_lexer_error != NULL) {
        size_t count = 0;
    	VALUE newstr_val;
        char *newstr;
        int newstr_count = 0;        
        size_t len;
        const char *buff;
        if (lexer->last_newline != 0) {
          len = LEN(last_newline, eof);
          buff = PTR_TO(last_newline);
        } else {
          len = strlen(data);
          buff = data;
        }

        // Allocate as a ruby string so that it gets cleaned up by GC
        newstr_val = rb_str_new(buff, len);
        newstr = RSTRING_PTR(newstr_val);

        for (count = 0; count < len; count++) {
          if(buff[count] == 10) {
            newstr[newstr_count] = '\0'; // terminate new string at first newline found
            break;
          } else {
            if (buff[count] == '%') {
              newstr[newstr_count++] = buff[count];
              newstr[newstr_count] = buff[count];
            } else {
              newstr[newstr_count] = buff[count];
            }
          }
          newstr_count++;
        }

        int line = lexer->line_number;
        lexer_init(lexer); // Re-initialize so we can scan again with the same lexer
        raise_lexer_error(newstr, line);
      }
    } else {
      rb_funcall(listener, rb_intern("eof"), 0);
    }
  }
	break;
#line 1237 "ext/gherkin_lexer_ro_ro/gherkin_lexer_ro_ro.c"
		}
	}

_again:
	if ( cs == 0 )
		goto _out;
	if ( ++p != pe )
		goto _resume;
	_test_eof: {}
	if ( p == eof )
	{
	const char *__acts = _lexer_actions + _lexer_eof_actions[cs];
	unsigned int __nacts = (unsigned int) *__acts++;
	while ( __nacts-- > 0 ) {
		switch ( *__acts++ ) {
	case 21:
#line 194 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"
	{
    if (cs < lexer_first_final) {
      if (raise_lexer_error != NULL) {
        size_t count = 0;
    	VALUE newstr_val;
        char *newstr;
        int newstr_count = 0;        
        size_t len;
        const char *buff;
        if (lexer->last_newline != 0) {
          len = LEN(last_newline, eof);
          buff = PTR_TO(last_newline);
        } else {
          len = strlen(data);
          buff = data;
        }

        // Allocate as a ruby string so that it gets cleaned up by GC
        newstr_val = rb_str_new(buff, len);
        newstr = RSTRING_PTR(newstr_val);

        for (count = 0; count < len; count++) {
          if(buff[count] == 10) {
            newstr[newstr_count] = '\0'; // terminate new string at first newline found
            break;
          } else {
            if (buff[count] == '%') {
              newstr[newstr_count++] = buff[count];
              newstr[newstr_count] = buff[count];
            } else {
              newstr[newstr_count] = buff[count];
            }
          }
          newstr_count++;
        }

        int line = lexer->line_number;
        lexer_init(lexer); // Re-initialize so we can scan again with the same lexer
        raise_lexer_error(newstr, line);
      }
    } else {
      rb_funcall(listener, rb_intern("eof"), 0);
    }
  }
	break;
#line 1300 "ext/gherkin_lexer_ro_ro/gherkin_lexer_ro_ro.c"
		}
	}
	}

	_out: {}
	}

#line 401 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/ro_ro.c.rl"

    assert(p <= pe && "data overflow after parsing execute");
    assert(lexer->content_start <= len && "content starts after data end");
    assert(lexer->mark < len && "mark is after data end");
    
    // Reset lexer by re-initializing the whole thing
    lexer_init(lexer);

    if (cs == lexer_error) {
      rb_raise(rb_eGherkinLexingError, "Invalid format, lexing fails.");
    } else {
      return Qtrue;
    }
  }
}

void Init_gherkin_lexer_ro_ro()
{
  mGherkin = rb_define_module("Gherkin");
  mGherkinLexer = rb_define_module_under(mGherkin, "Lexer");
  rb_eGherkinLexingError = rb_const_get(mGherkinLexer, rb_intern("LexingError"));

  mCLexer = rb_define_module_under(mGherkin, "CLexer");
  cI18nLexer = rb_define_class_under(mCLexer, "Ro_ro", rb_cObject);
  rb_define_alloc_func(cI18nLexer, CLexer_alloc);
  rb_define_method(cI18nLexer, "initialize", CLexer_init, 1);
  rb_define_method(cI18nLexer, "scan", CLexer_scan, 1);
}

