# Import required libraries
from snowflake.snowpark.session import Session
from snowflake.snowpark.functions import col

# Establishing a connection
def create_session_object():
    connection_parameters ={
        "account":"iob57586",
        "user":"prakloga",
        "password":"",
        "role":"SYSADMIN",
        "warehouse":"COMPUTE_WH",
        "database":"DEMO_DB",
        "schema":"PUBLIC"
    }

    session = Session.builder.configs(connection_parameters).create()
    return session

# Function Call
#create_session_object()


# ---------------------------------------------------------------------
# [Step 2] CREATING DATAFRAMES
# ---------------------------------------------------------------------

def create_dataframe(session):

    df_table = session.table("demo_db.public.sample_product_data")

    # **ACTIONS**

    # count method
    df_table.count()
    print(df_table.count())

    # show method
    df_table.show()

    # collect method
    df_results = df_table.collect()
    print(df_results)

    # **TRANSFORMATIONS** Lazy Evaluation
    # Requires Action method to trigger Transformation
    df_filtered = df_table.filter(col("CATEGORY_ID")==5)

    # Triggers Transformation Method
    df_filtered.show()

    df_filtered_persisted = df_filtered.collect()
    print(df_filtered_persisted)

# Call session object
session = create_session_object()

# Call create dataframe
_ = create_dataframe(session)

# end your session
session.close()