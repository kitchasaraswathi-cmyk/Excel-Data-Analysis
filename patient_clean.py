import pandas as pd
raw_data={
    'patient_id':[101,102,102,103,104,105,105,106,107,108],'patient_name':['Arun','Priya','Priya','karthick','suresh','Anitha','Anitha','Ramesh','Divya','kumar'],'Age':[28,None,28,42,None,35,35,None,50,29],'City':['Chennai','Hosur','Hosur','Coimbatore','Chennai','Madurai','Madurai','Trichy','Salem','chennai']}
df=pd.DataFrame(raw_data)
df=df.drop_duplicates()
df['Age']=df['Age'].fillna(30)
df.to_excel('cleaned_patient_data.xlsx',index=False)
print("Data Cleaned Successfully!")