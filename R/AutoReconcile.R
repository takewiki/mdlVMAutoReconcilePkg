
#' 查询AutoReconcile数据
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
AutoReconcile_view<- function(erp_token,FYearMonth,FDeliveryLocation,FBillNo) {

  sql=paste0("exec rds_proc_vm_AutoReconcile  '",FYearMonth,"','",FDeliveryLocation,"','",FBillNo,"'  ")

  res=tsda::sql_select2(token = erp_token,sql = sql)
  return(res)
}




#' 更新销售出库单摘要
#'
#' @param erp_token
#'
#' @param FBillNo
#' @param FNote
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' AutoReconcile_update()
AutoReconcile_update<- function(erp_token,FBillNo,FNote) {


  sql=paste0("exec rds_proc_salOutStockNote_update  '",FBillNo,"' ,'",FNote,"'  ")

  res = tsda::sql_select2(token = erp_token,sql = sql)



  return(res)
}


#' 查询勾稽结果
#'
#' @param erp_token
#'
#' @param FBillNo
#' @param FNote
#' @param FSeq
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' AutoReconcile_res_select()
AutoReconcile_res_select<- function(erp_token,FBillNo,FNote,FSeq) {

  sql = paste0("exec rds_proc_vm_AutoReconcile_update  '",FBillNo,"' ,'",FNote,"','",FSeq,"'  ")

  res=tsda::sql_select2(token = erp_token,sql  = sql )


  return(res)
}















