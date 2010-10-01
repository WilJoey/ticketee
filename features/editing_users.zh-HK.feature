# language: zh-TW

功能: 修改用戶
  為了可以修改用戶資料
  作為一名管理員
  我可以使用一個後勤功能執行修改工作

  背景:
    假設 選用 中文
    假設 有一位管理員電郵地址是"admin@ticketee.com"密碼是"password"
    而且 "admin@ticketee.com"已確認帳戶
    而且 已成功登入系統
    而且 有一位帳戶電郵地址是"user@ticketee.com"密碼是"password"
    假設 我來到首頁
    當 我按下鏈接"管理員主頁"
    而且 我按下鏈接"帳戶"
    而且 我按下鏈接"user@ticketee.com"
    而且 我按下鏈接"修改"

  場景: 修改帳戶資料
    當 我在"電郵地址"欄位中輸入"newguy@ticketee.com"
    而且 按下了"更新 帳戶"按钮
    那麼 我應該看到"帳戶已修改。"
    而且 我應該看到"newguy@ticketee.com"
    而且 我應該不會看到"user@ticketee.com"

  場景: 帳戶改變為管理員
    當 我在"是管理員?"框打勾
    而且 按下了"更新 帳戶"按钮
    那麼 我應該看到"帳戶已修改。"
    而且 我應該看到"user@ticketee.com (Admin)"

  場景: 修改帳戶但電郵地址不正確
    當 我在"電郵地址"欄位中輸入"fakefakefake"
    而且 按下了"更新 帳戶"按钮
    那麼 我應該看到"未能修改帳戶。"
    而且 我應該看到"電郵地址 是無效的"
