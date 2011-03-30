
# line 1 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
require 'gherkin/lexer/i18n_lexer'

module Gherkin
  module RbLexer
    class Hr #:nodoc:
      
# line 127 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"

 
      def initialize(listener)
        @listener = listener
        
# line 16 "lib/gherkin/rb_lexer/hr.rb"
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
	0, 0, 19, 20, 21, 39, 40, 41, 
	45, 50, 55, 60, 65, 69, 73, 75, 
	76, 77, 78, 79, 80, 81, 82, 83, 
	84, 85, 86, 87, 88, 89, 90, 91, 
	92, 94, 99, 106, 111, 112, 113, 115, 
	116, 118, 119, 120, 121, 122, 123, 124, 
	125, 126, 141, 143, 145, 147, 149, 151, 
	153, 155, 157, 159, 161, 163, 165, 167, 
	169, 171, 189, 190, 191, 192, 194, 195, 
	196, 197, 198, 199, 200, 201, 202, 214, 
	216, 218, 220, 222, 224, 226, 228, 230, 
	232, 234, 236, 238, 240, 242, 244, 246, 
	248, 250, 252, 254, 256, 258, 260, 262, 
	265, 267, 269, 271, 273, 275, 277, 279, 
	281, 283, 285, 288, 290, 292, 294, 296, 
	298, 300, 302, 304, 306, 309, 311, 313, 
	315, 317, 319, 321, 324, 326, 328, 330, 
	331, 332, 333, 334, 335, 336, 337, 339, 
	340, 341, 342, 343, 344, 345, 346, 347, 
	348, 363, 365, 367, 369, 371, 373, 375, 
	377, 379, 381, 383, 385, 387, 389, 391, 
	393, 395, 397, 400, 402, 405, 407, 409, 
	411, 413, 415, 417, 419, 421, 423, 426, 
	428, 430, 432, 434, 437, 439, 441, 443, 
	445, 447, 449, 451, 454, 456, 458, 460, 
	462, 464, 466, 468, 470, 472, 474, 476, 
	478, 482, 483, 484, 485, 486, 487, 488, 
	489, 490, 491, 499, 501, 503, 505, 508, 
	510, 512, 514, 516, 518, 520, 522, 524, 
	526, 528, 530, 532, 534, 535, 536, 537, 
	538, 539, 540, 542, 543, 544, 560, 562, 
	564, 566, 568, 570, 572, 574, 576, 578, 
	580, 582, 584, 586, 588, 590, 592, 594, 
	597, 599, 602, 604, 606, 608, 610, 612, 
	614, 616, 618, 620, 623, 625, 627, 629, 
	631, 634, 636, 638, 640, 642, 644, 646, 
	648, 650, 652, 654, 656, 659, 661, 663, 
	665, 667, 669, 671, 673, 675, 677, 679, 
	681, 683, 687, 688, 689, 690, 691, 692, 
	693, 694, 697, 701, 707, 710, 712, 718, 
	736, 738, 740, 742, 744, 747, 749, 751, 
	753, 756, 758, 760, 762, 764, 766, 768, 
	771, 773, 775, 777, 779, 781, 783, 785, 
	787, 789, 791, 793, 795, 797, 799, 801, 
	803, 805, 807, 811
]

class << self
	attr_accessor :_lexer_trans_keys
	private :_lexer_trans_keys, :_lexer_trans_keys=
