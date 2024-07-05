import tkinter as tk
from tkinter import messagebox
from tkinter import ttk
import mysql.connector

config = {
    'user': 'root',
    'password': '1234',
    'host': '127.0.0.1', 
    'database': 'university',
}

def execute_query(query):
    try:
        connection = mysql.connector.connect(**config)
        cursor = connection.cursor()
        cursor.execute(query)
        result = cursor.fetchall()
        columns = [desc[0] for desc in cursor.description] 
        cursor.close()
        connection.close()
        return columns, result
    except mysql.connector.Error as err:
        messagebox.showerror("Error", f"Error: {err}")
        return None, None

def on_query1_click():
    columns, result = execute_query("SELECT student_id FROM student where student_id IN(select student_id from student_has_course)")    
    if result is not None:
        display_data(columns, result)

def on_query2_click():
    columns, result = execute_query("SELECT course_id FROM student_has_course GROUP BY course_id HAVING COUNT(student_id) > 5;")    
    if result is not None:
        display_data(columns, result)

def on_query3_click():
    columns, result = execute_query("SELECT student.student_id, SUM(student_has_course.grade * course.credit) / SUM(course.credit) FROM student JOIN student_has_course ON student.student_id = student_has_course.student_id JOIN course ON student_has_course.course_id = course.course_id GROUP BY student.student_id;")    
    if result is not None:
        display_data(columns, result)

def on_query4_click():
    columns, result = execute_query("select * from professor where professor_id in ( select professor_id from class_schedule join course on course.course_id=class_schedule.course_id group by professor_id having sum(credit) > 70);")    
    if result is not None:
        display_data(columns, result)


def on_query5_click():
    columns, result = execute_query("select title from book join student_borrows_book on book.book_id=student_borrows_book.book_id group by title having count(student_id) > 4")    
    if result is not None:
        display_data(columns, result)

def on_query6_click():
    columns, result = execute_query("SELECT * FROM class_schedule WHERE professor_id IN (SELECT professor_id FROM class_schedule JOIN student_has_course ON class_schedule.course_id = student_has_course.course_id GROUP BY professor_id, class_schedule.course_id HAVING COUNT(student_id) > 2) AND professor_id IN (SELECT professor_id FROM class_schedule GROUP BY professor_id HAVING COUNT(DISTINCT course_id) >= 1);")    
    if result is not None:
        display_data(columns, result)

def on_query7_click():
    columns, result = execute_query("SELECT * FROM student WHERE student_id IN (SELECT student_id FROM register) AND student_id NOT IN (SELECT student_id FROM student_has_course);")    
    if result is not None:
        display_data(columns, result)


def display_data(columns, data):
    for item in tree.get_children():
        tree.delete(item)
    
    tree["columns"] = columns
    tree["show"] = "headings"
    
    for col in columns:
        tree.heading(col, text=col)
        tree.column(col, width=100, anchor=tk.CENTER)
    
    for row in data:
        tree.insert('', 'end', values=row)

root = tk.Tk()
root.title("MySQL Query Executor")

frame = tk.Frame(root)
frame.pack(pady=10, padx=10)

query1_button = tk.Button(frame, text="Student id of students who took courses", command=on_query1_click)
query1_button.grid(row=0, column=0, padx=5, pady=5)

query2_button = tk.Button(frame, text="Courses that has been taken by more than five students", command=on_query2_click)
query2_button.grid(row=1, column=0, padx=5, pady=5)

query3_button = tk.Button(frame, text="Average grade of every student", command=on_query3_click)
query3_button.grid(row=2, column=0, padx=5, pady=5)

query4_button = tk.Button(frame, text="Professors with more than total of 70 credit hours taught", command=on_query4_click)
query4_button.grid(row=3, column=0, padx=5, pady=5)

query5_button = tk.Button(frame, text="Books taken by more than four students", command=on_query5_click)
query5_button.grid(row=4, column=0, padx=5, pady=5)

query6_button = tk.Button(frame, text="Class schedule of certain Professors", command=on_query6_click)
query6_button.grid(row=5, column=0, padx=5, pady=5)

query7_button = tk.Button(frame, text="Students who didn't take any courses", command=on_query7_click)
query7_button.grid(row=6, column=0, padx=5, pady=5)

tree = ttk.Treeview(frame)
tree.grid(row=8, column=0, columnspan=2, pady=10)

root.mainloop()