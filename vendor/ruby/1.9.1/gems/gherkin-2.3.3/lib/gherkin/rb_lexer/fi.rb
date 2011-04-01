
# line 1 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
require 'gherkin/lexer/i18n_lexer'

module Gherkin
  module RbLexer
    class Fi #:nodoc:
      
# line 127 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"

 
      def initialize(listener)
        @listener = listener
        
# line 16 "lib/gherkin/rb_lexer/fi.rb"
class << self
	attr_accessor :_lexer_actions
	private :_lexer_actions, :_lexer_actions=
end
self._lexer_actions = [
	0, 1, 0, 1, 1, 1, 2, 1, 
	3, 1, 4, 1, 5, 1, 6, 1, 
	7, 1, 8, 1, 9, 1, 10, 1, 
	11, 1, 14, 1, 15, 1, 16, 1, 
	17, 1, 18, 1, 19, 1, 20, 1, 
	21, 2, 2, 16, 2, 11, 0, 2, 
	12, 13, 2, 15, 0, 2, 15, 1, 
	2, 15, 14, 2, 15, 17, 2, 16, 
	4, 2, 16, 5, 2, 16, 6, 2, 
	16, 7, 2, 16, 8, 2, 16, 14, 
	2, 18, 19, 2, 20, 0, 2, 20, 
	1, 2, 20, 14, 2, 20, 17, 3, 
	3, 12, 13, 3, 9, 12, 13, 3, 
	10, 12, 13, 3, 11, 12, 13, 3, 
	12, 13, 16, 3, 15, 12, 13, 4, 
	2, 12, 13, 16, 4, 15, 0, 12, 
	13
]

class << self
	attr_accessor :_lexer_key_offsets
	private :_lexer_key_offsets, :_lexer_key_offsets=
end
self._lexer_key_offsets = [
	0, 0, 17, 18, 19, 35, 36, 37, 
	41, 46, 51, 56, 61, 65, 69, 71, 
	72, 73, 74, 75, 76, 77, 78, 79, 
	80, 81, 82, 83, 84, 85, 86, 87, 
	88, 90, 95, 102, 107, 108, 109, 110, 
	111, 112, 113, 114, 115, 117, 118, 119, 
	120, 121, 122, 123, 124, 125, 126, 127, 
	128, 129, 130, 131, 132, 133, 134, 143, 
	145, 147, 149, 151, 153, 155, 157, 159, 
	161, 163, 165, 167, 169, 171, 173, 175, 
	177, 179, 181, 183, 185, 187, 189, 191, 
	207, 208, 210, 211, 212, 214, 215, 216, 
	217, 218, 219, 220, 227, 229, 231, 233, 
	235, 237, 239, 241, 243, 245, 247, 249, 
	250, 251, 265, 267, 269, 271, 273, 275, 
	277, 279, 281, 283, 285, 287, 289, 291, 
	293, 295, 297, 299, 301, 303, 305, 307, 
	309, 311, 314, 316, 318, 320, 322, 324, 
	326, 328, 330, 332, 334, 336, 338, 340, 
	342, 344, 346, 349, 351, 353, 355, 358, 
	360, 362, 364, 366, 368, 370, 372, 373, 
	374, 375, 376, 377, 378, 379, 393, 395, 
	397, 399, 401, 403, 405, 407, 409, 411, 
	413, 415, 417, 419, 421, 423, 425, 427, 
	429, 431, 433, 435, 437, 439, 442, 444, 
	446, 448, 450, 452, 454, 456, 458, 460, 
	462, 464, 466, 468, 470, 472, 474, 476, 
	478, 479, 480, 481, 482, 483, 484, 498, 
	500, 502, 504, 506, 508, 510, 512, 514, 
	516, 518, 520, 522, 524, 526, 528, 530, 
	532, 534, 536, 538, 540, 542, 544, 547, 
	549, 551, 553, 555, 557, 559, 561, 563, 
	565, 567, 569, 571, 573, 575, 577, 579, 
	581, 583, 585, 587, 590, 592, 594, 596, 
	598, 602, 608, 611, 613, 619, 635, 637, 
	640, 642, 644, 647, 649, 651, 653, 656, 
	658, 660, 662, 664, 666, 668, 670
]