end
self._lexer_trans_keys = [
	-17, 10, 32, 34, 35, 37, 42, 64, 
	65, 73, 75, 77, 79, 80, 83, 90, 
	124, 9, 13, -69, -65, 10, 32, 34, 
	35, 37, 42, 64, 65, 73, 75, 77, 
	79, 80, 83, 90, 124, 9, 13, 34, 
	34, 10, 32, 9, 13, 10, 32, 34, 
	9, 13, 10, 32, 34, 9, 13, 10, 
	32, 34, 9, 13, 10, 32, 34, 9, 
	13, 10, 32, 9, 13, 10, 32, 9, 
	13, 10, 13, 10, 95, 70, 69, 65, 
	84, 85, 82, 69, 95, 69, 78, 68, 
	95, 37, 32, 10, 10, 13, 13, 32, 
	64, 9, 10, 9, 10, 13, 32, 64, 
	11, 12, 10, 32, 64, 9, 13, 108, 
	105, 97, 111, 100, 32, 97, 110, 99, 
	101, 112, 116, 58, 10, 10, 10, 32, 
	35, 37, 42, 64, 65, 73, 75, 77, 
	79, 83, 90, 9, 13, 10, 95, 10, 
	70, 10, 69, 10, 65, 10, 84, 10, 
	85, 10, 82, 10, 69, 10, 95, 10, 
	69, 10, 78, 10, 68, 10, 95, 10, 
	37, 10, 32, 10, 32, 34, 35, 37, 
	42, 64, 65, 73, 75, 77, 79, 80, 
	83, 90, 124, 9, 13, 111, 103, 117, 
	-60, 99, -121, 110, 111, 115, 116, 58, 
	10, 10, 10, 32, 35, 37, 64, 75, 
	77, 79, 80, 83, 9, 13, 10, 95, 
	10, 70, 10, 69, 10, 65, 10, 84, 
	10, 85, 10, 82, 10, 69, 10, 95, 
	10, 69, 10, 78, 10, 68, 10, 95, 
	10, 37, 10, 111, 10, 110, 10, 99, 
	10, 101, 10, 112, 10, 116, 10, 58, 
	10, 111, 10, 103, 10, 117, -60, 10, 
	99, -121, 10, 10, 110, 10, 111, 10, 
	115, 10, 115, 10, 111, 10, 98, 10, 
	105, 10, 110, 10, 97, 10, 111, 114, 
	10, 122, 10, 97, 10, 100, 10, 105, 
	10, 109, 10, 106, 10, 101, 10, 114, 
	10, 105, 10, 99, 107, 10, 101, 10, 
	110, 10, 97, 10, 114, 10, 105, 10, 
	106, 10, 58, 105, 10, 105, 10, 99, 
	110, 115, 100, 97, 111, 98, 105, 110, 
	97, 111, 114, 122, 97, 100, 105, 110, 
	97, 58, 10, 10, 10, 32, 35, 37, 
	42, 64, 65, 73, 75, 77, 79, 83, 
	90, 9, 13, 10, 95, 10, 70, 10, 
	69, 10, 65, 10, 84, 10, 85, 10, 
	82, 10, 69, 10, 95, 10, 69, 10, 
	78, 10, 68, 10, 95, 10, 37, 10, 
	32, 10, 108, 10, 105, 10, 97, 111, 
	10, 100, 10, 32, 97, 10, 110, 10, 
	99, 10, 101, 10, 112, 10, 116, 10, 
	58, 10, 111, 10, 103, 10, 117, -60, 
	10, 99, -121, 10, 10, 110, 10, 111, 
	10, 115, 10, 110, 115, 10, 100, 10, 
	97, 10, 111, 10, 98, 10, 105, 10, 
	110, 10, 97, 10, 99, 107, 10, 101, 
	10, 110, 10, 97, 10, 114, 10, 105, 
	10, 106, 10, 105, 10, 99, 10, 97, 
	10, 100, 10, 97, 10, 110, 10, 32, 
	105, 111, 105, 109, 106, 101, 114, 105, 
	58, 10, 10, 10, 32, 35, 77, 79, 
	124, 9, 13, 10, 111, 10, 103, 10, 
	117, -60, 10, 99, -121, 10, 10, 110, 
	10, 111, 10, 115, 10, 116, 10, 58, 
	10, 115, 10, 111, 10, 98, 10, 105, 
	10, 110, 10, 97, 99, 107, 101, 110, 
	97, 114, 105, 106, 58, 105, 10, 10, 
	10, 32, 35, 37, 42, 64, 65, 73, 
	75, 77, 79, 80, 83, 90, 9, 13, 
	10, 95, 10, 70, 10, 69, 10, 65, 
	10, 84, 10, 85, 10, 82, 10, 69, 
	10, 95, 10, 69, 10, 78, 10, 68, 
	10, 95, 10, 37, 10, 32, 10, 108, 
	10, 105, 10, 97, 111, 10, 100, 10, 
	32, 97, 10, 110, 10, 99, 10, 101, 
	10, 112, 10, 116, 10, 58, 10, 111, 
	10, 103, 10, 117, -60, 10, 99, -121, 
	10, 10, 110, 10, 111, 10, 115, 10, 
	110, 115, 10, 100, 10, 97, 10, 111, 
	10, 98, 10, 105, 10, 110, 10, 97, 
	10, 111, 10, 122, 10, 97, 10, 100, 
	10, 99, 107, 10, 101, 10, 110, 10, 
	97, 10, 114, 10, 105, 10, 106, 10, 
	105, 10, 99, 10, 97, 10, 100, 10, 
	97, 10, 110, 10, 32, 105, 111, 105, 
	99, 97, 97, 100, 97, 110, 32, 105, 
	111, 32, 124, 9, 13, 10, 32, 92, 
	124, 9, 13, 10, 92, 124, 10, 92, 
	10, 32, 92, 124, 9, 13, 10, 32, 
	34, 35, 37, 42, 64, 65, 73, 75, 
	77, 79, 80, 83, 90, 124, 9, 13, 
	10, 108, 10, 105, 10, 97, 10, 100, 
	10, 32, 97, 10, 111, 10, 103, 10, 
	117, -60, 10, 99, -121, 10, 10, 110, 
	10, 111, 10, 115, 10, 116, 10, 58, 
	10, 110, 115, 10, 100, 10, 97, 10, 
	111, 10, 98, 10, 105, 10, 110, 10, 
	97, 10, 99, 10, 101, 10, 110, 10, 
	97, 10, 114, 10, 105, 10, 106, 10, 
	97, 10, 100, 10, 97, 10, 110, 10, 
	32, 105, 111, 0
]

class << self
	attr_accessor :_lexer_single_lengths
	private :_lexer_single_lengths, :_lexer_single_lengths=
end
self._lexer_single_lengths = [
	0, 17, 1, 1, 16, 1, 1, 2, 
	3, 3, 3, 3, 2, 2, 2, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	2, 3, 5, 3, 1, 1, 2, 1, 
	2, 1, 1, 1, 1, 1, 1, 1, 
	1, 13, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 16, 1, 1, 1, 2, 1, 1, 
	1, 1, 1, 1, 1, 1, 10, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 3, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 3, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 3, 2, 2, 2, 
	2, 2, 2, 3, 2, 2, 2, 1, 
	1, 1, 1, 1, 1, 1, 2, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	13, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 3, 2, 3, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 3, 2, 
	2, 2, 2, 3, 2, 2, 2, 2, 
	2, 2, 2, 3, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	4, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 6, 2, 2, 2, 3, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 1, 1, 1, 1, 
	1, 1, 2, 1, 1, 14, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 3, 
	2, 3, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 3, 2, 2, 2, 2, 
	3, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 3, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 4, 1, 1, 1, 1, 1, 1, 
	1, 3, 2, 4, 3, 2, 4, 16, 
	2, 2, 2, 2, 3, 2, 2, 2, 
	3, 2, 2, 2, 2, 2, 2, 3, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 4, 0
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
	0, 1, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 1, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 1, 0, 
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
	0, 0, 1, 0, 0, 0, 0, 0, 
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
	0, 0, 1, 1, 0, 0, 1, 1, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0
]

