


#' 查询AutoReconcile异常数据
#'
#' @param token

#' @param erp_token
#'
#' @param FYearMonth
#' @param FCustomer
#' @param FBillNo
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' AutoReconcile_view()
AutoReconcile_view<- function(erp_token,FYearMonth,FCustomer,FBillNo) {

  sql=paste0("exec rds_proc_vm_AutoReconcile  '",FYearMonth,"','",FCustomer,"','",FBillNo,"'  ")

  res=tsda::sql_select2(token = erp_token,sql = sql)
  return(res)
}
