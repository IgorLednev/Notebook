/*using Notebook;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Notebook
{
    public partial class Default : System.Web.UI.Page
    {
        NotebookContainer DatabaseContext;
        protected void Page_Load(object sender, EventArgs e)
        {
            DatabaseContext = new NotebookContainer();
            ListView1.InsertItemPosition = InsertItemPosition.LastItem;

            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
            {
                Path = "~/Content/Js/jquery-3.2.1.min.js",
            });
        }

        public IQueryable<Contact> GetContacts()
        {
            return DatabaseContext.Notebook.AsQueryable<Contact>();
        }

        public void EditContact(int? ID)
        {
            var contact = DatabaseContext.Notebook.Where(element => element.Id == ID).FirstOrDefault();

            if (contact != null && TryUpdateModel<Contact>(contact))
            {
                DatabaseContext.Entry<Contact>(contact).State = System.Data.Entity.EntityState.Modified;
                DatabaseContext.SaveChanges();
            }
        }

        public void DeleteContact()
        {
            var contact = new Contact();

            if (TryUpdateModel<Contact>(contact))
            {
                DatabaseContext.Entry<Contact>(contact).State = System.Data.Entity.EntityState.Deleted;
                DatabaseContext.SaveChanges();
            }
        }

        public void InsertContact()
        {
            var contact = new Contact();

            if (TryUpdateModel<Contact>(contact))
            {
                DatabaseContext.Entry<Contact>(contact).State = System.Data.Entity.EntityState.Added;
                DatabaseContext.SaveChanges();
            }
        }
    }
}*/