class << self
	attr_accessor :_lexer_index_offsets
	private :_lexer_index_offsets, :_lexer_index_offsets=
end
self._lexer_index_offsets = [
	0, 0, 19, 21, 23, 41, 43, 45, 
	49, 54, 59, 64, 69, 73, 77, 80, 
	82, 84, 86, 88, 90, 92, 94, 96, 
	98, 100, 102, 104, 106, 108, 110, 112, 
	114, 117, 122, 129, 134, 136, 138, 141, 
	143, 146, 148, 150, 152, 154, 156, 158, 
	160, 162, 177, 180, 183, 186, 189, 192, 
	195, 198, 201, 204, 207, 210, 213, 216, 
	219, 222, 240, 242, 244, 246, 249, 251, 
	253, 255, 257, 259, 261, 263, 265, 277, 
	280, 283, 286, 289, 292, 295, 298, 301, 
	304, 307, 310, 313, 316, 319, 322, 325, 
	328, 331, 334, 337, 340, 343, 346, 349, 
	353, 356, 359, 362, 365, 368, 371, 374, 
	377, 380, 383, 387, 390, 393, 396, 399, 
	402, 405, 408, 411, 414, 418, 421, 424, 
	427, 430, 433, 436, 440, 443, 446, 449, 
	451, 453, 455, 457, 459, 461, 463, 466, 
	468, 470, 472, 474, 476, 478, 480, 482, 
	484, 499, 502, 505, 508, 511, 514, 517, 
	520, 523, 526, 529, 532, 535, 538, 541, 
	544, 547, 550, 554, 557, 561, 564, 567, 
	570, 573, 576, 579, 582, 585, 588, 592, 
	595, 598, 601, 604, 608, 611, 614, 617, 
	620, 623, 626, 629, 633, 636, 639, 642, 
	645, 648, 651, 654, 657, 660, 663, 666, 
	669, 674, 676, 678, 680, 682, 684, 686, 
	688, 690, 692, 700, 703, 706, 709, 713, 
	716, 719, 722, 725, 728, 731, 734, 737, 
	740, 743, 746, 749, 752, 754, 756, 758, 
	760, 762, 764, 767, 769, 771, 787, 790, 
	793, 796, 799, 802, 805, 808, 811, 814, 
	817, 820, 823, 826, 829, 832, 835, 838, 
	842, 845, 849, 852, 855, 858, 861, 864, 
	867, 870, 873, 876, 880, 883, 886, 889, 
	892, 896, 899, 902, 905, 908, 911, 914, 
	917, 920, 923, 926, 929, 933, 936, 939, 
	942, 945, 948, 951, 954, 957, 960, 963, 
	966, 969, 974, 976, 978, 980, 982, 984, 
	986, 988, 992, 996, 1002, 1006, 1009, 1015, 
	1033, 1036, 1039, 1042, 1045, 1049, 1052, 1055, 
	1058, 1062, 1065, 1068, 1071, 1074, 1077, 1080, 
	1084, 1087, 1090, 1093, 1096, 1099, 1102, 1105, 
	1108, 1111, 1114, 1117, 1120, 1123, 1126, 1129, 
	1132, 1135, 1138, 1143
]

class << self
	attr_accessor :_lexer_trans_targs
	private :_lexer_trans_targs, :_lexer_trans_targs=
end
self._lexer_trans_targs = [
	2, 4, 4, 5, 14, 16, 30, 33, 
	36, 30, 38, 66, 134, 142, 235, 309, 
	314, 4, 0, 3, 0, 4, 0, 4, 
	4, 5, 14, 16, 30, 33, 36, 30, 
	38, 66, 134, 142, 235, 309, 314, 4, 
	0, 6, 0, 7, 0, 8, 7, 7, 
	0, 9, 9, 10, 9, 9, 9, 9, 
	10, 9, 9, 9, 9, 11, 9, 9, 
	9, 9, 12, 9, 9, 4, 13, 13, 
	0, 4, 13, 13, 0, 4, 15, 14, 
	4, 0, 17, 0, 18, 0, 19, 0, 
	20, 0, 21, 0, 22, 0, 23, 0, 
	24, 0, 25, 0, 26, 0, 27, 0, 
	28, 0, 29, 0, 355, 0, 31, 0, 
	0, 32, 4, 15, 32, 0, 0, 0, 
	0, 34, 35, 4, 35, 35, 33, 34, 
	34, 4, 35, 33, 35, 0, 37, 0, 
	30, 0, 39, 41, 0, 40, 0, 31, 
	30, 0, 42, 0, 43, 0, 44, 0, 
	45, 0, 46, 0, 47, 0, 49, 48, 
	49, 48, 49, 49, 4, 50, 64, 4, 
	320, 64, 322, 325, 335, 343, 350, 49, 
	48, 49, 51, 48, 49, 52, 48, 49, 
	53, 48, 49, 54, 48, 49, 55, 48, 
	49, 56, 48, 49, 57, 48, 49, 58, 
	48, 49, 59, 48, 49, 60, 48, 49, 
	61, 48, 49, 62, 48, 49, 63, 48, 
	49, 4, 48, 49, 65, 48, 4, 4, 
	5, 14, 16, 30, 33, 36, 30, 38, 
	66, 134, 142, 235, 309, 314, 4, 0, 
	67, 0, 68, 0, 69, 0, 70, 71, 
	0, 71, 0, 72, 0, 73, 0, 74, 
	0, 75, 0, 76, 0, 78, 77, 78, 
	77, 78, 78, 4, 79, 4, 93, 100, 
	108, 114, 124, 78, 77, 78, 80, 77, 
	78, 81, 77, 78, 82, 77, 78, 83, 
	77, 78, 84, 77, 78, 85, 77, 78, 
	86, 77, 78, 87, 77, 78, 88, 77, 
	78, 89, 77, 78, 90, 77, 78, 91, 
	77, 78, 92, 77, 78, 4, 77, 78, 
	94, 77, 78, 95, 77, 78, 96, 77, 
	78, 97, 77, 78, 98, 77, 78, 99, 
	77, 78, 65, 77, 78, 101, 77, 78, 
	102, 77, 78, 103, 77, 104, 78, 105, 
	77, 105, 78, 77, 78, 106, 77, 78, 
	107, 77, 78, 98, 77, 78, 109, 77, 
	78, 110, 77, 78, 111, 77, 78, 112, 
	77, 78, 113, 77, 78, 99, 77, 78, 
	115, 118, 77, 78, 116, 77, 78, 117, 
	77, 78, 111, 77, 78, 119, 77, 78, 
	120, 77, 78, 121, 77, 78, 122, 77, 
	78, 123, 77, 78, 99, 77, 78, 125, 
	132, 77, 78, 126, 77, 78, 127, 77, 
	78, 128, 77, 78, 129, 77, 78, 130, 
	77, 78, 131, 77, 78, 65, 99, 77, 
	78, 133, 77, 78, 113, 77, 135, 137, 
	0, 136, 0, 30, 0, 138, 0, 139, 
	0, 140, 0, 141, 0, 75, 0, 143, 
	209, 0, 144, 0, 145, 0, 146, 0, 
	147, 0, 148, 0, 149, 0, 150, 0, 
	152, 151, 152, 151, 152, 152, 4, 153, 
	167, 4, 168, 167, 170, 179, 187, 195, 
	204, 152, 151, 152, 154, 151, 152, 155, 
	151, 152, 156, 151, 152, 157, 151, 152, 
	158, 151, 152, 159, 151, 152, 160, 151, 
	152, 161, 151, 152, 162, 151, 152, 163, 
	151, 152, 164, 151, 152, 165, 151, 152, 
	166, 151, 152, 4, 151, 152, 65, 151, 
	152, 169, 151, 152, 167, 151, 152, 171, 
	173, 151, 152, 172, 151, 152, 65, 167, 
	151, 152, 174, 151, 152, 175, 151, 152, 
	176, 151, 152, 177, 151, 152, 178, 151, 
	152, 65, 151, 152, 180, 151, 152, 181, 
	151, 152, 182, 151, 183, 152, 184, 151, 
	184, 152, 151, 152, 185, 151, 152, 186, 
	151, 152, 177, 151, 152, 188, 190, 151, 
	152, 189, 151, 152, 167, 151, 152, 191, 
	151, 152, 192, 151, 152, 193, 151, 152, 
	194, 151, 152, 178, 151, 152, 196, 202, 
	151, 152, 197, 151, 152, 198, 151, 152, 
	199, 151, 152, 200, 151, 152, 201, 151, 
	152, 178, 151, 152, 203, 151, 152, 194, 
	151, 152, 205, 151, 152, 206, 151, 152, 
	207, 151, 152, 208, 151, 152, 65, 167, 
	167, 151, 210, 0, 211, 0, 212, 0, 
	213, 0, 214, 0, 215, 0, 216, 0, 
	218, 217, 218, 217, 218, 218, 4, 219, 
	229, 4, 218, 217, 218, 220, 217, 218, 
	221, 217, 218, 222, 217, 223, 218, 224, 
	217, 224, 218, 217, 218, 225, 217, 218, 
	226, 217, 218, 227, 217, 218, 228, 217, 
	218, 65, 217, 218, 230, 217, 218, 231, 
	217, 218, 232, 217, 218, 233, 217, 218, 
	234, 217, 218, 228, 217, 236, 306, 0, 
	237, 0, 238, 0, 239, 0, 240, 0, 
	241, 0, 242, 0, 243, 215, 0, 245, 
	244, 245, 244, 245, 245, 4, 246, 260, 
	4, 261, 260, 263, 272, 280, 288, 292, 
	301, 245, 244, 245, 247, 244, 245, 248, 
	244, 245, 249, 244, 245, 250, 244, 245, 
	251, 244, 245, 252, 244, 245, 253, 244, 
	245, 254, 244, 245, 255, 244, 245, 256, 
	244, 245, 257, 244, 245, 258, 244, 245, 
	259, 244, 245, 4, 244, 245, 65, 244, 
	245, 262, 244, 245, 260, 244, 245, 264, 
	266, 244, 245, 265, 244, 245, 65, 260, 
	244, 245, 267, 244, 245, 268, 244, 245, 
	269, 244, 245, 270, 244, 245, 271, 244, 
	245, 65, 244, 245, 273, 244, 245, 274, 
	244, 245, 275, 244, 276, 245, 277, 244, 
	277, 245, 244, 245, 278, 244, 245, 279, 
	244, 245, 270, 244, 245, 281, 283, 244, 
	245, 282, 244, 245, 260, 244, 245, 284, 
	244, 245, 285, 244, 245, 286, 244, 245, 
	287, 244, 245, 271, 244, 245, 289, 244, 
	245, 290, 244, 245, 291, 244, 245, 285, 
	244, 245, 293, 299, 244, 245, 294, 244, 
	245, 295, 244, 245, 296, 244, 245, 297, 
	244, 245, 298, 244, 245, 271, 244, 245, 
	300, 244, 245, 287, 244, 245, 302, 244, 
	245, 303, 244, 245, 304, 244, 245, 305, 
	244, 245, 65, 260, 260, 244, 307, 0, 
	308, 0, 46, 0, 310, 0, 311, 0, 
	312, 0, 313, 0, 31, 30, 30, 0, 
	314, 315, 314, 0, 319, 318, 317, 315, 
	318, 316, 0, 317, 315, 316, 0, 317, 
	316, 319, 318, 317, 315, 318, 316, 319, 
	319, 5, 14, 16, 30, 33, 36, 30, 
	38, 66, 134, 142, 235, 309, 314, 319, 
	0, 49, 321, 48, 49, 64, 48, 49, 
	323, 48, 49, 324, 48, 49, 65, 64, 
	48, 49, 326, 48, 49, 327, 48, 49, 
	328, 48, 329, 49, 330, 48, 330, 49, 
	48, 49, 331, 48, 49, 332, 48, 49, 
	333, 48, 49, 334, 48, 49, 65, 48, 
	49, 336, 338, 48, 49, 337, 48, 49, 
	64, 48, 49, 339, 48, 49, 340, 48, 
	49, 341, 48, 49, 342, 48, 49, 334, 
	48, 49, 344, 48, 49, 345, 48, 49, 
	346, 48, 49, 347, 48, 49, 348, 48, 
	49, 349, 48, 49, 334, 48, 49, 351, 
	48, 49, 352, 48, 49, 353, 48, 49, 
	354, 48, 49, 65, 64, 64, 48, 0, 
	0
]