class << self
	attr_accessor :_lexer_trans_keys
	private :_lexer_trans_keys, :_lexer_trans_keys=
end
self._lexer_trans_keys = [
	-17, 10, 32, 34, 35, 37, 42, 64, 
	74, 75, 77, 78, 79, 84, 124, 9, 
	13, -69, -65, 10, 32, 34, 35, 37, 
	42, 64, 74, 75, 77, 78, 79, 84, 
	124, 9, 13, 34, 34, 10, 32, 9, 
	13, 10, 32, 34, 9, 13, 10, 32, 
	34, 9, 13, 10, 32, 34, 9, 13, 
	10, 32, 34, 9, 13, 10, 32, 9, 
	13, 10, 32, 9, 13, 10, 13, 10, 
	95, 70, 69, 65, 84, 85, 82, 69, 
	95, 69, 78, 68, 95, 37, 32, 10, 
	10, 13, 13, 32, 64, 9, 10, 9, 
	10, 13, 32, 64, 11, 12, 10, 32, 
	64, 9, 13, 97, 117, 110, 117, 116, 
	116, 105, 105, 108, 109, 101, 116, 101, 
	116, 97, 97, 105, 110, 97, 105, 115, 
	117, 117, 115, 58, 10, 10, 10, 32, 
	35, 37, 64, 79, 84, 9, 13, 10, 
	95, 10, 70, 10, 69, 10, 65, 10, 
	84, 10, 85, 10, 82, 10, 69, 10, 
	95, 10, 69, 10, 78, 10, 68, 10, 
	95, 10, 37, 10, 109, 10, 105, 10, 
	110, 10, 97, 10, 105, 10, 115, 10, 
	117, 10, 117, 10, 115, 10, 58, 10, 
	32, 34, 35, 37, 42, 64, 74, 75, 
	77, 78, 79, 84, 124, 9, 13, 97, 
	112, 117, 97, 117, 107, 115, 115, 101, 
	116, 58, 10, 10, 10, 32, 35, 79, 
	124, 9, 13, 10, 109, 10, 105, 10, 
	110, 10, 97, 10, 105, 10, 115, 10, 
	117, 10, 117, 10, 115, 10, 58, 58, 
	97, 10, 10, 10, 32, 35, 37, 42, 
	64, 74, 75, 77, 78, 79, 84, 9, 
	13, 10, 95, 10, 70, 10, 69, 10, 
	65, 10, 84, 10, 85, 10, 82, 10, 
	69, 10, 95, 10, 69, 10, 78, 10, 
	68, 10, 95, 10, 37, 10, 32, 10, 
	97, 10, 117, 10, 110, 10, 117, 10, 
	116, 10, 116, 10, 105, 10, 105, 10, 
	108, 109, 10, 101, 10, 116, 10, 101, 
	10, 116, 10, 97, 10, 97, 10, 105, 
	10, 110, 10, 97, 10, 105, 10, 115, 
	10, 117, 10, 117, 10, 115, 10, 58, 
	10, 97, 10, 112, 117, 10, 97, 10, 
	117, 10, 115, 10, 58, 97, 10, 105, 
	10, 104, 10, 105, 10, 111, 10, 115, 
	10, 116, 10, 97, 105, 104, 105, 111, 
	58, 10, 10, 10, 32, 35, 37, 42, 
	64, 74, 75, 77, 78, 79, 84, 9, 
	13, 10, 95, 10, 70, 10, 69, 10, 
	65, 10, 84, 10, 85, 10, 82, 10, 
	69, 10, 95, 10, 69, 10, 78, 10, 
	68, 10, 95, 10, 37, 10, 32, 10, 
	97, 10, 117, 10, 110, 10, 117, 10, 
	116, 10, 116, 10, 105, 10, 105, 10, 
	108, 109, 10, 101, 10, 116, 10, 101, 
	10, 116, 10, 97, 10, 97, 10, 105, 
	10, 110, 10, 97, 10, 105, 10, 115, 
	10, 117, 10, 117, 10, 115, 10, 58, 
	10, 97, 10, 112, 10, 97, 115, 116, 
	97, 58, 10, 10, 10, 32, 35, 37, 
	42, 64, 74, 75, 77, 78, 79, 84, 
	9, 13, 10, 95, 10, 70, 10, 69, 
	10, 65, 10, 84, 10, 85, 10, 82, 
	10, 69, 10, 95, 10, 69, 10, 78, 
	10, 68, 10, 95, 10, 37, 10, 32, 
	10, 97, 10, 117, 10, 110, 10, 117, 
	10, 116, 10, 116, 10, 105, 10, 105, 
	10, 108, 109, 10, 101, 10, 116, 10, 
	101, 10, 116, 10, 97, 10, 97, 10, 
	105, 10, 110, 10, 97, 10, 105, 10, 
	115, 10, 117, 10, 117, 10, 115, 10, 
	58, 10, 97, 10, 112, 10, 97, 10, 
	117, 10, 115, 10, 58, 97, 10, 105, 
	10, 104, 10, 105, 10, 111, 32, 124, 
	9, 13, 10, 32, 92, 124, 9, 13, 
	10, 92, 124, 10, 92, 10, 32, 92, 
	124, 9, 13, 10, 32, 34, 35, 37, 
	42, 64, 74, 75, 77, 78, 79, 84, 
	124, 9, 13, 10, 97, 10, 112, 117, 
	10, 97, 10, 117, 10, 107, 115, 10, 
	115, 10, 101, 10, 116, 10, 58, 97, 
	10, 105, 10, 104, 10, 105, 10, 111, 
	10, 115, 10, 116, 10, 97, 0
]

