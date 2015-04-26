using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Text;
using Microsoft.Data.Tools.Schema.Sql.UnitTesting;
using Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace UnitTests
{
    [TestClass()]
    public class SqlServerUnitTest1 : SqlDatabaseTestClass
    {

        public SqlServerUnitTest1()
        {
            InitializeComponent();
        }

        [TestInitialize()]
        public void TestInitialize()
        {
            base.InitializeTest();
        }
        [TestCleanup()]
        public void TestCleanup()
        {
            base.CleanupTest();
        }

        #region Designer support code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction Control_Get_FileDownloadMetadataTest_TestAction;
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(SqlServerUnitTest1));
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.InconclusiveCondition inconclusiveCondition1;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction Control_Get_FileUploadMetadataTest_TestAction;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.InconclusiveCondition inconclusiveCondition2;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction Control_InitialiseAutomationTest_TestAction;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.InconclusiveCondition inconclusiveCondition3;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction Control_InitialiseDownloadQueueTest_TestAction;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.InconclusiveCondition inconclusiveCondition4;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction Control_InitialiseRunTest_TestAction;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.InconclusiveCondition inconclusiveCondition5;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction Control_InitialiseUploadQueueTest_TestAction;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.InconclusiveCondition inconclusiveCondition6;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction Control_Set_DownloadStatusTest_TestAction;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.InconclusiveCondition inconclusiveCondition7;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction Control_Set_UploadStatusTest_TestAction;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.InconclusiveCondition inconclusiveCondition8;
            this.Control_Get_FileDownloadMetadataTestData = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestActions();
            this.Control_Get_FileUploadMetadataTestData = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestActions();
            this.Control_InitialiseAutomationTestData = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestActions();
            this.Control_InitialiseDownloadQueueTestData = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestActions();
            this.Control_InitialiseRunTestData = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestActions();
            this.Control_InitialiseUploadQueueTestData = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestActions();
            this.Control_Set_DownloadStatusTestData = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestActions();
            this.Control_Set_UploadStatusTestData = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestActions();
            Control_Get_FileDownloadMetadataTest_TestAction = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction();
            inconclusiveCondition1 = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.InconclusiveCondition();
            Control_Get_FileUploadMetadataTest_TestAction = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction();
            inconclusiveCondition2 = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.InconclusiveCondition();
            Control_InitialiseAutomationTest_TestAction = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction();
            inconclusiveCondition3 = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.InconclusiveCondition();
            Control_InitialiseDownloadQueueTest_TestAction = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction();
            inconclusiveCondition4 = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.InconclusiveCondition();
            Control_InitialiseRunTest_TestAction = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction();
            inconclusiveCondition5 = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.InconclusiveCondition();
            Control_InitialiseUploadQueueTest_TestAction = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction();
            inconclusiveCondition6 = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.InconclusiveCondition();
            Control_Set_DownloadStatusTest_TestAction = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction();
            inconclusiveCondition7 = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.InconclusiveCondition();
            Control_Set_UploadStatusTest_TestAction = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction();
            inconclusiveCondition8 = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.InconclusiveCondition();
            // 
            // Control_Get_FileDownloadMetadataTestData
            // 
            this.Control_Get_FileDownloadMetadataTestData.PosttestAction = null;
            this.Control_Get_FileDownloadMetadataTestData.PretestAction = null;
            this.Control_Get_FileDownloadMetadataTestData.TestAction = Control_Get_FileDownloadMetadataTest_TestAction;
            // 
            // Control_Get_FileDownloadMetadataTest_TestAction
            // 
            Control_Get_FileDownloadMetadataTest_TestAction.Conditions.Add(inconclusiveCondition1);
            resources.ApplyResources(Control_Get_FileDownloadMetadataTest_TestAction, "Control_Get_FileDownloadMetadataTest_TestAction");
            // 
            // inconclusiveCondition1
            // 
            inconclusiveCondition1.Enabled = true;
            inconclusiveCondition1.Name = "inconclusiveCondition1";
            // 
            // Control_Get_FileUploadMetadataTestData
            // 
            this.Control_Get_FileUploadMetadataTestData.PosttestAction = null;
            this.Control_Get_FileUploadMetadataTestData.PretestAction = null;
            this.Control_Get_FileUploadMetadataTestData.TestAction = Control_Get_FileUploadMetadataTest_TestAction;
            // 
            // Control_Get_FileUploadMetadataTest_TestAction
            // 
            Control_Get_FileUploadMetadataTest_TestAction.Conditions.Add(inconclusiveCondition2);
            resources.ApplyResources(Control_Get_FileUploadMetadataTest_TestAction, "Control_Get_FileUploadMetadataTest_TestAction");
            // 
            // inconclusiveCondition2
            // 
            inconclusiveCondition2.Enabled = true;
            inconclusiveCondition2.Name = "inconclusiveCondition2";
            // 
            // Control_InitialiseAutomationTestData
            // 
            this.Control_InitialiseAutomationTestData.PosttestAction = null;
            this.Control_InitialiseAutomationTestData.PretestAction = null;
            this.Control_InitialiseAutomationTestData.TestAction = Control_InitialiseAutomationTest_TestAction;
            // 
            // Control_InitialiseAutomationTest_TestAction
            // 
            Control_InitialiseAutomationTest_TestAction.Conditions.Add(inconclusiveCondition3);
            resources.ApplyResources(Control_InitialiseAutomationTest_TestAction, "Control_InitialiseAutomationTest_TestAction");
            // 
            // inconclusiveCondition3
            // 
            inconclusiveCondition3.Enabled = true;
            inconclusiveCondition3.Name = "inconclusiveCondition3";
            // 
            // Control_InitialiseDownloadQueueTestData
            // 
            this.Control_InitialiseDownloadQueueTestData.PosttestAction = null;
            this.Control_InitialiseDownloadQueueTestData.PretestAction = null;
            this.Control_InitialiseDownloadQueueTestData.TestAction = Control_InitialiseDownloadQueueTest_TestAction;
            // 
            // Control_InitialiseDownloadQueueTest_TestAction
            // 
            Control_InitialiseDownloadQueueTest_TestAction.Conditions.Add(inconclusiveCondition4);
            resources.ApplyResources(Control_InitialiseDownloadQueueTest_TestAction, "Control_InitialiseDownloadQueueTest_TestAction");
            // 
            // inconclusiveCondition4
            // 
            inconclusiveCondition4.Enabled = true;
            inconclusiveCondition4.Name = "inconclusiveCondition4";
            // 
            // Control_InitialiseRunTestData
            // 
            this.Control_InitialiseRunTestData.PosttestAction = null;
            this.Control_InitialiseRunTestData.PretestAction = null;
            this.Control_InitialiseRunTestData.TestAction = Control_InitialiseRunTest_TestAction;
            // 
            // Control_InitialiseRunTest_TestAction
            // 
            Control_InitialiseRunTest_TestAction.Conditions.Add(inconclusiveCondition5);
            resources.ApplyResources(Control_InitialiseRunTest_TestAction, "Control_InitialiseRunTest_TestAction");
            // 
            // inconclusiveCondition5
            // 
            inconclusiveCondition5.Enabled = true;
            inconclusiveCondition5.Name = "inconclusiveCondition5";
            // 
            // Control_InitialiseUploadQueueTestData
            // 
            this.Control_InitialiseUploadQueueTestData.PosttestAction = null;
            this.Control_InitialiseUploadQueueTestData.PretestAction = null;
            this.Control_InitialiseUploadQueueTestData.TestAction = Control_InitialiseUploadQueueTest_TestAction;
            // 
            // Control_InitialiseUploadQueueTest_TestAction
            // 
            Control_InitialiseUploadQueueTest_TestAction.Conditions.Add(inconclusiveCondition6);
            resources.ApplyResources(Control_InitialiseUploadQueueTest_TestAction, "Control_InitialiseUploadQueueTest_TestAction");
            // 
            // inconclusiveCondition6
            // 
            inconclusiveCondition6.Enabled = true;
            inconclusiveCondition6.Name = "inconclusiveCondition6";
            // 
            // Control_Set_DownloadStatusTestData
            // 
            this.Control_Set_DownloadStatusTestData.PosttestAction = null;
            this.Control_Set_DownloadStatusTestData.PretestAction = null;
            this.Control_Set_DownloadStatusTestData.TestAction = Control_Set_DownloadStatusTest_TestAction;
            // 
            // Control_Set_DownloadStatusTest_TestAction
            // 
            Control_Set_DownloadStatusTest_TestAction.Conditions.Add(inconclusiveCondition7);
            resources.ApplyResources(Control_Set_DownloadStatusTest_TestAction, "Control_Set_DownloadStatusTest_TestAction");
            // 
            // inconclusiveCondition7
            // 
            inconclusiveCondition7.Enabled = true;
            inconclusiveCondition7.Name = "inconclusiveCondition7";
            // 
            // Control_Set_UploadStatusTestData
            // 
            this.Control_Set_UploadStatusTestData.PosttestAction = null;
            this.Control_Set_UploadStatusTestData.PretestAction = null;
            this.Control_Set_UploadStatusTestData.TestAction = Control_Set_UploadStatusTest_TestAction;
            // 
            // Control_Set_UploadStatusTest_TestAction
            // 
            Control_Set_UploadStatusTest_TestAction.Conditions.Add(inconclusiveCondition8);
            resources.ApplyResources(Control_Set_UploadStatusTest_TestAction, "Control_Set_UploadStatusTest_TestAction");
            // 
            // inconclusiveCondition8
            // 
            inconclusiveCondition8.Enabled = true;
            inconclusiveCondition8.Name = "inconclusiveCondition8";
        }

        #endregion


        #region Additional test attributes
        //
        // You can use the following additional attributes as you write your tests:
        //
        // Use ClassInitialize to run code before running the first test in the class
        // [ClassInitialize()]
        // public static void MyClassInitialize(TestContext testContext) { }
        //
        // Use ClassCleanup to run code after all tests in a class have run
        // [ClassCleanup()]
        // public static void MyClassCleanup() { }
        //
        #endregion


        [TestMethod()]
        public void Control_Get_FileDownloadMetadataTest()
        {
            SqlDatabaseTestActions testActions = this.Control_Get_FileDownloadMetadataTestData;
            // Execute the pre-test script
            // 
            System.Diagnostics.Trace.WriteLineIf((testActions.PretestAction != null), "Executing pre-test script...");
            SqlExecutionResult[] pretestResults = TestService.Execute(this.PrivilegedContext, this.PrivilegedContext, testActions.PretestAction);
            try
            {
                // Execute the test script
                // 
                System.Diagnostics.Trace.WriteLineIf((testActions.TestAction != null), "Executing test script...");
                SqlExecutionResult[] testResults = TestService.Execute(this.ExecutionContext, this.PrivilegedContext, testActions.TestAction);
            }
            finally
            {
                // Execute the post-test script
                // 
                System.Diagnostics.Trace.WriteLineIf((testActions.PosttestAction != null), "Executing post-test script...");
                SqlExecutionResult[] posttestResults = TestService.Execute(this.PrivilegedContext, this.PrivilegedContext, testActions.PosttestAction);
            }
        }

        [TestMethod()]
        public void Control_Get_FileUploadMetadataTest()
        {
            SqlDatabaseTestActions testActions = this.Control_Get_FileUploadMetadataTestData;
            // Execute the pre-test script
            // 
            System.Diagnostics.Trace.WriteLineIf((testActions.PretestAction != null), "Executing pre-test script...");
            SqlExecutionResult[] pretestResults = TestService.Execute(this.PrivilegedContext, this.PrivilegedContext, testActions.PretestAction);
            try
            {
                // Execute the test script
                // 
                System.Diagnostics.Trace.WriteLineIf((testActions.TestAction != null), "Executing test script...");
                SqlExecutionResult[] testResults = TestService.Execute(this.ExecutionContext, this.PrivilegedContext, testActions.TestAction);
            }
            finally
            {
                // Execute the post-test script
                // 
                System.Diagnostics.Trace.WriteLineIf((testActions.PosttestAction != null), "Executing post-test script...");
                SqlExecutionResult[] posttestResults = TestService.Execute(this.PrivilegedContext, this.PrivilegedContext, testActions.PosttestAction);
            }
        }

        [TestMethod()]
        public void Control_InitialiseAutomationTest()
        {
            SqlDatabaseTestActions testActions = this.Control_InitialiseAutomationTestData;
            // Execute the pre-test script
            // 
            System.Diagnostics.Trace.WriteLineIf((testActions.PretestAction != null), "Executing pre-test script...");
            SqlExecutionResult[] pretestResults = TestService.Execute(this.PrivilegedContext, this.PrivilegedContext, testActions.PretestAction);
            try
            {
                // Execute the test script
                // 
                System.Diagnostics.Trace.WriteLineIf((testActions.TestAction != null), "Executing test script...");
                SqlExecutionResult[] testResults = TestService.Execute(this.ExecutionContext, this.PrivilegedContext, testActions.TestAction);
            }
            finally
            {
                // Execute the post-test script
                // 
                System.Diagnostics.Trace.WriteLineIf((testActions.PosttestAction != null), "Executing post-test script...");
                SqlExecutionResult[] posttestResults = TestService.Execute(this.PrivilegedContext, this.PrivilegedContext, testActions.PosttestAction);
            }
        }

        [TestMethod()]
        public void Control_InitialiseDownloadQueueTest()
        {
            SqlDatabaseTestActions testActions = this.Control_InitialiseDownloadQueueTestData;
            // Execute the pre-test script
            // 
            System.Diagnostics.Trace.WriteLineIf((testActions.PretestAction != null), "Executing pre-test script...");
            SqlExecutionResult[] pretestResults = TestService.Execute(this.PrivilegedContext, this.PrivilegedContext, testActions.PretestAction);
            try
            {
                // Execute the test script
                // 
                System.Diagnostics.Trace.WriteLineIf((testActions.TestAction != null), "Executing test script...");
                SqlExecutionResult[] testResults = TestService.Execute(this.ExecutionContext, this.PrivilegedContext, testActions.TestAction);
            }
            finally
            {
                // Execute the post-test script
                // 
                System.Diagnostics.Trace.WriteLineIf((testActions.PosttestAction != null), "Executing post-test script...");
                SqlExecutionResult[] posttestResults = TestService.Execute(this.PrivilegedContext, this.PrivilegedContext, testActions.PosttestAction);
            }
        }

        [TestMethod()]
        public void Control_InitialiseRunTest()
        {
            SqlDatabaseTestActions testActions = this.Control_InitialiseRunTestData;
            // Execute the pre-test script
            // 
            System.Diagnostics.Trace.WriteLineIf((testActions.PretestAction != null), "Executing pre-test script...");
            SqlExecutionResult[] pretestResults = TestService.Execute(this.PrivilegedContext, this.PrivilegedContext, testActions.PretestAction);
            try
            {
                // Execute the test script
                // 
                System.Diagnostics.Trace.WriteLineIf((testActions.TestAction != null), "Executing test script...");
                SqlExecutionResult[] testResults = TestService.Execute(this.ExecutionContext, this.PrivilegedContext, testActions.TestAction);
            }
            finally
            {
                // Execute the post-test script
                // 
                System.Diagnostics.Trace.WriteLineIf((testActions.PosttestAction != null), "Executing post-test script...");
                SqlExecutionResult[] posttestResults = TestService.Execute(this.PrivilegedContext, this.PrivilegedContext, testActions.PosttestAction);
            }
        }

        [TestMethod()]
        public void Control_InitialiseUploadQueueTest()
        {
            SqlDatabaseTestActions testActions = this.Control_InitialiseUploadQueueTestData;
            // Execute the pre-test script
            // 
            System.Diagnostics.Trace.WriteLineIf((testActions.PretestAction != null), "Executing pre-test script...");
            SqlExecutionResult[] pretestResults = TestService.Execute(this.PrivilegedContext, this.PrivilegedContext, testActions.PretestAction);
            try
            {
                // Execute the test script
                // 
                System.Diagnostics.Trace.WriteLineIf((testActions.TestAction != null), "Executing test script...");
                SqlExecutionResult[] testResults = TestService.Execute(this.ExecutionContext, this.PrivilegedContext, testActions.TestAction);
            }
            finally
            {
                // Execute the post-test script
                // 
                System.Diagnostics.Trace.WriteLineIf((testActions.PosttestAction != null), "Executing post-test script...");
                SqlExecutionResult[] posttestResults = TestService.Execute(this.PrivilegedContext, this.PrivilegedContext, testActions.PosttestAction);
            }
        }

        [TestMethod()]
        public void Control_Set_DownloadStatusTest()
        {
            SqlDatabaseTestActions testActions = this.Control_Set_DownloadStatusTestData;
            // Execute the pre-test script
            // 
            System.Diagnostics.Trace.WriteLineIf((testActions.PretestAction != null), "Executing pre-test script...");
            SqlExecutionResult[] pretestResults = TestService.Execute(this.PrivilegedContext, this.PrivilegedContext, testActions.PretestAction);
            try
            {
                // Execute the test script
                // 
                System.Diagnostics.Trace.WriteLineIf((testActions.TestAction != null), "Executing test script...");
                SqlExecutionResult[] testResults = TestService.Execute(this.ExecutionContext, this.PrivilegedContext, testActions.TestAction);
            }
            finally
            {
                // Execute the post-test script
                // 
                System.Diagnostics.Trace.WriteLineIf((testActions.PosttestAction != null), "Executing post-test script...");
                SqlExecutionResult[] posttestResults = TestService.Execute(this.PrivilegedContext, this.PrivilegedContext, testActions.PosttestAction);
            }
        }

        [TestMethod()]
        public void Control_Set_UploadStatusTest()
        {
            SqlDatabaseTestActions testActions = this.Control_Set_UploadStatusTestData;
            // Execute the pre-test script
            // 
            System.Diagnostics.Trace.WriteLineIf((testActions.PretestAction != null), "Executing pre-test script...");
            SqlExecutionResult[] pretestResults = TestService.Execute(this.PrivilegedContext, this.PrivilegedContext, testActions.PretestAction);
            try
            {
                // Execute the test script
                // 
                System.Diagnostics.Trace.WriteLineIf((testActions.TestAction != null), "Executing test script...");
                SqlExecutionResult[] testResults = TestService.Execute(this.ExecutionContext, this.PrivilegedContext, testActions.TestAction);
            }
            finally
            {
                // Execute the post-test script
                // 
                System.Diagnostics.Trace.WriteLineIf((testActions.PosttestAction != null), "Executing post-test script...");
                SqlExecutionResult[] posttestResults = TestService.Execute(this.PrivilegedContext, this.PrivilegedContext, testActions.PosttestAction);
            }
        }
private SqlDatabaseTestActions Control_Get_FileDownloadMetadataTestData;
private SqlDatabaseTestActions Control_Get_FileUploadMetadataTestData;
private SqlDatabaseTestActions Control_InitialiseAutomationTestData;
private SqlDatabaseTestActions Control_InitialiseDownloadQueueTestData;
private SqlDatabaseTestActions Control_InitialiseRunTestData;
private SqlDatabaseTestActions Control_InitialiseUploadQueueTestData;
private SqlDatabaseTestActions Control_Set_DownloadStatusTestData;
private SqlDatabaseTestActions Control_Set_UploadStatusTestData;
    }
}
