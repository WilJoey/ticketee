# language: zh-TW

功能: 刪除帳戶
  為了可以刪除不須要的帳戶
  作為一名專案管理員
  我可以將不須要的帳戶刪除

  背景:
    假設 選用 中文
    假設 有一位管理員電郵地址是"admin@ticketee.com"密碼是"password"
    而且 "admin@ticketee.com"已確認帳戶
    而且 已成功登入系統
    而且 有一位帳戶電郵地址是"user@ticketee.com"密碼是"password"
    假設 我來到首頁
    當 我按下鏈接"管理員主頁"
    而且 我按下鏈接"帳戶"

  場景: 刪除一個帳戶
    而且 我按下鏈接"user@ticketee.com"
    當 我按下鏈接"刪除"
    那麼 我應該看到"帳戶已刪除。"

  場景: 不可以刪除自已的帳戶
    當 我按下鏈接"admin@ticketee.com (Admin)"
    而且 我按下鏈接"刪除"
    那麼 我應該看到"不可以刪除自已的帳戶!"
