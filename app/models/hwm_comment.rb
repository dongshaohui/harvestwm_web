# encoding: utf-8
# author :Dong Shaohui
# description : 评论model层
class HwmComment < ActiveRecord::Base
  ### 校验层
  ## 观点id
  validates_presence_of :hwm_viewpoint_id,  :message => "观点id不能为空"
  validates_numericality_of :hwm_viewpoint_id,  :message => "观点id必须为数字"
  ## 用户账户id 
  validates_presence_of :hwm_user_account_id, :message => "用户账户id不能为空"
  validates_numericality_of :hwm_user_account_id, :message => "用户账户id必须为数字"
  ## 评论内容
  validates_presence_of :comment_content, :message => "评论内容不能为空"
  validates_length_of :comment_content, :in => 1..100, :message => "评论内容不能超过1-100个字"
end
