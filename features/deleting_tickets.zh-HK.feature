# language: zh-TW

功能: 刪除工作單
  為了可以刪除不須要的工作單
  作為一名用戶
  我只須按一個按钮便可將不須要的工作單刪除

  背景:
    假設 選用 中文
    假設 有一位帳戶電郵地址是"user@ticketee.com"密碼是"password"
    而且 已成功登入系統
    假設 有一個名稱為"大中華"的專案
    而且 "user@ticketee.com"可以閱讀"大中華"專案
    而且 "user@ticketee.com"可以刪除"大中華"專案的工作單
    而且 "user@ticketee.com"給這個專案建立以下工作單:
      |     title     |    description     |
      |     賀新年     |  一個普天同慶的大日子  |
    假設 我來到首頁
    當 我按下鏈接"大中華"
    而且 我按下鏈接"賀新年"

  場景: 刪除一個工作單
    當 按下鏈接"刪除"
    那麼 我應該看到"工作單已刪除。"
    而且 我停留在專案"大中華"
