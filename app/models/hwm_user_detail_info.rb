# encoding: utf-8
# author :Dong Shaohui
# description : 用户详细信息model层
class HwmUserDetailInfo < ActiveRecord::Base
  
  ## 数据校验层
  ## 用户账户id校验
  validates_presence_of :hwm_user_account_id, :message => "用户账户id不能为空"
  validates_numericality_of :hwm_user_account_id, :message => "用户账户id必须为数字"
  validates_uniqueness_of :hwm_user_account_id, :message => "用户账户id必须唯一"
  
  ## 推荐人类型校验
  validates_inclusion_of :recommender_type, :in => [0,1,2,3,4,5], 
  :allow_nil => true, :message => "推荐人类型格式错误!"  
  
  ## 性别类型校验
  validates_inclusion_of :sex, :in => [0,1], :allow_nil => true, :message => "性别类型格式错误"
  
  ## 婚姻状态类型校验
  validates_inclusion_of :marriage, :in => [0,1], :allow_nil => true, :message => "婚姻状态类型格式错误"
  
  ## 学历类型校验
  validates_inclusion_of :education, :in => [1,2,3,4,5,6,7,8,9], :allow_nil => true,
  :message => "学历类型格式错误"
  
  ## 职业代码类型校验
  validates_inclusion_of :occupation_code, :in => [1,2,3,4,5,6], :allow_nil => true,
  :message => "职业代码类型错误"
  
  ## 家庭人口数字段校验
  validates_numericality_of :population, :allow_nil => true, :message => "家庭人口字段必须为数字"
  
  ## 交易渠道类型校验
  validates_inclusion_of :tranction_channel, :in => [1,2,3,4], :allow_nil => true,:message => "交易渠道格式错误,1-CALLCENTER,2-INTERNET,3-自助终端,4-柜台"
  
  ## 对账单寄送选择校验
  validates_inclusion_of :send_bill_choice, :in => [1,2,3,4,5], :allow_nil => true, :message => "对账单寄送选择格式错误"
  
  ## 对账单寄送方式校验
  validates_inclusion_of :send_bill_type, :in => [1,2,3,4], :allow_nil => true, :message => "对账单寄送方式格式错误"
  
  ## 客户风险等级校验(0-高, 1-中, 2-低)
  validates_inclusion_of :custom_risk_level, :in => [0,1,2], :allow_nil => true, :message => "客户风险等级格式错误"
  
  ## 关联表
  ## 与用户账户表进行关联
  belongs_to :hwm_user_account
  
end
