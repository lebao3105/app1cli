procedure Vietnamese_Interface;
{$ifdef start_implementation}
begin
    Startup_opening := 'Đang khởi chạy...';
    Startup_appname := 'app1cli từ nhà phát triển Nguyễn Lê Bảo';
    Startup_appver := 'Phiên bản ';

    Applocation := 'Đường dẫn đầy đủ của chương trình (hiện cho có): ';
    Timedate := 'Bây giờ là: ';

    Menu_welcome := 'Chào mừng đến với app1! Chọn một trong các hướng đi bên dưới: ';
    Menu_multiply := 'N';
    Menu_divide := 'Chia';

    M_Mode := 'Đang ở chế độ Nhân. ';
    D_Mode := 'Đang ở chế độ Chia. ';

    Ask_num1 := 'Nhập giá trị cho số  thứ nhất (khác 0 và 1): ';
    Ask_num2 := 'Nhập giá trị cho số  thứ hai (khác 0 và 1): ';
    Ask_exit := 'Thoát';
    Ask_home := 'Trở về menu chính? [y/n] ';
    Ask_choice := 'Lựa chọn của bạn: ';
    Ask_random2 := 'Chọn ngẫu nghiên số thứ hai? [y/n] ';
    Ask_random1 := 'Cả số thứ nhất nữa? [y/n] ';
    Ask_number2Smaller := 'Khiến số thứ hai nhỏ hơn 10? [y/n] ';
    
    NumsSummary := 'Số thứ nhất là %d, thứ hai là %d.';
    CalInput := 'Bây giờ nhập kết quả tính toán: ';

    Wrong_Answer := 'Oops: sai mất rồi! Mất điểm!';
    Right_Answer := 'Làm tốt lắm! Bạn sẽ được thưởng điểm.';
    Points_Lost := 'Đã trừ đi %d điểm.';
    Points_Gained := 'Đã nhận được 5 điểm';
    Points_Remaining := 'Còn lại %d điểm.';
    Points_Same := 'À thôi. Điểm vẫn 1 trăm tròn, tiếp tục phát huy nhé!';

    DivRemains := '%d chia cho %d dư khác không.';
    Clr := 'Bắt đầu làm trắng màn hình...';
    Press_Enter := 'Bấm Enter/Return để tiếp tục.';

    About1 := 'Về chương trình này';
    About2 :=
        'Một chương trình cho học sinh tiểu học muốn học thuộc bảng cửu chương ngay trên máy tính.' + sLineBreak
        + 'Bạn, hoặc con bạn, hoặc cháu bạn, có 100 điểm. Sai một câu là mất một số điểm bất kì khác 0 nhỏ hơn 10.' + sLineBreak
        + 'Ngược lại nhận 5 điểm hoặc không thay đổi (nếu bạn vẫn còn 100 điểm).' + sLineBreak
        + 'Nếu bạn thua hãy xem lại cách nhân chia, cách học và thử  lại.' + sLineBreak
        + 'Chương trình này sinh ra với mục đích giáo dục, không đi kèm mục đích ép học.';

    Helper := 'Cú pháp:' + sLineBreak
        + 'app1 [cờ, không bắt buộc]' + sLineBreak
        + 'Các cờ: ' + sLineBreak
        + '-v                      : Hiển thị phiên bản của app1 và thoát' + sLineBreak
        + '-n hoặc --vietnamese    : Sử dụng ngôn ngữ tiếng Việt:' + sLineBreak
        + '-h hoặc --help          : Hiển thị đoạn trợ giúp này và thoát' + sLineBreak
        + '-m hoặc --multiply      : Chế độ nhân' + sLineBreak
        + '-d hoặc --divide        : Chế độ chia';
end;
{$endif}