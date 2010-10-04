# language: zh-TW

功能: 查閱專案
  為了可以將工作單配給專案
  作為一名用戶
  我能夠看到一個專案清單

  背景:
    假設 選用 中文
    假設 有一位帳戶電郵地址是"user@ticketee.com"密碼是"password"
    而且 已成功登入系統
    而且 有一個名稱為"大中華"的專案
    而且 有一個名稱為"運動會"的專案
    而且 "user@ticketee.com"可以閱讀"大中華"專案

  場景: 顯示專案清單
    假設 有一個名稱為"大中華"的專案
    而且 我來到首頁
    那麼 我應該不會看到"運動會"
    當 我按下鏈接"大中華"
    那麼 我停留在專案"大中華"
