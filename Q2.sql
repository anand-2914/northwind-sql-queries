--2
select products.supplier_id,suppliers.company_name,categories.category_name
from  products
inner join suppliers
on products.supplier_id=suppliers.supplier_id
inner join categories
on products.category_id=categories.category_id
where category_name='Seafood';


