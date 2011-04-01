
# line 1 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
require 'gherkin/lexer/i18n_lexer'

module Gherkin
  module RbLexer
    class En #:nodoc:
      
# line 127 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"

 
      def initialize(listener)
        @listener = listener
        
# line 16 "lib/gherkin/rb_lexer/en.rb"
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
	116, 117, 118, 119, 120, 121, 122, 123, 
	124, 125, 126, 141, 143, 145, 147, 149, 
	151, 153, 155, 157, 159, 161, 163, 165, 
	167, 169, 171, 189, 190, 191, 192, 193, 
	194, 195, 196, 197, 198, 199, 206, 208, 
	210, 212, 214, 216, 218, 220, 221, 222, 
	223, 224, 225, 226, 227, 228, 229, 240, 
	242, 244, 246, 248, 250, 252, 254, 256, 
	258, 260, 262, 264, 266, 268, 270, 272, 
	274, 276, 278, 280, 282, 284, 286, 288, 
	290, 292, 294, 296, 298, 300, 302, 304, 
	306, 308, 310, 312, 314, 316, 318, 320, 
	322, 324, 326, 328, 332, 335, 337, 339, 
	341, 343, 345, 347, 349, 351, 353, 355, 
	357, 358, 359, 360, 361, 362, 363, 364, 
	365, 366, 367, 368, 371, 373, 374, 375, 
	376, 377, 378, 379, 380, 381, 382, 397, 
	399, 401, 403, 405, 407, 409, 411, 413, 
	415, 417, 419, 421, 423, 425, 427, 429, 
	431, 433, 435, 437, 439, 441, 443, 445, 
	447, 449, 451, 453, 455, 457, 459, 461, 
	463, 465, 467, 469, 471, 473, 474, 475, 
	476, 477, 478, 479, 480, 481, 496, 498, 
	500, 502, 504, 506, 508, 510, 512, 514, 
	516, 518, 520, 522, 524, 526, 528, 530, 
	533, 535, 537, 539, 541, 543, 545, 547, 
	549, 551, 553, 555, 557, 559, 561, 563, 
	565, 567, 569, 571, 573, 575, 577, 579, 
	581, 583, 585, 587, 590, 593, 595, 597, 
	599, 601, 603, 605, 607, 609, 611, 613, 
	615, 617, 618, 622, 628, 631, 633, 639, 
	657, 659, 661, 663, 665, 667, 669, 671, 
	673, 675, 677, 679, 681, 683, 685, 687, 
	689, 691, 693, 695, 697, 699, 701, 704, 
	707, 709, 711, 713, 715, 717, 719, 721, 
	723, 725, 727, 729, 731, 732
]

class << self
	attr_accessor :_lexer_trans_keys
	private :_lexer_trans_keys, :_lexer_trans_keys=
end
self._lexer_trans_keys = [
	-17, 10, 32, 34, 35, 37, 42, 64, 
	65, 66, 69, 70, 71, 83, 84, 87, 
	124, 9, 13, -69, -65, 10, 32, 34, 
	35, 37, 42, 64, 65, 66, 69, 70, 
	71, 83, 84, 87, 124, 9, 13, 34, 
	34, 10, 32, 9, 13, 10, 32, 34, 
	9, 13, 10, 32, 34, 9, 13, 10, 
	32, 34, 9, 13, 10, 32, 34, 9, 
	13, 10, 32, 9, 13, 10, 32, 9, 
	13, 10, 13, 10, 95, 70, 69, 65, 
	84, 85, 82, 69, 95, 69, 78, 68, 
	95, 37, 32, 10, 10, 13, 13, 32, 
	64, 9, 10, 9, 10, 13, 32, 64, 
	11, 12, 10, 32, 64, 9, 13, 110, 
	100, 97, 117, 99, 107, 103, 114, 111, 
	117, 110, 100, 58, 10, 10, 10, 32, 
	35, 37, 42, 64, 65, 66, 70, 71, 
	83, 84, 87, 9, 13, 10, 95, 10, 
	70, 10, 69, 10, 65, 10, 84, 10, 
	85, 10, 82, 10, 69, 10, 95, 10, 
	69, 10, 78, 10, 68, 10, 95, 10, 
	37, 10, 32, 10, 32, 34, 35, 37, 
	42, 64, 65, 66, 69, 70, 71, 83, 
	84, 87, 124, 9, 13, 120, 97, 109, 
	112, 108, 101, 115, 58, 10, 10, 10, 
	32, 35, 70, 124, 9, 13, 10, 101, 
	10, 97, 10, 116, 10, 117, 10, 114, 
	10, 101, 10, 58, 101, 97, 116, 117, 
	114, 101, 58, 10, 10, 10, 32, 35, 
	37, 64, 66, 69, 70, 83, 9, 13, 
	10, 95, 10, 70, 10, 69, 10, 65, 
	10, 84, 10, 85, 10, 82, 10, 69, 
	10, 95, 10, 69, 10, 78, 10, 68, 
	10, 95, 10, 37, 10, 97, 10, 99, 
	10, 107, 10, 103, 10, 114, 10, 111, 
	10, 117, 10, 110, 10, 100, 10, 58, 
	10, 120, 10, 97, 10, 109, 10, 112, 
	10, 108, 10, 101, 10, 115, 10, 101, 
	10, 97, 10, 116, 10, 117, 10, 114, 
	10, 101, 10, 99, 10, 101, 10, 110, 
	10, 97, 10, 114, 10, 105, 10, 111, 
	10, 32, 58, 115, 10, 79, 84, 10, 
	117, 10, 116, 10, 108, 10, 105, 10, 
	110, 10, 101, 10, 109, 10, 112, 10, 
	108, 10, 97, 10, 116, 105, 118, 101, 
	110, 99, 101, 110, 97, 114, 105, 111, 
	32, 58, 115, 79, 84, 117, 116, 108, 
	105, 110, 101, 58, 10, 10, 10, 32, 
	35, 37, 42, 64, 65, 66, 70, 71, 
	83, 84, 87, 9, 13, 10, 95, 10, 
	70, 10, 69, 10, 65, 10, 84, 10, 
	85, 10, 82, 10, 69, 10, 95, 10, 
	69, 10, 78, 10, 68, 10, 95, 10, 
	37, 10, 32, 10, 110, 10, 100, 10, 
	117, 10, 116, 10, 101, 10, 97, 10, 
	116, 10, 117, 10, 114, 10, 101, 10, 
	58, 10, 105, 10, 118, 10, 101, 10, 
	110, 10, 99, 10, 101, 10, 110, 10, 
	97, 10, 114, 10, 105, 10, 111, 10, 
	104, 101, 109, 112, 108, 97, 116, 10, 
	10, 10, 32, 35, 37, 42, 64, 65, 
	66, 70, 71, 83, 84, 87, 9, 13, 
	10, 95, 10, 70, 10, 69, 10, 65, 
	10, 84, 10, 85, 10, 82, 10, 69, 
	10, 95, 10, 69, 10, 78, 10, 68, 
	10, 95, 10, 37, 10, 32, 10, 110, 
	10, 100, 10, 97, 117, 10, 99, 10, 
	107, 10, 103, 10, 114, 10, 111, 10, 
	117, 10, 110, 10, 100, 10, 58, 10, 
	116, 10, 101, 10, 97, 10, 116, 10, 
	117, 10, 114, 10, 101, 10, 105, 10, 
	118, 10, 101, 10, 110, 10, 99, 10, 
	101, 10, 110, 10, 97, 10, 114, 10, 
	105, 10, 111, 10, 32, 58, 10, 79, 
	84, 10, 117, 10, 116, 10, 108, 10, 
	105, 10, 110, 10, 101, 10, 109, 10, 
	112, 10, 108, 10, 97, 10, 116, 10, 
	104, 104, 32, 124, 9, 13, 10, 32, 
	92, 124, 9, 13, 10, 92, 124, 10, 
	92, 10, 32, 92, 124, 9, 13, 10, 
	32, 34, 35, 37, 42, 64, 65, 66, 
	69, 70, 71, 83, 84, 87, 124, 9, 
	13, 10, 110, 10, 100, 10, 117, 10, 
	116, 10, 101, 10, 97, 10, 116, 10, 
	117, 10, 114, 10, 101, 10, 58, 10, 
	105, 10, 118, 10, 101, 10, 110, 10, 
	99, 10, 101, 10, 110, 10, 97, 10, 
	114, 10, 105, 10, 111, 10, 32, 58, 
	10, 79, 84, 10, 117, 10, 116, 10, 
	108, 10, 105, 10, 110, 10, 101, 10, 
	109, 10, 112, 10, 108, 10, 97, 10, 
	116, 10, 104, 116, 0
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
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 13, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 16, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 5, 2, 2, 
	2, 2, 2, 2, 2, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 9, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 4, 3, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 3, 2, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 13, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 1, 1, 1, 
	1, 1, 1, 1, 1, 13, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 3, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 3, 3, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 1, 2, 4, 3, 2, 4, 16, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 3, 3, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 1, 0
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
	0, 0, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 1, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
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
	0, 0, 0, 0, 0, 0, 1, 0, 
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
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 1, 0, 0, 1, 1, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0
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
	143, 145, 147, 149, 151, 153, 155, 157, 
	159, 161, 163, 178, 181, 184, 187, 190, 
	193, 196, 199, 202, 205, 208, 211, 214, 
	217, 220, 223, 241, 243, 245, 247, 249, 
	251, 253, 255, 257, 259, 261, 268, 271, 
	274, 277, 280, 283, 286, 289, 291, 293, 
	295, 297, 299, 301, 303, 305, 307, 318, 
	321, 324, 327, 330, 333, 336, 339, 342, 
	345, 348, 351, 354, 357, 360, 363, 366, 
	369, 372, 375, 378, 381, 384, 387, 390, 
	393, 396, 399, 402, 405, 408, 411, 414, 
	417, 420, 423, 426, 429, 432, 435, 438, 
	441, 444, 447, 450, 455, 459, 462, 465, 
	468, 471, 474, 477, 480, 483, 486, 489, 
	492, 494, 496, 498, 500, 502, 504, 506, 
	508, 510, 512, 514, 518, 521, 523, 525, 
	527, 529, 531, 533, 535, 537, 539, 554, 
	557, 560, 563, 566, 569, 572, 575, 578, 
	581, 584, 587, 590, 593, 596, 599, 602, 
	605, 608, 611, 614, 617, 620, 623, 626, 
	629, 632, 635, 638, 641, 644, 647, 650, 
	653, 656, 659, 662, 665, 668, 670, 672, 
	674, 676, 678, 680, 682, 684, 699, 702, 
	705, 708, 711, 714, 717, 720, 723, 726, 
	729, 732, 735, 738, 741, 744, 747, 750, 
	754, 757, 760, 763, 766, 769, 772, 775, 
	778, 781, 784, 787, 790, 793, 796, 799, 
	802, 805, 808, 811, 814, 817, 820, 823, 
	826, 829, 832, 835, 839, 843, 846, 849, 
	852, 855, 858, 861, 864, 867, 870, 873, 
	876, 879, 881, 885, 891, 895, 898, 904, 
	922, 925, 928, 931, 934, 937, 940, 943, 
	946, 949, 952, 955, 958, 961, 964, 967, 
	970, 973, 976, 979, 982, 985, 988, 992, 
	996, 999, 1002, 1005, 1008, 1011, 1014, 1017, 
	1020, 1023, 1026, 1029, 1032, 1034
]

