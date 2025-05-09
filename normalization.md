# Database Normalization Report

## Objective

To ensure our Airbnb-like platform database schema is properly normalized to reduce redundancy and improve data integrity.

## 1NF (First Normal Form)

All tables have atomic columns (no multivalued or repeating groups). Each field contains only a single value.  
✅ **Passed**

## 2NF (Second Normal Form)

All non-key attributes are fully functionally dependent on the entire primary key.  
Since each table uses a UUID as a simple primary key, 2NF is satisfied.  
✅ **Passed**

## 3NF (Third Normal Form)

All non-key attributes are not transitively dependent on any other non-key attribute.  
We ensured that no table contains fields like `host_name` or `owner_email` in the `Property` table — instead, such data is referenced via `host_id`.  
✅ **Passed**

## Conclusion

The database schema is fully normalized up to the Third Normal Form (3NF).
This ensures data integrity, reduces redundancy, and supports scalable design.
