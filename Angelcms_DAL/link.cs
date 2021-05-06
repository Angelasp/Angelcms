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
    public class link
    {
        private string databaseprefix;
        //构造函数
        public link(string _databaseprefix)
        {
            this.databaseprefix = _databaseprefix;
        }
        //添加友情链接
        public int Add(Age_link model)
        {
            StringBuilder builder = new StringBuilder();
            builder.Append("insert into " + this.databaseprefix + "link(");
            builder.Append("title,user_name,user_tel,email,site_url,img_url,is_image,sort_id,is_red,is_lock,add_time)");
            builder.Append(" values (");
            builder.Append("@title,@user_name,@user_tel,@email,@site_url,@img_url,@is_image,@sort_id,@is_red,@is_lock,@add_time)");
            SqlParameter[] parameterArray = new SqlParameter[] { new SqlParameter("@title", SqlDbType.VarChar, 0xff), new SqlParameter("@user_name", SqlDbType.VarChar, 50), new SqlParameter("@user_tel", SqlDbType.VarChar, 20), new SqlParameter("@email", SqlDbType.VarChar, 50), new SqlParameter("@site_url", SqlDbType.VarChar, 0xff), new SqlParameter("@img_url", SqlDbType.VarChar, 0xff), new SqlParameter("@is_image", SqlDbType.Int, 4), new SqlParameter("@sort_id", SqlDbType.Int, 4), new SqlParameter("@is_red", SqlDbType.Int, 4), new SqlParameter("@is_lock", SqlDbType.Int, 4), new SqlParameter("@add_time", SqlDbType.Date) };
            parameterArray[0].Value = model.title;
            parameterArray[1].Value = model.user_name;
            parameterArray[2].Value = model.user_tel;
            parameterArray[3].Value = model.email;
            parameterArray[4].Value = model.site_url;
            parameterArray[5].Value = model.img_url;
            parameterArray[6].Value = model.is_image;
            parameterArray[7].Value = model.sort_id;
            parameterArray[8].Value = model.is_red;
            parameterArray[9].Value = model.is_lock;
            parameterArray[10].Value = model.add_time;
            return DbHelperMSSQL.ExecuteSql(builder.ToString(), parameterArray);
        }
        //删除友情连接
        public bool Delete(int id)
        {
            StringBuilder builder = new StringBuilder();
            builder.Append("delete from " + this.databaseprefix + "link ");
            builder.Append(" where id=@id");
            SqlParameter[] parameterArray = new SqlParameter[] { new SqlParameter("@id", SqlDbType.Int, 4) };
            parameterArray[0].Value = id;
            return (DbHelperMSSQL.ExecuteSql(builder.ToString(), parameterArray) > 0);
        }
        //判断ID是否存在
        public bool Exists(int id)
        {
            StringBuilder builder = new StringBuilder();
            builder.Append("select count(1) from " + this.databaseprefix + "link");
            builder.Append(" where id=@id ");
            SqlParameter[] parameterArray = new SqlParameter[] { new SqlParameter("@id", SqlDbType.Int, 4) };
            parameterArray[0].Value = id;
            return DbHelperMSSQL.Exists(builder.ToString(), parameterArray);
        }
        //获取数据表
        public DataSet GetList(string strWhere)
        {
            StringBuilder builder = new StringBuilder();
            builder.Append("select id,title,user_name,user_tel,email,site_url,img_url,is_image,sort_id,is_red,is_lock,add_time ");
            builder.Append(" FROM " + this.databaseprefix + "link ");
            if (strWhere.Trim() != "")
            {
                builder.Append(" where " + strWhere);
            }
            return DbHelperMSSQL.Query(builder.ToString());
        }
        //前几条信息
        public DataSet GetList(int Top, string strWhere)
        {
            StringBuilder builder = new StringBuilder();
            builder.Append("select ");
            if (Top > 0)
            {
                builder.Append(" top " + Top.ToString());
            }
            builder.Append(" id,title,user_name,user_tel,email,site_url,img_url,is_image,sort_id,is_red,is_lock,add_time ");
            builder.Append(" FROM " + this.databaseprefix + "link ");
            if (strWhere.Trim() != "")
            {
                builder.Append(" where " + strWhere);
            }
            builder.Append(" order by sort_id asc,add_time desc");
            return DbHelperMSSQL.Query(builder.ToString());
        }
        //分页数据
        public DataSet GetList(int pageSize, int pageIndex, string strWhere, string filedOrder, out int recordCount)
        {
            StringBuilder builder = new StringBuilder();
            builder.Append("select * FROM " + this.databaseprefix + "link");
            if (strWhere.Trim() != "")
            {
                builder.Append(" where " + strWhere);
            }
            recordCount = Convert.ToInt32(DbHelperMSSQL.GetSingle(PagingHelper.CreateCountingSql(builder.ToString())));
            return DbHelperMSSQL.Query(PagingHelper.CreatePagingSql(recordCount, pageSize, pageIndex, builder.ToString(), filedOrder));
        }

        //获得友情连接
        public Age_link GetModel(int id)
        {
            StringBuilder builder = new StringBuilder();
            builder.Append("select  top 1 id,title,user_name,user_tel,email,site_url,img_url,is_image,sort_id,is_red,is_lock,add_time from " + this.databaseprefix + "link ");
            builder.Append(" where id=@id");
            SqlParameter[] parameterArray = new SqlParameter[] { new SqlParameter("@id", SqlDbType.Int, 4) };
            parameterArray[0].Value = id;
            Age_link link = new Age_link();
            DataSet set = DbHelperMSSQL.Query(builder.ToString(), parameterArray);
            if (set.Tables[0].Rows.Count > 0)
            {
                if ((set.Tables[0].Rows[0]["id"] != null) && (set.Tables[0].Rows[0]["id"].ToString() != ""))
                {
                    link.id = int.Parse(set.Tables[0].Rows[0]["id"].ToString());
                }
                if ((set.Tables[0].Rows[0]["title"] != null) && (set.Tables[0].Rows[0]["title"].ToString() != ""))
                {
                    link.title = set.Tables[0].Rows[0]["title"].ToString();
                }
                if ((set.Tables[0].Rows[0]["user_name"] != null) && (set.Tables[0].Rows[0]["user_name"].ToString() != ""))
                {
                    link.user_name = set.Tables[0].Rows[0]["user_name"].ToString();
                }
                if ((set.Tables[0].Rows[0]["user_tel"] != null) && (set.Tables[0].Rows[0]["user_tel"].ToString() != ""))
                {
                    link.user_tel = set.Tables[0].Rows[0]["user_tel"].ToString();
                }
                if ((set.Tables[0].Rows[0]["email"] != null) && (set.Tables[0].Rows[0]["email"].ToString() != ""))
                {
                    link.email = set.Tables[0].Rows[0]["email"].ToString();
                }
                if ((set.Tables[0].Rows[0]["site_url"] != null) && (set.Tables[0].Rows[0]["site_url"].ToString() != ""))
                {
                    link.site_url = set.Tables[0].Rows[0]["site_url"].ToString();
                }
                if ((set.Tables[0].Rows[0]["img_url"] != null) && (set.Tables[0].Rows[0]["img_url"].ToString() != ""))
                {
                    link.img_url = set.Tables[0].Rows[0]["img_url"].ToString();
                }
                if ((set.Tables[0].Rows[0]["is_image"] != null) && (set.Tables[0].Rows[0]["is_image"].ToString() != ""))
                {
                    link.is_image = int.Parse(set.Tables[0].Rows[0]["is_image"].ToString());
                }
                if ((set.Tables[0].Rows[0]["sort_id"] != null) && (set.Tables[0].Rows[0]["sort_id"].ToString() != ""))
                {
                    link.sort_id = int.Parse(set.Tables[0].Rows[0]["sort_id"].ToString());
                }
                if ((set.Tables[0].Rows[0]["is_red"] != null) && (set.Tables[0].Rows[0]["is_red"].ToString() != ""))
                {
                    link.is_red = int.Parse(set.Tables[0].Rows[0]["is_red"].ToString());
                }
                if ((set.Tables[0].Rows[0]["is_lock"] != null) && (set.Tables[0].Rows[0]["is_lock"].ToString() != ""))
                {
                    link.is_lock = int.Parse(set.Tables[0].Rows[0]["is_lock"].ToString());
                }
                if ((set.Tables[0].Rows[0]["add_time"] != null) && (set.Tables[0].Rows[0]["add_time"].ToString() != ""))
                {
                    link.add_time = DateTime.Parse(set.Tables[0].Rows[0]["add_time"].ToString());
                }
                return link;
            }
            return null;
        }
       //修改友情
        public bool Update(Age_link model)
        {
            StringBuilder builder = new StringBuilder();
            builder.Append("update " + this.databaseprefix + "link set ");
            builder.Append("title=@title,");
            builder.Append("user_name=@user_name,");
            builder.Append("user_tel=@user_tel,");
            builder.Append("email=@email,");
            builder.Append("site_url=@site_url,");
            builder.Append("img_url=@img_url,");
            builder.Append("is_image=@is_image,");
            builder.Append("sort_id=@sort_id,");
            builder.Append("is_red=@is_red,");
            builder.Append("is_lock=@is_lock,");
            builder.Append("add_time=@add_time");
            builder.Append(" where id=@id");
            SqlParameter[] parameterArray = new SqlParameter[] { new SqlParameter("@title", SqlDbType.VarChar, 0xff), new SqlParameter("@user_name", SqlDbType.VarChar, 50), new SqlParameter("@user_tel", SqlDbType.VarChar, 20), new SqlParameter("@email", SqlDbType.VarChar, 50), new SqlParameter("@site_url", SqlDbType.VarChar, 0xff), new SqlParameter("@img_url", SqlDbType.VarChar, 0xff), new SqlParameter("@is_image", SqlDbType.Int, 4), new SqlParameter("@sort_id", SqlDbType.Int, 4), new SqlParameter("@is_red", SqlDbType.Int, 4), new SqlParameter("@is_lock", SqlDbType.Int, 4), new SqlParameter("@add_time", SqlDbType.Date), new SqlParameter("@id", SqlDbType.Int, 4) };
            parameterArray[0].Value = model.title;
            parameterArray[1].Value = model.user_name;
            parameterArray[2].Value = model.user_tel;
            parameterArray[3].Value = model.email;
            parameterArray[4].Value = model.site_url;
            parameterArray[5].Value = model.img_url;
            parameterArray[6].Value = model.is_image;
            parameterArray[7].Value = model.sort_id;
            parameterArray[8].Value = model.is_red;
            parameterArray[9].Value = model.is_lock;
            parameterArray[10].Value = model.add_time;
            parameterArray[11].Value = model.id;
            return (DbHelperMSSQL.ExecuteSql(builder.ToString(), parameterArray) > 0);
        }
        //修改某个字段信息
        public void UpdateField(int id, string strValue)
        {
            StringBuilder builder = new StringBuilder();
            builder.Append("update " + this.databaseprefix + "link set " + strValue);
            builder.Append(" where id=" + id);
            DbHelperMSSQL.ExecuteSql(builder.ToString());
        }
    }
}
