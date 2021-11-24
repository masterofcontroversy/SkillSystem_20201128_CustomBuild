.thumb
.include "mss_defs.s"

.global MSS_page4
.type MSS_page4, %function


MSS_page4:

page_start

draw_textID_at 13, 11, 0xf89, 16, White

draw_textID_at 1, 1, 0x1, 1 Green

draw_gaiden_spells_at 13, 13, GaidenStatScreen @ GaidenStatScreen is a pointer to the routine, GaidenStatScreen.

page_end

GaidenStatScreen: