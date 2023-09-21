select * from audit_trail_events
order by "createdAt" DESC
 limit {{ table1.pageSize }}
 offset {{ table1.paginationOffset }}