class << self
	attr_accessor :_lexer_trans_targs
	private :_lexer_trans_targs, :_lexer_trans_targs=
end
self._lexer_trans_targs = [
	2, 4, 4, 5, 14, 16, 30, 33, 
	36, 38, 67, 85, 152, 156, 281, 281, 
	282, 4, 0, 3, 0, 4, 0, 4, 
	4, 5, 14, 16, 30, 33, 36, 38, 
	67, 85, 152, 156, 281, 281, 282, 4, 
	0, 6, 0, 7, 0, 8, 7, 7, 
	0, 9, 9, 10, 9, 9, 9, 9, 
	10, 9, 9, 9, 9, 11, 9, 9, 
	9, 9, 12, 9, 9, 4, 13, 13, 
	0, 4, 13, 13, 0, 4, 15, 14, 
	4, 0, 17, 0, 18, 0, 19, 0, 
	20, 0, 21, 0, 22, 0, 23, 0, 
	24, 0, 25, 0, 26, 0, 27, 0, 
	28, 0, 29, 0, 325, 0, 31, 0, 
	0, 32, 4, 15, 32, 0, 0, 0, 
	0, 34, 35, 4, 35, 35, 33, 34, 
	34, 4, 35, 33, 35, 0, 37, 0, 
	30, 0, 39, 324, 0, 40, 0, 41, 
	0, 42, 0, 43, 0, 44, 0, 45, 
	0, 46, 0, 47, 0, 48, 0, 50, 
	49, 50, 49, 50, 50, 4, 51, 65, 
	4, 288, 290, 292, 299, 303, 323, 323, 
	50, 49, 50, 52, 49, 50, 53, 49, 
	50, 54, 49, 50, 55, 49, 50, 56, 
	49, 50, 57, 49, 50, 58, 49, 50, 
	59, 49, 50, 60, 49, 50, 61, 49, 
	50, 62, 49, 50, 63, 49, 50, 64, 
	49, 50, 4, 49, 50, 66, 49, 4, 
	4, 5, 14, 16, 30, 33, 36, 38, 
	67, 85, 152, 156, 281, 281, 282, 4, 
	0, 68, 0, 69, 0, 70, 0, 71, 
	0, 72, 0, 73, 0, 74, 0, 75, 
	0, 77, 76, 77, 76, 77, 77, 4, 
	78, 4, 77, 76, 77, 79, 76, 77, 
	80, 76, 77, 81, 76, 77, 82, 76, 
	77, 83, 76, 77, 84, 76, 77, 66, 
	76, 86, 0, 87, 0, 88, 0, 89, 
	0, 90, 0, 91, 0, 92, 0, 94, 
	93, 94, 93, 94, 94, 4, 95, 4, 
	109, 119, 126, 132, 94, 93, 94, 96, 
	93, 94, 97, 93, 94, 98, 93, 94, 
	99, 93, 94, 100, 93, 94, 101, 93, 
	94, 102, 93, 94, 103, 93, 94, 104, 
	93, 94, 105, 93, 94, 106, 93, 94, 
	107, 93, 94, 108, 93, 94, 4, 93, 
	94, 110, 93, 94, 111, 93, 94, 112, 
	93, 94, 113, 93, 94, 114, 93, 94, 
	115, 93, 94, 116, 93, 94, 117, 93, 
	94, 118, 93, 94, 66, 93, 94, 120, 
	93, 94, 121, 93, 94, 122, 93, 94, 
	123, 93, 94, 124, 93, 94, 125, 93, 
	94, 118, 93, 94, 127, 93, 94, 128, 
	93, 94, 129, 93, 94, 130, 93, 94, 
	131, 93, 94, 118, 93, 94, 133, 93, 
	94, 134, 93, 94, 135, 93, 94, 136, 
	93, 94, 137, 93, 94, 138, 93, 94, 
	139, 93, 94, 140, 66, 118, 93, 94, 
	141, 146, 93, 94, 142, 93, 94, 143, 
	93, 94, 144, 93, 94, 145, 93, 94, 
	131, 93, 94, 147, 93, 94, 148, 93, 
	94, 149, 93, 94, 150, 93, 94, 151, 
	93, 94, 131, 93, 153, 0, 154, 0, 
	155, 0, 30, 0, 157, 0, 158, 0, 
	159, 0, 160, 0, 161, 0, 162, 0, 
	163, 0, 164, 219, 74, 0, 165, 213, 
	0, 166, 0, 167, 0, 168, 0, 169, 
	0, 170, 0, 171, 0, 172, 0, 174, 
	173, 174, 173, 174, 174, 4, 175, 189, 
	4, 190, 192, 194, 201, 205, 212, 212, 
	174, 173, 174, 176, 173, 174, 177, 173, 
	174, 178, 173, 174, 179, 173, 174, 180, 
	173, 174, 181, 173, 174, 182, 173, 174, 
	183, 173, 174, 184, 173, 174, 185, 173, 
	174, 186, 173, 174, 187, 173, 174, 188, 
	173, 174, 4, 173, 174, 66, 173, 174, 
	191, 173, 174, 189, 173, 174, 193, 173, 
	174, 189, 173, 174, 195, 173, 174, 196, 
	173, 174, 197, 173, 174, 198, 173, 174, 
	199, 173, 174, 200, 173, 174, 66, 173, 
	174, 202, 173, 174, 203, 173, 174, 204, 
	173, 174, 189, 173, 174, 206, 173, 174, 
	207, 173, 174, 208, 173, 174, 209, 173, 
	174, 210, 173, 174, 211, 173, 174, 200, 
	173, 174, 203, 173, 214, 0, 215, 0, 
	216, 0, 217, 0, 218, 0, 170, 0, 
	221, 220, 221, 220, 221, 221, 4, 222, 
	236, 4, 237, 239, 250, 256, 260, 280, 
	280, 221, 220, 221, 223, 220, 221, 224, 
	220, 221, 225, 220, 221, 226, 220, 221, 
	227, 220, 221, 228, 220, 221, 229, 220, 
	221, 230, 220, 221, 231, 220, 221, 232, 
	220, 221, 233, 220, 221, 234, 220, 221, 
	235, 220, 221, 4, 220, 221, 66, 220, 
	221, 238, 220, 221, 236, 220, 221, 240, 
	249, 220, 221, 241, 220, 221, 242, 220, 
	221, 243, 220, 221, 244, 220, 221, 245, 
	220, 221, 246, 220, 221, 247, 220, 221, 
	248, 220, 221, 66, 220, 221, 236, 220, 
	221, 251, 220, 221, 252, 220, 221, 253, 
	220, 221, 254, 220, 221, 255, 220, 221, 
	248, 220, 221, 257, 220, 221, 258, 220, 
	221, 259, 220, 221, 236, 220, 221, 261, 
	220, 221, 262, 220, 221, 263, 220, 221, 
	264, 220, 221, 265, 220, 221, 266, 220, 
	221, 267, 220, 221, 268, 66, 220, 221, 
	269, 274, 220, 221, 270, 220, 221, 271, 
	220, 221, 272, 220, 221, 273, 220, 221, 
	255, 220, 221, 275, 220, 221, 276, 220, 
	221, 277, 220, 221, 278, 220, 221, 279, 
	220, 221, 255, 220, 221, 258, 220, 154, 
	0, 282, 283, 282, 0, 287, 286, 285, 
	283, 286, 284, 0, 285, 283, 284, 0, 
	285, 284, 287, 286, 285, 283, 286, 284, 
	287, 287, 5, 14, 16, 30, 33, 36, 
	38, 67, 85, 152, 156, 281, 281, 282, 
	287, 0, 50, 289, 49, 50, 65, 49, 
	50, 291, 49, 50, 65, 49, 50, 293, 
	49, 50, 294, 49, 50, 295, 49, 50, 
	296, 49, 50, 297, 49, 50, 298, 49, 
	50, 66, 49, 50, 300, 49, 50, 301, 
	49, 50, 302, 49, 50, 65, 49, 50, 
	304, 49, 50, 305, 49, 50, 306, 49, 
	50, 307, 49, 50, 308, 49, 50, 309, 
	49, 50, 310, 49, 50, 311, 66, 49, 
	50, 312, 317, 49, 50, 313, 49, 50, 
	314, 49, 50, 315, 49, 50, 316, 49, 
	50, 297, 49, 50, 318, 49, 50, 319, 
	49, 50, 320, 49, 50, 321, 49, 50, 
	322, 49, 50, 297, 49, 50, 301, 49, 
	30, 0, 0, 0
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
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 124, 
	50, 47, 0, 47, 0, 65, 29, 77, 
	65, 77, 77, 77, 77, 77, 77, 77, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 11, 0, 47, 11, 0, 115, 
	27, 53, 50, 27, 56, 50, 56, 56, 
	56, 56, 56, 56, 56, 56, 59, 27, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 124, 50, 47, 0, 47, 0, 74, 
	77, 74, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 17, 
	0, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 124, 
	50, 47, 0, 47, 0, 62, 29, 62, 
	77, 77, 77, 77, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 9, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 9, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 9, 0, 0, 47, 
	0, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 0, 0, 39, 0, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 124, 
	50, 47, 0, 47, 0, 71, 29, 77, 
	71, 77, 77, 77, 77, 77, 77, 77, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 15, 0, 47, 15, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 15, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	124, 50, 47, 0, 47, 0, 68, 29, 
	77, 68, 77, 77, 77, 77, 77, 77, 
	77, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 13, 0, 47, 13, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 13, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 13, 0, 47, 
	0, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 0, 
	39, 0, 0, 0, 39, 47, 33, 33, 
	80, 33, 33, 39, 0, 35, 0, 39, 
	0, 0, 47, 0, 0, 35, 0, 0, 
	47, 0, 86, 83, 37, 89, 83, 89, 
	89, 89, 89, 89, 89, 89, 89, 92, 
	0, 39, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 11, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 11, 0, 
	47, 0, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	0, 39, 0, 0
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
	39, 39, 39, 39, 39, 39
]

