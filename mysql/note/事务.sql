<!-- ���� transaction   -->
<!-- �ع�һ������ begin-->
start transaction;
insert into user values(1,'����');
rollback;
<!-- �ع�һ������ end -->

<!-- �ύһ������ begin -->
start transaction;
insert into user values(1,'����');
commit;
<!-- �ύһ������ end -->

�������ĸ����ԣ�acid��
1.atomicity��ԭ���ԣ���һ��������һ�����壬Ҫôȫ���ɹ�Ҫôȫ��ʧ�ܡ�
2.consistency��һ���ԣ������ݴ�һ���ȶ�״̬ת������һ���ȶ�״̬��
3.isolation(������)�����transaction����ִ�е�ʱ������֮����͸���ģ�����Ӱ�졣
4.durability(�־���)����һ��transactionִ��commit֮�󣬾ͻᱣ�������ݿ��С�
