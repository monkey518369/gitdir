解决并发问题当然是应用非常经典的并发控制了啊。就是加锁。
分为两种
1.shared lock（共享锁）.也叫read lock。多个客户端可以在同一时间读取同一资源，互不干扰。
2.exclusive lock（排它锁）.也叫write lock。一个写锁会堵塞其他的写锁和读锁。


锁策略
table lock。
最基本的锁策略。
在alert table 的时候会用到。

row lock。
可以最大程度的支持并发处理。
除了alert table 之外的锁基本上都是row lock。