class << self
	attr_accessor :_lexer_single_lengths
	private :_lexer_single_lengths, :_lexer_single_lengths=
end
self._lexer_single_lengths = [
	0, 15, 1, 1, 14, 1, 1, 2, 
	3, 3, 3, 3, 2, 2, 2, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	2, 3, 5, 3, 1, 1, 1, 1, 
	1, 1, 1, 1, 2, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 7, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 14, 
	1, 2, 1, 1, 2, 1, 1, 1, 
	1, 1, 1, 5, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 1, 
	1, 12, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 3, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 3, 2, 2, 2, 3, 2, 
	2, 2, 2, 2, 2, 2, 1, 1, 
	1, 1, 1, 1, 1, 12, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 3, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	1, 1, 1, 1, 1, 1, 12, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 3, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 3, 2, 2, 2, 2, 
	2, 4, 3, 2, 4, 14, 2, 3, 
	2, 2, 3, 2, 2, 2, 3, 2, 
	2, 2, 2, 2, 2, 2, 0
]

class << self
	attr_accessor :_lexer_range_lengths
	private :_lexer_range_lengths, :_lexer_range_lengths=
end
self._lexer_range_lengths = [
	0, 1, 0, 0, 1, 0, 0, 1, 
	1, 1, 1, 1, 1, 1, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 1, 1, 1, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 1, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 1, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 1, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 1, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 1, 0, 0, 
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
	1, 1, 0, 0, 1, 1, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_lexer_index_offsets
	private :_lexer_index_offsets, :_lexer_index_offsets=
end
self._lexer_index_offsets = [
	0, 0, 17, 19, 21, 37, 39, 41, 
	45, 50, 55, 60, 65, 69, 73, 76, 
	78, 80, 82, 84, 86, 88, 90, 92, 
	94, 96, 98, 100, 102, 104, 106, 108, 
	110, 113, 118, 125, 130, 132, 134, 136, 
	138, 140, 142, 144, 146, 149, 151, 153, 
	155, 157, 159, 161, 163, 165, 167, 169, 
	171, 173, 175, 177, 179, 181, 183, 192, 
	195, 198, 201, 204, 207, 210, 213, 216, 
	219, 222, 225, 228, 231, 234, 237, 240, 
	243, 246, 249, 252, 255, 258, 261, 264, 
	280, 282, 285, 287, 289, 292, 294, 296, 
	298, 300, 302, 304, 311, 314, 317, 320, 
	323, 326, 329, 332, 335, 338, 341, 344, 
	346, 348, 362, 365, 368, 371, 374, 377, 
	380, 383, 386, 389, 392, 395, 398, 401, 
	404, 407, 410, 413, 416, 419, 422, 425, 
	428, 431, 435, 438, 441, 444, 447, 450, 
	453, 456, 459, 462, 465, 468, 471, 474, 
	477, 480, 483, 487, 490, 493, 496, 500, 
	503, 506, 509, 512, 515, 518, 521, 523, 
	525, 527, 529, 531, 533, 535, 549, 552, 
	555, 558, 561, 564, 567, 570, 573, 576, 
	579, 582, 585, 588, 591, 594, 597, 600, 
	603, 606, 609, 612, 615, 618, 622, 625, 
	628, 631, 634, 637, 640, 643, 646, 649, 
	652, 655, 658, 661, 664, 667, 670, 673, 
	676, 678, 680, 682, 684, 686, 688, 702, 
	705, 708, 711, 714, 717, 720, 723, 726, 
	729, 732, 735, 738, 741, 744, 747, 750, 
	753, 756, 759, 762, 765, 768, 771, 775, 
	778, 781, 784, 787, 790, 793, 796, 799, 
	802, 805, 808, 811, 814, 817, 820, 823, 
	826, 829, 832, 835, 839, 842, 845, 848, 
	851, 855, 861, 865, 868, 874, 890, 893, 
	897, 900, 903, 907, 910, 913, 916, 920, 
	923, 926, 929, 932, 935, 938, 941
]

class << self
	attr_accessor :_lexer_trans_targs
	private :_lexer_trans_targs, :_lexer_trans_targs=
end
self._lexer_trans_targs = [
	2, 4, 4, 5, 14, 16, 30, 33, 
	36, 37, 39, 42, 44, 88, 272, 4, 
	0, 3, 0, 4, 0, 4, 4, 5, 
	14, 16, 30, 33, 36, 37, 39, 42, 
	44, 88, 272, 4, 0, 6, 0, 7, 
	0, 8, 7, 7, 0, 9, 9, 10, 
	9, 9, 9, 9, 10, 9, 9, 9, 
	9, 11, 9, 9, 9, 9, 12, 9, 
	9, 4, 13, 13, 0, 4, 13, 13, 
	0, 4, 15, 14, 4, 0, 17, 0, 
	18, 0, 19, 0, 20, 0, 21, 0, 
	22, 0, 23, 0, 24, 0, 25, 0, 
	26, 0, 27, 0, 28, 0, 29, 0, 
	294, 0, 31, 0, 0, 32, 4, 15, 
	32, 0, 0, 0, 0, 34, 35, 4, 
	35, 35, 33, 34, 34, 4, 35, 33, 
	35, 0, 30, 0, 38, 0, 30, 0, 
	40, 0, 41, 0, 36, 0, 43, 0, 
	38, 0, 45, 51, 0, 46, 0, 47, 
	0, 48, 0, 49, 0, 50, 0, 38, 
	0, 52, 0, 53, 0, 54, 0, 55, 
	0, 56, 0, 57, 0, 58, 0, 59, 
	0, 60, 0, 62, 61, 62, 61, 62, 
	62, 4, 63, 4, 77, 278, 62, 61, 
	62, 64, 61, 62, 65, 61, 62, 66, 
	61, 62, 67, 61, 62, 68, 61, 62, 
	69, 61, 62, 70, 61, 62, 71, 61, 
	62, 72, 61, 62, 73, 61, 62, 74, 
	61, 62, 75, 61, 62, 76, 61, 62, 
	4, 61, 62, 78, 61, 62, 79, 61, 
	62, 80, 61, 62, 81, 61, 62, 82, 
	61, 62, 83, 61, 62, 84, 61, 62, 
	85, 61, 62, 86, 61, 62, 87, 61, 
	4, 4, 5, 14, 16, 30, 33, 36, 
	37, 39, 42, 44, 88, 272, 4, 0, 
	89, 0, 90, 216, 0, 91, 0, 92, 
	0, 93, 110, 0, 94, 0, 95, 0, 
	96, 0, 97, 0, 99, 98, 99, 98, 
	99, 99, 4, 100, 4, 99, 98, 99, 
	101, 98, 99, 102, 98, 99, 103, 98, 
	99, 104, 98, 99, 105, 98, 99, 106, 
	98, 99, 107, 98, 99, 108, 98, 99, 
	109, 98, 99, 87, 98, 111, 166, 0, 
	113, 112, 113, 112, 113, 113, 4, 114, 
	128, 4, 129, 130, 132, 135, 137, 153, 
	113, 112, 113, 115, 112, 113, 116, 112, 
	113, 117, 112, 113, 118, 112, 113, 119, 
	112, 113, 120, 112, 113, 121, 112, 113, 
	122, 112, 113, 123, 112, 113, 124, 112, 
	113, 125, 112, 113, 126, 112, 113, 127, 
	112, 113, 4, 112, 113, 87, 112, 113, 
	128, 112, 113, 131, 112, 113, 128, 112, 
	113, 133, 112, 113, 134, 112, 113, 129, 
	112, 113, 136, 112, 113, 131, 112, 113, 
	138, 144, 112, 113, 139, 112, 113, 140, 
	112, 113, 141, 112, 113, 142, 112, 113, 
	143, 112, 113, 131, 112, 113, 145, 112, 
	113, 146, 112, 113, 147, 112, 113, 148, 
	112, 113, 149, 112, 113, 150, 112, 113, 
	151, 112, 113, 152, 112, 113, 87, 112, 
	113, 154, 112, 113, 155, 163, 112, 113, 
	156, 112, 113, 157, 112, 113, 158, 112, 
	113, 87, 159, 112, 113, 160, 112, 113, 
	161, 112, 113, 162, 112, 113, 152, 112, 
	113, 164, 112, 113, 165, 112, 113, 152, 
	112, 167, 0, 168, 0, 169, 0, 170, 
	0, 171, 0, 173, 172, 173, 172, 173, 
	173, 4, 174, 188, 4, 189, 190, 192, 
	195, 197, 213, 173, 172, 173, 175, 172, 
	173, 176, 172, 173, 177, 172, 173, 178, 
	172, 173, 179, 172, 173, 180, 172, 173, 
	181, 172, 173, 182, 172, 173, 183, 172, 
	173, 184, 172, 173, 185, 172, 173, 186, 
	172, 173, 187, 172, 173, 4, 172, 173, 
	87, 172, 173, 188, 172, 173, 191, 172, 
	173, 188, 172, 173, 193, 172, 173, 194, 
	172, 173, 189, 172, 173, 196, 172, 173, 
	191, 172, 173, 198, 204, 172, 173, 199, 
	172, 173, 200, 172, 173, 201, 172, 173, 
	202, 172, 173, 203, 172, 173, 191, 172, 
	173, 205, 172, 173, 206, 172, 173, 207, 
	172, 173, 208, 172, 173, 209, 172, 173, 
	210, 172, 173, 211, 172, 173, 212, 172, 
	173, 87, 172, 173, 214, 172, 173, 215, 
	172, 173, 210, 172, 217, 0, 218, 0, 
	219, 0, 220, 0, 222, 221, 222, 221, 
	222, 222, 4, 223, 237, 4, 238, 239, 
	241, 244, 246, 262, 222, 221, 222, 224, 
	221, 222, 225, 221, 222, 226, 221, 222, 
	227, 221, 222, 228, 221, 222, 229, 221, 
	222, 230, 221, 222, 231, 221, 222, 232, 
	221, 222, 233, 221, 222, 234, 221, 222, 
	235, 221, 222, 236, 221, 222, 4, 221, 
	222, 87, 221, 222, 237, 221, 222, 240, 
	221, 222, 237, 221, 222, 242, 221, 222, 
	243, 221, 222, 238, 221, 222, 245, 221, 
	222, 240, 221, 222, 247, 253, 221, 222, 
	248, 221, 222, 249, 221, 222, 250, 221, 
	222, 251, 221, 222, 252, 221, 222, 240, 
	221, 222, 254, 221, 222, 255, 221, 222, 
	256, 221, 222, 257, 221, 222, 258, 221, 
	222, 259, 221, 222, 260, 221, 222, 261, 
	221, 222, 87, 221, 222, 263, 221, 222, 
	264, 221, 222, 265, 221, 222, 266, 221, 
	222, 267, 221, 222, 87, 268, 221, 222, 
	269, 221, 222, 270, 221, 222, 271, 221, 
	222, 261, 221, 272, 273, 272, 0, 277, 
	276, 275, 273, 276, 274, 0, 275, 273, 
	274, 0, 275, 274, 277, 276, 275, 273, 
	276, 274, 277, 277, 5, 14, 16, 30, 
	33, 36, 37, 39, 42, 44, 88, 272, 
	277, 0, 62, 279, 61, 62, 280, 291, 
	61, 62, 281, 61, 62, 282, 61, 62, 
	283, 286, 61, 62, 284, 61, 62, 285, 
	61, 62, 86, 61, 62, 87, 287, 61, 
	62, 288, 61, 62, 289, 61, 62, 290, 
	61, 62, 86, 61, 62, 292, 61, 62, 
	293, 61, 62, 86, 61, 0, 0
]

class << self
	attr_accessor :_lexer_trans_actions
	private :_lexer_trans_actions, :_lexer_trans_actions=
end
self._lexer_trans_actions = [
	0, 47, 0, 3, 1, 0, 25, 1, 
	25, 25, 25, 25, 25, 25, 31, 0, 
	39, 0, 39, 0, 39, 47, 0, 3, 
	1, 0, 25, 1, 25, 25, 25, 25, 
	25, 25, 31, 0, 39, 0, 39, 0, 
	39, 47, 0, 0, 39, 119, 41, 41, 
	41, 5, 111, 29, 29, 29, 0, 111, 
	29, 29, 29, 0, 111, 29, 0, 29, 
	0, 95, 7, 7, 39, 47, 0, 0, 
	39, 103, 21, 0, 47, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 39, 50, 99, 19, 
	0, 39, 39, 39, 39, 0, 23, 107, 
	23, 23, 44, 23, 0, 47, 0, 1, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 124, 50, 47, 0, 47, 
	0, 62, 29, 62, 77, 77, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	9, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 9, 0, 
	115, 27, 53, 50, 27, 56, 50, 56, 
	56, 56, 56, 56, 56, 59, 27, 39, 
	0, 39, 0, 0, 39, 0, 39, 0, 
	39, 0, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 124, 50, 47, 0, 
	47, 0, 74, 77, 74, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 17, 0, 0, 0, 39, 
	124, 50, 47, 0, 47, 0, 68, 29, 
	77, 68, 77, 77, 77, 77, 77, 77, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 13, 0, 47, 13, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 13, 0, 
	47, 0, 0, 47, 0, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 13, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 124, 50, 47, 0, 47, 
	0, 71, 29, 77, 71, 77, 77, 77, 
	77, 77, 77, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 15, 0, 47, 
	15, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 15, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 0, 39, 0, 39, 
	0, 39, 0, 39, 124, 50, 47, 0, 
	47, 0, 65, 29, 77, 65, 77, 77, 
	77, 77, 77, 77, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 11, 0, 
	47, 11, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 11, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 11, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 0, 0, 0, 39, 47, 
	33, 33, 80, 33, 33, 39, 0, 35, 
	0, 39, 0, 0, 47, 0, 0, 35, 
	0, 0, 47, 0, 86, 83, 37, 89, 
	83, 89, 89, 89, 89, 89, 89, 92, 
	0, 39, 47, 0, 0, 47, 0, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 9, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 0, 0
]

class << self
	attr_accessor :_lexer_eof_actions
	private :_lexer_eof_actions, :_lexer_eof_actions=
end
self._lexer_eof_actions = [
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
	39, 39, 39, 39, 39, 39, 39
]

class << self
	attr_accessor :lexer_start
end
self.lexer_start = 1;
class << self
	attr_accessor :lexer_first_final
end
self.lexer_first_final = 294;
class << self
	attr_accessor :lexer_error
end
self.lexer_error = 0;

class << self
	attr_accessor :lexer_en_main
end
self.lexer_en_main = 1;


# line 132 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
      end
 
      def scan(data)
        data = (data + "\n%_FEATURE_END_%").unpack("c*") # Explicit EOF simplifies things considerably
        eof = pe = data.length
 
        @line_number = 1
        @last_newline = 0
 
        
# line 632 "lib/gherkin/rb_lexer/fi.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = lexer_start
end

# line 142 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
        
# line 641 "lib/gherkin/rb_lexer/fi.rb"
begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_keys = _lexer_key_offsets[cs]
	_trans = _lexer_index_offsets[cs]
	_klen = _lexer_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p] < _lexer_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p] > _lexer_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _lexer_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p] < _lexer_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p] > _lexer_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	cs = _lexer_trans_targs[_trans]
	if _lexer_trans_actions[_trans] != 0
		_acts = _lexer_trans_actions[_trans]
		_nacts = _lexer_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _lexer_actions[_acts - 1]
