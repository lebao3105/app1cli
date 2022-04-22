(* Vietnamese translation file for app1cli
   For Vietnamese Users: Hien tai thi de tranh 
   loi khi bien dich va chay tren nen CLI nen ban dich 
   Tieng Viet nay se khong co dau *)
unit lang_vi;
Interface
    const 
	(* Some lines in startup / mot so 'dong' khi khoi dong *)
	Startup_opening = 'Dang khoi chay...';
	Startup_appname = 'app1 tu Le Bao Nguyen';
	Startup_appver = 'Phien ban ';
	(* Program location and time-date / vi tri cua chuong trinh va thoi gian *)
	Applocation = 'Vi tri chuong trinh hien tai: ';
	Timedate = 'Thoi gian hien tai la: ';
	(* Now we are in the main menu - Bay gio chung ta dang o menu chinh *)
	Menu_welcome = 'Chao mung den voi app1! Vui long chon mot tinh nang duoi day de bat dau: ';
    Menu_item1 = 'So sanh';
    Menu_item2 = 'May tinh';
    Menu_item3 = 'Thong tin';
    Menu_item4 = 'Thoat';
    Menu_ask = 'Go lua chon cua ban tai day: ';
    (* Calculator - May tinh *)
    Select = 'Su dung mot trong cac lua chon sau:';
    Cancel = 'Huy';
    Cal_Adv = 'Phep toan nang cao';
    Cal_Exit = 'Buoc thoat';
    Cal_Ans = 'Ket qua la: ';
    (* Compare - So sanh *)
    Cpr_Bigger = 'So thu nhat lon hon so thu hai';
    Cpr_Both = 'Ca hai so duoc cho dau nhu nhau';
    Cpr_Smaller = 'So thu nhat nho hon so thu hai';
    (* Ask - Hoi *)
    Ask_num1 = 'Vui long nhap gia tri cho so thu nhat: ';
    Ask_num2 = 'Cho so thu hai o day: ';
    Ask_num3 = 'So thu ba nua: ';
    Ask_cal = 'Thu thuc hien phep toan';
    Ask_back = 'Quay ve Menu chinh';
    Ask_exit = 'Thoat chuong trinh';
    Ask_home = 'Ve man hinh chinh';
    Ask_choice = 'Go lua chon cua ban tai day: ';
    Ask_other = 'Ban co muon ve man hinh chinh de lam viec khac khong, hoac la thoat?';
    (* Exit - Thoat *)
    Exit_ask = 'Ban co muon thoat chuong trinh nay khong?'; // we have Ask_exit before, now we have Exit_ask:) 
    Exit_ask_2 = 'Ban se duoc dua den man hinh chinh neu ban chon Khong'; // new 
    Exit_bye = 'Cam on ban da su dung ung dung nay. Chuc mot ngay tot lanh!'; // new too
    Exit_out = 'Dang thoat...';
    (* Misc *)
    Argv_cpr = 'Chuan bi so sanh ';
    Argv_fatal = 'Loi: ';
    Argv_warm_num = 'Chung toi can them mot so nua de lam viec nay.';
    Argv_abort = 'Da huy cong viec dinh lam.';
    Clr = 'Dang lam trang man hinh...'; 
    Press_Enter = 'Bam Enter de tiep tuc...';
    Enter_Exit = 'Da xong. Bam Enter de thoat...';
    Switch = 'Dang chuyen sang Menu chinh...';
    Argv_cal = 'Ban dang chay che do May tinh cua app1.';
    Argv_exit = 'De thoat ung dung bat ki luc nao, su dung Ctrl + Z (*NIX) hoac Ctrl + C (Windows).';
    Helper = 'Cu phap:' + sLineBreak // xuong dong
            + 'app1 [cpr/cal] [function phu] [2 so]' + sLineBreak
            + 'Voi: ' + sLineBreak
            + 'cpr : So sanh 2 so' + sLineBreak
            + 'cal : May tinh, voi cac phep toan co ban:' + sLineBreak
            + '         add      : Tim tong hai so' + sLineBreak
            + '         sub      : Tim hieu hai so'+ sLineBreak
            + '         multiple : Nhan hai so' + sLineBreak
            + '         div      : Chia hai so' + sLineBreak
            + '-----------------------------------------------------------------------' + sLineBreak
            + 'Mo ta: - Lam nhieu phep tinh va so sanh 2 so voi app1.';
IMPLEMENTATION
end.	
