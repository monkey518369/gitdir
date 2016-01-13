<!-- 事务 transaction   -->
<!-- 回滚一个事务 begin-->
start transaction;
insert into user values(1,'张三');
rollback;
<!-- 回滚一个事务 end -->

<!-- 提交一个事务 begin -->
start transaction;
insert into user values(1,'张三');
commit;
<!-- 提交一个事务 end -->

事务是四个属性（acid）
1.atomicity（原子性）。一个事务是一个整体，要么全部成功要么全部失败。
2.consistency（一致性）。数据从一个稳定状态转换到另一个稳定状态。
3.isolation(隔离性)。多个transaction并发执行的时候，他们之间是透明的，互不影响。
4.durability(持久性)。当一个transaction执行commit之后，就会保存在数据库中。
