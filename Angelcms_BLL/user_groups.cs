using System;
using System.Data;
using System.Collections.Generic;
using Angelcms.Model;

namespace Angelcms.BLL
{
    /// <summary>
    /// �û���(�ȼ�)
    /// </summary>
    public partial class user_groups
    {


        private readonly Age_siteconfig siteConfig = new BLL.siteconfig().loadConfig(); //���վ��������Ϣ
        private readonly DAL.user_groups dal;

        public user_groups()
        {
            dal = new DAL.user_groups(siteConfig.sysdatabaseprefix);
        }
       
        #region  ��������
        /// <summary>
        /// �Ƿ���ڸü�¼
        /// </summary>
        public bool Exists(int id)
        {
            return dal.Exists(id);
        }

        /// <summary>
        /// �����û�������
        /// </summary>
        public string GetTitle(int id)
        {
            return dal.GetTitle(id);
        }

        /// <summary>
        /// ����һ������
        /// </summary>
        public int Add(Age_user_groups model)
        {
            return dal.Add(model);
        }

        /// <summary>
        /// ����һ������
        /// </summary>
        public bool Update(Age_user_groups model)
        {
            return dal.Update(model);
        }

        /// <summary>
        /// ɾ��һ������
        /// </summary>
        public bool Delete(int id)
        {
            return dal.Delete(id);
        }

        /// <summary>
        /// �õ�һ������ʵ��
        /// </summary>
        public Age_user_groups GetModel(int id)
        {
            return dal.GetModel(id);
        }

        /// <summary>
        /// ȡ��Ĭ�����ʵ��
        /// </summary>
        public Age_user_groups GetDefault()
        {
            return dal.GetDefault();
        }

        /// <summary>
        /// ���ݾ���ֵ�������������ʵ��
        /// </summary>
        public Age_user_groups GetUpgrade(int group_id, int exp)
        {
            return dal.GetUpgrade(group_id, exp);
        }

        /// <summary>
        /// ���ǰ��������
        /// </summary>
        public DataSet GetList(int Top, string strWhere, string filedOrder)
        {
            return dal.GetList(Top, strWhere, filedOrder);
        }

        #endregion  Method
    }
}