class << self
	attr_accessor :lexer_start
end
self.lexer_start = 1;
class << self
	attr_accessor :lexer_first_final
end
self.lexer_first_final = 325;
class << self
	attr_accessor :lexer_error
end
self.lexer_error = 0;

class << self
	attr_accessor :lexer_en_main
end
self.lexer_en_main = 1;


# line 132 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
      end
 
      def scan(data)
        data = (data + "\n%_FEATURE_END_%").unpack("c*") # Explicit EOF simplifies things considerably
        eof = pe = data.length
 
        @line_number = 1
        @last_newline = 0
 
        
# line 684 "lib/gherkin/rb_lexer/en.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = lexer_start
end

# line 142 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
        
# line 693 "lib/gherkin/rb_lexer/en.rb"
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
# line 9 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
		begin

          @content_start = p
          @current_line = @line_number
          @start_col = p - @last_newline - "#{@keyword}:".length
        		end
when 1 then
# line 15 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
		begin

          @current_line = @line_number
          @start_col = p - @last_newline
        		end
when 2 then
# line 20 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
		begin

          @content_start = p
        		end
when 3 then
# line 24 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
		begin

          con = unindent(@start_col, utf8_pack(data[@content_start...@next_keyword_start-1]).sub(/(\r?\n)?([\t ])*\Z/, '').gsub(/\\"\\"\\"/, '"""'))
          @listener.py_string(con, @current_line) 
        		end
when 4 then
# line 29 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
		begin

          
          store_keyword_content(:feature, data, p, eof) { |con| unindent(@start_col + 2, con).rstrip }
          p = @next_keyword_start - 1 if @next_keyword_start          
          @next_keyword_start = nil
        		end
when 5 then
# line 36 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
		begin

          store_keyword_content(:background, data, p, eof) { |con| unindent(@start_col + 2, con).rstrip }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
when 6 then
# line 42 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
		begin

          store_keyword_content(:scenario, data, p, eof) { |con| unindent(@start_col + 2, con).rstrip }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
when 7 then
# line 48 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
		begin

          store_keyword_content(:scenario_outline, data, p, eof) { |con| unindent(@start_col + 2, con).rstrip }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
when 8 then
# line 54 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
		begin

          store_keyword_content(:examples, data, p, eof) { |con| unindent(@start_col + 2, con).rstrip }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
when 9 then
# line 60 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.step(@keyword, con, @current_line)
        		end
when 10 then
# line 65 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.comment(con, @line_number)
          @keyword_start = nil
        		end
when 11 then
# line 71 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.tag(con, @current_line)
          @keyword_start = nil
        		end
when 12 then
# line 77 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
		begin

          @line_number += 1
        		end
when 13 then
# line 81 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
		begin

          @last_newline = p + 1
        		end
when 14 then
# line 85 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
		begin

          @keyword_start ||= p
        		end
when 15 then
# line 89 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
		begin

          @keyword = utf8_pack(data[@keyword_start...p]).sub(/:$/,'')
          @keyword_start = nil
        		end
when 16 then
# line 94 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
		begin

          @next_keyword_start = p
        		end
when 17 then
# line 98 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
		begin

          p = p - 1
          current_row = []
          @current_line = @line_number
        		end
when 18 then
# line 104 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
		begin

          @content_start = p
        		end
when 19 then
# line 108 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          current_row << con.gsub(/\\\|/, "|").gsub(/\\n/, "\n").gsub(/\\\\/, "\\")
        		end
when 20 then
# line 113 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
		begin

          @listener.row(current_row, @current_line)
        		end
when 21 then
# line 117 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise Gherkin::Lexer::LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/aslakhellesoy/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 934 "lib/gherkin/rb_lexer/en.rb"
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
# line 117 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise Gherkin::Lexer::LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/aslakhellesoy/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 973 "lib/gherkin/rb_lexer/en.rb"
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

# line 143 "/Users/ahellesoy/scm/gherkin/tasks/../ragel/i18n/en.rb.rl"
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