class << self
	attr_accessor :_lexer_trans_actions
	private :_lexer_trans_actions, :_lexer_trans_actions=
end
self._lexer_trans_actions = [
	0, 47, 0, 3, 1, 0, 25, 1, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	31, 0, 39, 0, 39, 0, 39, 47, 
	0, 3, 1, 0, 25, 1, 25, 25, 
	25, 25, 25, 25, 25, 25, 31, 0, 
	39, 0, 39, 0, 39, 47, 0, 0, 
	39, 119, 41, 41, 41, 5, 111, 29, 
	29, 29, 0, 111, 29, 29, 29, 0, 
	111, 29, 0, 29, 0, 95, 7, 7, 
	39, 47, 0, 0, 39, 103, 21, 0, 
	47, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	39, 50, 99, 19, 0, 39, 39, 39, 
	39, 0, 23, 107, 23, 23, 44, 23, 
	0, 47, 0, 1, 0, 39, 0, 39, 
	0, 39, 0, 0, 39, 0, 39, 0, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 124, 50, 
	47, 0, 47, 0, 71, 29, 77, 71, 
	77, 77, 77, 77, 77, 77, 77, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 15, 0, 47, 15, 0, 115, 27, 
	53, 50, 27, 56, 50, 56, 56, 56, 
	56, 56, 56, 56, 56, 59, 27, 39, 
	0, 39, 0, 39, 0, 39, 0, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 124, 50, 47, 
	0, 47, 0, 62, 29, 62, 77, 77, 
	77, 77, 77, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 9, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 9, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 0, 47, 0, 
	0, 0, 47, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 9, 0, 0, 
	47, 0, 0, 47, 0, 0, 0, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	124, 50, 47, 0, 47, 0, 65, 29, 
	77, 65, 77, 77, 77, 77, 77, 77, 
	77, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 11, 0, 47, 11, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 0, 47, 0, 0, 47, 11, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 11, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 0, 47, 0, 0, 
	0, 47, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 11, 0, 
	0, 0, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	124, 50, 47, 0, 47, 0, 74, 77, 
	77, 74, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 0, 47, 0, 
	0, 0, 47, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 17, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 0, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 0, 39, 124, 
	50, 47, 0, 47, 0, 68, 29, 77, 
	68, 77, 77, 77, 77, 77, 77, 77, 
	77, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 13, 0, 47, 13, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 0, 47, 0, 0, 47, 13, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 13, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 0, 47, 0, 0, 
	0, 47, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 13, 0, 0, 0, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 0, 0, 39, 
	0, 0, 0, 39, 47, 33, 33, 80, 
	33, 33, 39, 0, 35, 0, 39, 0, 
	0, 47, 0, 0, 35, 0, 0, 47, 
	0, 86, 83, 37, 89, 83, 89, 89, 
	89, 89, 89, 89, 89, 89, 92, 0, 
	39, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 15, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 0, 47, 0, 0, 0, 47, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 15, 0, 
	47, 0, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 15, 0, 0, 0, 0, 
	0
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
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39
]

