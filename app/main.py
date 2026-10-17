import os

print("================================")
print("DevOps Student Application")
print("================================")

print("Name:", os.getenv("STUDENT_NAME", "Erasyl"))
print("Surname:", os.getenv("STUDENT_SURNAME", "Abdiraman"))
print("Group:", os.getenv("STUDENT_GROUP", "IT-2310"))
print("Student ID:", os.getenv("STUDENT_ID", "3833"))

print()
print("Application is running successfully!")
