$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type cb_translate from commandbutton within w_main
end type
type st_2 from statictext within w_main
end type
type mle_out from multilineedit within w_main
end type
type em_money from editmask within w_main
end type
type st_1 from statictext within w_main
end type
type rb_en from radiobutton within w_main
end type
type rb_vn from radiobutton within w_main
end type
type gb_1 from groupbox within w_main
end type
type gb_2 from groupbox within w_main
end type
end forward

global type w_main from window
integer width = 2487
integer height = 1104
boolean titlebar = true
string title = "Money Translate"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_translate cb_translate
st_2 st_2
mle_out mle_out
em_money em_money
st_1 st_1
rb_en rb_en
rb_vn rb_vn
gb_1 gb_1
gb_2 gb_2
end type
global w_main w_main

on w_main.create
this.cb_translate=create cb_translate
this.st_2=create st_2
this.mle_out=create mle_out
this.em_money=create em_money
this.st_1=create st_1
this.rb_en=create rb_en
this.rb_vn=create rb_vn
this.gb_1=create gb_1
this.gb_2=create gb_2
this.Control[]={this.cb_translate,&
this.st_2,&
this.mle_out,&
this.em_money,&
this.st_1,&
this.rb_en,&
this.rb_vn,&
this.gb_1,&
this.gb_2}
end on

on w_main.destroy
destroy(this.cb_translate)
destroy(this.st_2)
destroy(this.mle_out)
destroy(this.em_money)
destroy(this.st_1)
destroy(this.rb_en)
destroy(this.rb_vn)
destroy(this.gb_1)
destroy(this.gb_2)
end on

type cb_translate from commandbutton within w_main
integer x = 2043
integer y = 364
integer width = 283
integer height = 88
integer taborder = 40
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Translate"
end type

event clicked;String ls_moneychar, ls_moneynumber
If rb_vn.Checked Then
	ls_moneychar = "VN: " +  f_translate_to_vietnamese(em_money.Text)
	ls_moneynumber = "Type: " + f_vnd(Dec(em_money.Text))
End If

If rb_en.Checked Then
	ls_moneychar = "EN: " + f_translate_to_english(em_money.Text)
	ls_moneynumber = "Type: " + f_usd(Dec(em_money.Text))
End If

mle_out.Text = ls_moneychar + "~r~n" + ls_moneynumber

end event

type st_2 from statictext within w_main
integer x = 96
integer y = 476
integer width = 224
integer height = 72
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Out:"
alignment alignment = right!
boolean focusrectangle = false
end type

type mle_out from multilineedit within w_main
integer x = 338
integer y = 476
integer width = 1984
integer height = 400
integer taborder = 40
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
boolean autohscroll = true
boolean autovscroll = true
boolean displayonly = true
borderstyle borderstyle = stylelowered!
end type

type em_money from editmask within w_main
integer x = 343
integer y = 368
integer width = 1682
integer height = 84
integer taborder = 30
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
maskdatatype maskdatatype = stringmask!
end type

type st_1 from statictext within w_main
integer x = 96
integer y = 368
integer width = 224
integer height = 72
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Money:"
alignment alignment = right!
boolean focusrectangle = false
end type

type rb_en from radiobutton within w_main
integer x = 306
integer y = 132
integer width = 210
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "EN"
end type

type rb_vn from radiobutton within w_main
integer x = 69
integer y = 128
integer width = 206
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "VN"
end type

type gb_1 from groupbox within w_main
integer x = 37
integer y = 36
integer width = 2350
integer height = 232
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Lang"
end type

type gb_2 from groupbox within w_main
integer x = 37
integer y = 284
integer width = 2345
integer height = 664
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Translate"
end type