when 0 then
# line 9 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          @content_start = p
          @current_line = @line_number
          @start_col = p - @last_newline - "#{@keyword}:".length
        		end
when 1 then
# line 15 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          @current_line = @line_number
          @start_col = p - @last_newline
        		end
when 2 then
# line 20 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          @content_start = p
        		end
when 3 then
# line 24 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          con = unindent(@start_col, utf8_pack(data[@content_start...@next_keyword_start-1]).sub(/(\r?\n)?([\t ])*\Z/, '').gsub(/\\"\\"\\"/, '"""'))
          @listener.py_string(con, @current_line) 
        		end
when 4 then
# line 29 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          
          store_keyword_content(:feature, data, p, eof) { |con| unindent(@start_col + 2, con).rstrip }
          p = @next_keyword_start - 1 if @next_keyword_start          
          @next_keyword_start = nil
        		end
when 5 then
# line 36 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          store_keyword_content(:background, data, p, eof) { |con| unindent(@start_col + 2, con).rstrip }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
when 6 then
# line 42 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          store_keyword_content(:scenario, data, p, eof) { |con| unindent(@start_col + 2, con).rstrip }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
when 7 then
# line 48 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          store_keyword_content(:scenario_outline, data, p, eof) { |con| unindent(@start_col + 2, con).rstrip }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
when 8 then
# line 54 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          store_keyword_content(:examples, data, p, eof) { |con| unindent(@start_col + 2, con).rstrip }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
when 9 then
# line 60 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.step(@keyword, con, @current_line)
        		end
when 10 then
# line 65 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.comment(con, @line_number)
          @keyword_start = nil
        		end
when 11 then
# line 71 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.tag(con, @current_line)
          @keyword_start = nil
        		end
when 12 then
# line 77 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          @line_number += 1
        		end
when 13 then
# line 81 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          @last_newline = p + 1
        		end
when 14 then
# line 85 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          @keyword_start ||= p
        		end
when 15 then
# line 89 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          @keyword = utf8_pack(data[@keyword_start...p]).sub(/:$/,'')
          @keyword_start = nil
        		end
when 16 then
# line 94 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          @next_keyword_start = p
        		end
when 17 then
# line 98 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          p = p - 1
          current_row = []
          @current_line = @line_number
        		end
when 18 then
# line 104 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          @content_start = p
        		end
when 19 then
# line 108 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          current_row << con.gsub(/\\\|/, "|").gsub(/\\n/, "\n").gsub(/\\\\/, "\\")
        		end
when 20 then
# line 113 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          @listener.row(current_row, @current_line)
        		end
when 21 then
# line 117 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise Gherkin::Lexer::LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/aslakhellesoy/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 882 "lib/gherkin/rb_lexer/fi.rb"
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	if p == eof
	__acts = _lexer_eof_actions[cs]
	__nacts =  _lexer_actions[__acts]
	__acts += 1
	while __nacts > 0
		__nacts -= 1
		__acts += 1
		case _lexer_actions[__acts - 1]
when 21 then
# line 117 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise Gherkin::Lexer::LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/aslakhellesoy/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 921 "lib/gherkin/rb_lexer/fi.rb"
		end # eof action switch
	end
	if _trigger_goto
		next
	end
end
	end
	if _goto_level <= _out
		break
	end
	end
	end

# line 143 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/fi.rb.rl"
      end

      def unindent(startcol, text)
        text.gsub(/^[\t ]{0,#{startcol}}/, "")
      end

      def store_keyword_content(event, data, p, eof)
        end_point = (!@next_keyword_start or (p == eof)) ? p : @next_keyword_start
        content = yield utf8_pack(data[@content_start...end_point])
        content_lines = content.split("\n")
        name = content_lines.shift || ""
        name.strip!
        description = content_lines.join("\n")
        @listener.__send__(event, @keyword, name, description, @current_line)
      end
      
      def current_line_content(data, p)
        rest = data[@last_newline..-1]
        utf8_pack(rest[0..rest.index(10)||-1]).strip
      end

      if (RUBY_VERSION =~ /^1\.9/)
        def utf8_pack(array)
          array.pack("c*").force_encoding("UTF-8")
        end
      else
        def utf8_pack(array)
          array.pack("c*")
        end
      end
    end
  end
end
