using EmployeeManagementSystem.Service.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace EmployeeManagementSystem.Service.Services
{
    public class JobServics
    {
        private static readonly string ConnectionString = ConfigurationManager.ConnectionStrings["EmployeeManagement"].ConnectionString;

        public List<Jobs> GetAll()
        {
            var jobs = new List<Jobs>();

            using (var connection = new SqlConnection(ConnectionString))
            {
                const string cmdText = "Job_GetAll";

                using (var command = new SqlCommand(cmdText, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    connection.Open();

                    using (var reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            var job = new Jobs
                            {
                                JobId = (int)reader["JobId"],
                                JobTitle = (string)reader["JobTitle"],
                                NumberOfPositions = (int)reader["NumberOfPositions"],
                                JobLocation = (string)reader["JobLocation"],
                                SalaryRange = (string)reader["SalaryRange"]
                            };
                            jobs.Add(job);
                        }
                    }
                }
            }
            return jobs;
        }

        public void Add(Jobs job)
        {
            using (var connection = new SqlConnection(ConnectionString))
            {
                const string cmdText = "Job_Add";

                using (var command = new SqlCommand(cmdText, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@JobTitle", job.JobTitle);
                    command.Parameters.AddWithValue("@NumberOfPositions", job.NumberOfPositions);
                    command.Parameters.AddWithValue("@JobLocation", job.JobLocation);
                    command.Parameters.AddWithValue("@SalaryRange", job.SalaryRange);

                    connection.Open();

                    var rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected != 1)
                        throw new Exception("Add returned 0 rows affected. Expecting 1 rows affected");
                }
            }
        }

        public void Update(Jobs job)
        {
            using (var connection = new SqlConnection(ConnectionString))
            {
                const string cmdText = "Job_Update";

                using (var command = new SqlCommand(cmdText, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@JobId", job.JobId);
                    command.Parameters.AddWithValue("@JobTitle", job.JobTitle);
                    command.Parameters.AddWithValue("@NumberOfPositions", job.NumberOfPositions);
                    command.Parameters.AddWithValue("@JobLocation", job.JobLocation);
                    command.Parameters.AddWithValue("@SalaryRange", job.SalaryRange);

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
                const string cmdText = "Job_Delete";

                using (var command = new SqlCommand(cmdText, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@JobId", id);

                    connection.Open();

                    var rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected != 1)
                        throw new Exception("Add returned 0 rows affected. Expecting 1 rows affected");
                }
            }
        }

    }
}
