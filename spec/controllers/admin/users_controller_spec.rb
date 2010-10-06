# encoding: utf-8

require 'spec_helper'

describe Admin::UsersController do

  let(:user) { create_user! }

  context "non-admin users" do
    before do
      I18n.locale = "en"
      I18n.default_locale = "en"
      sign_in(:user, user)
    end

    it "are not able to access the index action" do
      get 'index'
      response.should redirect_to(root_path)
      flash[:alert].should eql( I18n.t("authenticate.must_admin_msg") )
    end
  end

  context "一般帳戶(非管理員)" do
    before do
      I18n.locale = "zh-HK"
      I18n.default_locale = "zh-HK"
      sign_in(:user, user)
    end

    it "不可以執行 \"index\" 工作" do
      get 'index'
      response.should redirect_to(root_path)
      flash[:alert].should eql( I18n.t("authenticate.must_admin_msg") )
    end
  end
end

