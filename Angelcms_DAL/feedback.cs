using System;
using System.Data;
using System.Text;
using System.Collections.Generic;
using System.Data.SqlClient;
using Angelcms_DBUtility;
using Angelcms_Common;
using Angelcms.Model;

namespace Angelcms.DAL
{
    /// <summary>
    /// 数据访问类:feedback
    /// </summary>
    public partial class feedback
    {

        private string databaseprefix;

        public feedback(string _databaseprefix)
        {
            this.databaseprefix = _databaseprefix;
        }

        public int Add(Age_feedback model)
        {
            StringBuilder builder = new StringBuilder();
            builder.Append("insert into " + this.databaseprefix + "feedback(");
            builder.Append("title,content,user_name,user_tel,user_qq,user_email,add_time,is_lock)");
            builder.Append(" values (");
            builder.Append("@title,@content,@user_name,@user_tel,@user_qq,@user_email,@add_time,@is_lock)");
            builder.Append(";select @@IDENTITY");
            SqlParameter[] parameterArray = new SqlParameter[] { new SqlParameter("@title", SqlDbType.NVarChar, 100), new SqlParameter("@content", SqlDbType.NText), new SqlParameter("@user_name", SqlDbType.NVarChar, 50), new SqlParameter("@user_tel", SqlDbType.NVarChar, 30), new SqlParameter("@user_qq", SqlDbType.NVarChar, 30), new SqlParameter("@user_email", SqlDbType.NVarChar, 100), new SqlParameter("@add_time", SqlDbType.DateTime), new SqlParameter("@is_lock", SqlDbType.TinyInt, 1) };
            parameterArray[0].Value = model.title;
            parameterArray[1].Value = model.content;
            parameterArray[2].Value = model.user_name;
            parameterArray[3].Value = model.user_tel;
            parameterArray[4].Value = model.user_qq;
            parameterArray[5].Value = model.user_email;
            parameterArray[6].Value = model.add_time;
            parameterArray[7].Value = model.is_lock;
            object single = DbHelperMSSQL.GetSingle(builder.ToString(), parameterArray);
            if (single == null)
            {
                return 0;
            }
            return Convert.ToInt32(single);
        }

        public bool Delete(int id)
        {
            StringBuilder builder = new StringBuilder();
            builder.Append("delete from " + this.databaseprefix + "feedback ");
            builder.Append(" where id=@id");
            SqlParameter[] parameterArray = new SqlParameter[] { new SqlParameter("@id", SqlDbType.Int, 4) };
            parameterArray[0].Value = id;
            return (DbHelperMSSQL.ExecuteSql(builder.ToString(), parameterArray) > 0);
        }

        public bool Exists(int id)
        {
            StringBuilder builder = new StringBuilder();
            builder.Append("select count(1) from " + this.databaseprefix + "feedback");
            builder.Append(" where id=@id");
            SqlParameter[] parameterArray = new SqlParameter[] { new SqlParameter("@id", SqlDbType.Int, 4) };
            parameterArray[0].Value = id;
            return DbHelperMSSQL.Exists(builder.ToString(), parameterArray);
        }

        public DataSet GetList(int Top, string strWhere)
        {
            StringBuilder builder = new StringBuilder();
            builder.Append("select ");
            if (Top > 0)
            {
                builder.Append(" top " + Top.ToString());
            }
            builder.Append(" id,title,content,user_name,user_tel,user_qq,user_email,add_time,reply_content,reply_time,is_lock ");
            builder.Append(" FROM " + this.databaseprefix + "feedback ");
            if (strWhere.Trim() != "")
            {
                builder.Append(" where " + strWhere);
            }
            builder.Append(" order by add_time desc");
            return DbHelperMSSQL.Query(builder.ToString());
        }

        public DataSet GetList(int pageSize, int pageIndex, string strWhere, string filedOrder, out int recordCount)
        {
            StringBuilder builder = new StringBuilder();
            builder.Append("select * FROM " + this.databaseprefix + "feedback");
            if (strWhere.Trim() != "")
            {
                builder.Append(" where " + strWhere);
            }
            recordCount = Convert.ToInt32(DbHelperMSSQL.GetSingle(PagingHelper.CreateCountingSql(builder.ToString())));
            return DbHelperMSSQL.Query(PagingHelper.CreatePagingSql(recordCount, pageSize, pageIndex, builder.ToString(), filedOrder));
        }