class << self
	attr_accessor :lexer_start
end
self.lexer_start = 1;
class << self
	attr_accessor :lexer_first_final
end
self.lexer_first_final = 355;
class << self
	attr_accessor :lexer_error
end
self.lexer_error = 0;

class << self
	attr_accessor :lexer_en_main
end
self.lexer_en_main = 1;


# line 132 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
      end
 
      def scan(data)
        data = (data + "\n%_FEATURE_END_%").unpack("c*") # Explicit EOF simplifies things considerably
        eof = pe = data.length
 
        @line_number = 1
        @last_newline = 0
 
        
# line 742 "lib/gherkin/rb_lexer/hr.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = lexer_start
end

# line 142 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
        
# line 751 "lib/gherkin/rb_lexer/hr.rb"
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
# line 9 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          @content_start = p
          @current_line = @line_number
          @start_col = p - @last_newline - "#{@keyword}:".length
        		end
when 1 then
# line 15 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          @current_line = @line_number
          @start_col = p - @last_newline
        		end
when 2 then
# line 20 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          @content_start = p
        		end
when 3 then
# line 24 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          con = unindent(@start_col, utf8_pack(data[@content_start...@next_keyword_start-1]).sub(/(\r?\n)?([\t ])*\Z/, '').gsub(/\\"\\"\\"/, '"""'))
          @listener.py_string(con, @current_line) 
        		end
