<?php 
    $action_email = new action_email();
    $action_email->lien_he1();
?>
<div class="gb-form-lienhe">
    <h3><?= $lang=='vn' ? 'Thông tin liên hệ' : 'Contact Info' ?></h3>
    <form action="" method="post">
        <div class="form-group">
            <label><?= $lang=='vn' ? 'Họ và tên' : 'Fullname' ?></label>
            <input type="text" name="name" class="form-control" required="">
        </div>
        <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" class="form-control" required="">
        </div>
        <div class="form-group">
            <label>Phone</label>
            <input type="tel" name="phone" class="form-control" required="">
        </div>
        <div class="form-group">
            <label><?= $lang=='vn' ? 'Nội dung' : 'Note' ?></label>
            <textarea class="input-xlarge form-control" name="note" rows="6"></textarea>
        </div>

        <button class="btn btn-gui" type="submit" name="lien_he"><?= $lang=='vn' ? 'Gửi thông điệp' : 'Send the message' ?></button>
    </form>
</div>