        public Age_feedback GetModel(int id)
        {
            StringBuilder builder = new StringBuilder();
            builder.Append("select  top 1 id,title,content,user_name,user_tel,user_qq,user_email,add_time,reply_content,reply_time,is_lock from " + this.databaseprefix + "feedback ");
            builder.Append(" where id=@id");
            SqlParameter[] parameterArray = new SqlParameter[] { new SqlParameter("@id", SqlDbType.Int, 4) };
            parameterArray[0].Value = id;
            Age_feedback feedback = new Age_feedback();
            DataSet set = DbHelperMSSQL.Query(builder.ToString(), parameterArray);
            if (set.Tables[0].Rows.Count > 0)
            {
                if ((set.Tables[0].Rows[0]["id"] != null) && (set.Tables[0].Rows[0]["id"].ToString() != ""))
                {
                    feedback.id = int.Parse(set.Tables[0].Rows[0]["id"].ToString());
                }
                if ((set.Tables[0].Rows[0]["title"] != null) && (set.Tables[0].Rows[0]["title"].ToString() != ""))
                {
                    feedback.title = set.Tables[0].Rows[0]["title"].ToString();
                }
                if ((set.Tables[0].Rows[0]["content"] != null) && (set.Tables[0].Rows[0]["content"].ToString() != ""))
                {
                    feedback.content = set.Tables[0].Rows[0]["content"].ToString();
                }
                if ((set.Tables[0].Rows[0]["user_name"] != null) && (set.Tables[0].Rows[0]["user_name"].ToString() != ""))
                {
                    feedback.user_name = set.Tables[0].Rows[0]["user_name"].ToString();
                }
                if ((set.Tables[0].Rows[0]["user_tel"] != null) && (set.Tables[0].Rows[0]["user_tel"].ToString() != ""))
                {
                    feedback.user_tel = set.Tables[0].Rows[0]["user_tel"].ToString();
                }
                if ((set.Tables[0].Rows[0]["user_qq"] != null) && (set.Tables[0].Rows[0]["user_qq"].ToString() != ""))
                {
                    feedback.user_qq = set.Tables[0].Rows[0]["user_qq"].ToString();
                }
                if ((set.Tables[0].Rows[0]["user_email"] != null) && (set.Tables[0].Rows[0]["user_email"].ToString() != ""))
                {
                    feedback.user_email = set.Tables[0].Rows[0]["user_email"].ToString();
                }
                if ((set.Tables[0].Rows[0]["add_time"] != null) && (set.Tables[0].Rows[0]["add_time"].ToString() != ""))
                {
                    feedback.add_time = DateTime.Parse(set.Tables[0].Rows[0]["add_time"].ToString());
                }
                if ((set.Tables[0].Rows[0]["reply_content"] != null) && (set.Tables[0].Rows[0]["reply_content"].ToString() != ""))
                {
                    feedback.reply_content = set.Tables[0].Rows[0]["reply_content"].ToString();
                }
                if ((set.Tables[0].Rows[0]["reply_time"] != null) && (set.Tables[0].Rows[0]["reply_time"].ToString() != ""))
                {
                    feedback.reply_time = DateTime.Parse(set.Tables[0].Rows[0]["reply_time"].ToString());
                }
                if ((set.Tables[0].Rows[0]["is_lock"] != null) && (set.Tables[0].Rows[0]["is_lock"].ToString() != ""))
                {
                    feedback.is_lock = int.Parse(set.Tables[0].Rows[0]["is_lock"].ToString());
                }
                return feedback;
            }
            return null;
        }

        public bool Update(Age_feedback model)
        {
            StringBuilder builder = new StringBuilder();
            builder.Append("update " + this.databaseprefix + "feedback set ");
            builder.Append("title=@title,");
            builder.Append("content=@content,");
            builder.Append("user_name=@user_name,");
            builder.Append("user_tel=@user_tel,");
            builder.Append("user_qq=@user_qq,");
            builder.Append("user_email=@user_email,");
            builder.Append("add_time=@add_time,");
            builder.Append("reply_content=@reply_content,");
            builder.Append("reply_time=@reply_time,");
            builder.Append("is_lock=@is_lock");
            builder.Append(" where id=@id");
            SqlParameter[] parameterArray = new SqlParameter[] { new SqlParameter("@title", SqlDbType.NVarChar, 100), new SqlParameter("@content", SqlDbType.NText), new SqlParameter("@user_name", SqlDbType.NVarChar, 50), new SqlParameter("@user_tel", SqlDbType.NVarChar, 30), new SqlParameter("@user_qq", SqlDbType.NVarChar, 30), new SqlParameter("@user_email", SqlDbType.NVarChar, 100), new SqlParameter("@add_time", SqlDbType.DateTime), new SqlParameter("@reply_content", SqlDbType.NText), new SqlParameter("@reply_time", SqlDbType.DateTime), new SqlParameter("@is_lock", SqlDbType.TinyInt, 1), new SqlParameter("@id", SqlDbType.Int, 4) };
            parameterArray[0].Value = model.title;
            parameterArray[1].Value = model.content;
            parameterArray[2].Value = model.user_name;
            parameterArray[3].Value = model.user_tel;
            parameterArray[4].Value = model.user_qq;
            parameterArray[5].Value = model.user_email;
            parameterArray[6].Value = model.add_time;
            parameterArray[7].Value = model.reply_content;
            parameterArray[8].Value = model.reply_time;
            parameterArray[9].Value = model.is_lock;
            parameterArray[10].Value = model.id;
            return (DbHelperMSSQL.ExecuteSql(builder.ToString(), parameterArray) > 0);
        }

        public void UpdateField(int id, string strValue)
        {
            StringBuilder builder = new StringBuilder();
            builder.Append("update " + this.databaseprefix + "feedback set " + strValue);
            builder.Append(" where id=" + id);
            DbHelperMSSQL.ExecuteSql(builder.ToString());
        }
    




    }
}