when 4 then
# line 29 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          
          store_keyword_content(:feature, data, p, eof) { |con| unindent(@start_col + 2, con).rstrip }
          p = @next_keyword_start - 1 if @next_keyword_start          
          @next_keyword_start = nil
        		end
when 5 then
# line 36 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          store_keyword_content(:background, data, p, eof) { |con| unindent(@start_col + 2, con).rstrip }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
when 6 then
# line 42 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          store_keyword_content(:scenario, data, p, eof) { |con| unindent(@start_col + 2, con).rstrip }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
when 7 then
# line 48 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          store_keyword_content(:scenario_outline, data, p, eof) { |con| unindent(@start_col + 2, con).rstrip }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
when 8 then
# line 54 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          store_keyword_content(:examples, data, p, eof) { |con| unindent(@start_col + 2, con).rstrip }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
when 9 then
# line 60 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.step(@keyword, con, @current_line)
        		end
when 10 then
# line 65 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.comment(con, @line_number)
          @keyword_start = nil
        		end
when 11 then
# line 71 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.tag(con, @current_line)
          @keyword_start = nil
        		end
when 12 then
# line 77 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          @line_number += 1
        		end
when 13 then
# line 81 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          @last_newline = p + 1
        		end
when 14 then
# line 85 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          @keyword_start ||= p
        		end
when 15 then
# line 89 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          @keyword = utf8_pack(data[@keyword_start...p]).sub(/:$/,'')
          @keyword_start = nil
        		end
when 16 then
# line 94 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          @next_keyword_start = p
        		end
when 17 then
# line 98 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          p = p - 1
          current_row = []
          @current_line = @line_number
        		end
when 18 then
# line 104 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          @content_start = p
        		end
when 19 then
# line 108 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          current_row << con.gsub(/\\\|/, "|").gsub(/\\n/, "\n").gsub(/\\\\/, "\\")
        		end
when 20 then
# line 113 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          @listener.row(current_row, @current_line)
        		end
when 21 then
# line 117 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise Gherkin::Lexer::LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/aslakhellesoy/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 992 "lib/gherkin/rb_lexer/hr.rb"
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
# line 117 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise Gherkin::Lexer::LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/aslakhellesoy/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 1031 "lib/gherkin/rb_lexer/hr.rb"
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

# line 143 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/hr.rb.rl"
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
