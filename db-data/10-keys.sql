use tpch;

alter table supplier add constraint fknation foreign key (s_nationkey) references nation (n_nationkey);

alter table customer add constraint fkcnation foreign key (c_nationkey) references nation (n_nationkey);

alter table orders add constraint fkcust foreign key (o_custkey) references customer (c_custkey);

alter table lineitem add constraint fkorders foreign key (l_orderkey) references orders (o_orderkey);

alter table lineitem add constraint fkpps foreign key (l_partkey, l_suppkey) references partsupp (ps_partkey, ps_suppkey);

alter table nation add constraint fkregion foreign key (n_regionkey) references region (r_regionkey);

alter table partsupp add constraint fkp foreign key (ps_partkey) references part(p_partkey);

alter table partsupp add constraint fks foreign key (ps_suppkey) references supplier(s_suppkey);

alter table lineitem add constraint partkeyFK foreign key (l_partkey) references part (p_partkey);

alter table lineitem add constraint suppkeyFK foreign key (l_suppkey) references supplier (s_suppkey);
