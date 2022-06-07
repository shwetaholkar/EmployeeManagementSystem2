using EmployeeManagementSystem.Service.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace EmployeeManagementSystem.Service.Services
{
    public class DepartmentServices
    {

        private static readonly string ConnectionString = ConfigurationManager.ConnectionStrings["EmployeeManagement"].ConnectionString;

        public List<Departments> GetAll()
        {
            var departments = new List<Departments>();

            using (var connection = new SqlConnection(ConnectionString))
            {
                const string cmdText = "Department_GetAll";

                using (var command = new SqlCommand(cmdText, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    connection.Open();

                    using (var reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            var department = new Departments
                            {
                                DepartmentId = (int)reader["DepartmentId"],
                                DepartmentName = (string)reader["DepartmentName"]
                                
                            };

                            departments.Add(department);
                        }
                    }
                }
            }

            return departments;
        }

        public void Add(Departments department)
        {
            using (var connection = new SqlConnection(ConnectionString))
            {
                const string cmdText = "Department_Add";

                using (var command = new SqlCommand(cmdText, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@DepartmentName", department.DepartmentName);
                    
                    connection.Open();

                    var rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected != 1)
                        throw new Exception("Add returned 0 rows affected. Expecting 1 rows affected");
                }
            }
        }

        public void Update(Departments department)
        {
            using (var connection = new SqlConnection(ConnectionString))
            {
                const string cmdText = "Department_Update";

                using (var command = new SqlCommand(cmdText, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@DepartmentId", department.DepartmentId);
                    command.Parameters.AddWithValue("@DepartmentName", department.DepartmentName);
                   
                    connection.Open();

                    var rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected != 1)
                        throw new Exception("Add returned 0 rows affected. Expecting 1 rows affected");
                }
            }
        }

        public void Delete(int id)
        {
            using (var connection = new SqlConnection(ConnectionString))
            {
                const string cmdText = "Department_Delete";

                using (var command = new SqlCommand(cmdText, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@DepartmentId", id);

                    connection.Open();

                    var rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected != 1)
                        throw new Exception("Add returned 0 rows affected. Expecting 1 rows affected");
                }
            }
        }

    }
}
