using EmployeeManagementSystem.Service.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace EmployeeManagementSystem.Service.Services
{
    public class EmployeeServices
    {
        private static readonly string ConnectionString = ConfigurationManager.ConnectionStrings["EmployeeManagement"].ConnectionString;

        public List<Employees> GetAll()
        {
            var employees = new List<Employees>();

            using (var connection = new SqlConnection(ConnectionString))
            {
                const string cmdText = "Employee_GetAll";

                using (var command = new SqlCommand(cmdText, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    connection.Open();

                    using (var reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            var employee = new Employees
                            {
                                EmployeeId = (int)reader["EmployeeId"],
                                EmployeeUniqueNumber = (int)reader["EmployeeUniqueNumber"],
                                EmployeeName = (string)reader["EmployeeName"],
                                Email = (string)reader["Email"],
                                Gender = (string)reader["Gender"],
                                Age = (int)reader["Age"],
                                Address = (string)reader["Address"],
                                Position = (string)reader["Position"],
                                DateOfJoining = (DateTime)reader["DateOfJoining"],
                                DepartmentId = (int)reader["DepartmentId"]
                            };
                            employees.Add(employee);
                        }
                    }
                }
            }
            return employees;
        }

        public void Add(Employees employee)
        {
            using (var connection = new SqlConnection(ConnectionString))
            {
                const string cmdText = "Employee_Add";

                using (var command = new SqlCommand(cmdText, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@EmployeeUniqueNumber", employee.EmployeeUniqueNumber);
                    command.Parameters.AddWithValue("@EmployeeName", employee.EmployeeName);
                    command.Parameters.AddWithValue("@Email", employee.Email);
                    command.Parameters.AddWithValue("@Gender", employee.Gender);
                    command.Parameters.AddWithValue("@Age", employee.Age);
                    command.Parameters.AddWithValue("@Address", employee.Address);
                    command.Parameters.AddWithValue("@Position", employee.Position);
                    command.Parameters.AddWithValue("@DateOfJoining", employee.DateOfJoining);
                    command.Parameters.AddWithValue("@DepartmentId", employee.DepartmentId);

                    connection.Open();

                    var rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected != 1)
                        throw new Exception("Add returned 0 rows affected. Expecting 1 rows affected");
                }
            }
        }

        public void Update(Employees employee)
        {
            using (var connection = new SqlConnection(ConnectionString))
            {
                const string cmdText = "Employee_Update";

                using (var command = new SqlCommand(cmdText, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@EmployeeId", employee.EmployeeId);
                    //command.Parameters.AddWithValue("@EmployeeUniqueNumber", employee.EmployeeUniqueNumber);
                    command.Parameters.AddWithValue("@EmployeeName", employee.EmployeeName);
                    command.Parameters.AddWithValue("@Email", employee.Email);
                    //command.Parameters.AddWithValue("@Gender", employee.Gender);
                    command.Parameters.AddWithValue("@Age", employee.Age);
                    command.Parameters.AddWithValue("@Address", employee.Address);
                    command.Parameters.AddWithValue("@Position", employee.Position);
                    command.Parameters.AddWithValue("@DateOfJoining", employee.DateOfJoining);
                    command.Parameters.AddWithValue("@DepartmentId", employee.DepartmentId);

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
                const string cmdText = "Employee_Delete";

                using (var command = new SqlCommand(cmdText, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@EmployeeId", id);

                    connection.Open();

                    var rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected != 1)
                        throw new Exception("Add returned 0 rows affected. Expecting 1 rows affected");
                }
            }
        }
        public Employees GetById(int id)
        {
            using (var connection = new SqlConnection(ConnectionString))
            {
                const string cmdText = "Employee_GetById";

                using (var command = new SqlCommand(cmdText, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@Id", id);

                    connection.Open();

                    using (var reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            var employee = new Employees
                            {
                                EmployeeId = (int)reader["Id"],
                                EmployeeUniqueNumber = (int)reader["EmployeeUniqueNumber"],
                                EmployeeName = (string)reader["EmployeeName"],
                                Email = (string)reader["Email"],
                                Gender = (string)reader["Gender"],
                                Age = (int)reader["Age"],
                                Address = (string)reader["Address"],
                                Position = (string)reader["Position"],
                                DateOfJoining = (DateTime)reader["DateOfJoining"],
                                DepartmentId = (int)reader["DepartmentId"]
                            };
                            return employee;
                        }
                    }
                }
            }
            return null;
        }

    }
}
