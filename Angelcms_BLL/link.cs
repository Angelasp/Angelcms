using System;
using System.Data;
using System.Collections.Generic;
using Angelcms_Common;
using Angelcms.Model;

namespace Angelcms.BLL
{
    public class link
    {
        private readonly DAL.link dal;
        private readonly Age_siteconfig siteConfig = new BLL.siteconfig().loadConfig(); //获得站点配置信息

        public link()
        {
            dal = new DAL.link(siteConfig.sysdatabaseprefix);
        }

        public int Add(Age_link model)
        {
            return this.dal.Add(model);
        }

        public bool Delete(int id)
        {
            return this.dal.Delete(id);
        }

        public bool Exists(int id)
        {
            return this.dal.Exists(id);
        }

        public DataSet GetList(string strWhere)
        {
            return this.dal.GetList(strWhere);
        }

        public DataSet GetList(int Top, string strWhere)
        {
            return this.dal.GetList(Top, strWhere);
        }

        public DataSet GetList(int pageSize, int pageIndex, string strWhere, string filedOrder, out int recordCount)
        {
            return this.dal.GetList(pageSize, pageIndex, strWhere, filedOrder, out recordCount);
        }

        public Age_link GetModel(int id)
        {
            return this.dal.GetModel(id);
        }

        public bool Update(Age_link model)
        {
            return this.dal.Update(model);
        }

        public void UpdateField(int id, string strValue)
        {
            this.dal.UpdateField(id, strValue);
        }
    }
}
