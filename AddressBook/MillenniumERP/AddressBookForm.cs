﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MillenniumERP.Services;
using MillenniumERP.EntityFramework;

namespace MillenniumERP
{
    public partial class AddressBookForm : Form
    {
        UnitOfWork unitOfWork = new UnitOfWork();
        public AddressBookForm()
        {
            InitializeComponent();
            dataGridViewAddressBook.MultiSelect = false;
        }

        private void cmdSearch_Click(object sender, EventArgs e)
        {

            IQueryable<AddressBook> query = unitOfWork.addressBookRepository.GetObjectsAsync(a => a.Name.Contains(txtSearchName.Text.ToString()));

            dataGridViewAddressBook.AutoGenerateColumns = false;
            dataGridViewAddressBook.DataSource = query.ToList<AddressBook>();


        }

        private void AddressBookForm_Load(object sender, EventArgs e)
        {

        }

        private void cmdSelect_Click(object sender, EventArgs e)
        {
            int addressId = 0;
            AddressBook formData = new AddressBook();

            if (dataGridViewAddressBook.SelectedRows.Count != 0)
            {
                DataGridViewRow row = this.dataGridViewAddressBook.SelectedRows[0];
                addressId = Int32.Parse(row.Cells["AddressId"].Value.ToString());


                Task<AddressBook> resultTask = Task.Run<AddressBook>(async () => await unitOfWork.addressBookRepository.GetObjectAsync(addressId));

                Task continueTask = resultTask.ContinueWith(
               query =>
               {
                   formData.AddressId = query.Result.AddressId;
                   formData.Name = query.Result.Name;
                   formData.FirstName = query.Result.FirstName;
                   formData.LastName = query.Result.LastName;
                   formData.Company = query.Result.Company;
                   formData.PrimaryPhoneId = query.Result.PrimaryPhoneId;
                   formData.MailingCity = query.Result.MailingCity;
                   formData.MailingState = query.Result.MailingState;
                   formData.MailingAddress = query.Result.MailingAddress;
                   formData.MailingZipcode = query.Result.MailingZipcode;
                   formData.BillingCity = query.Result.BillingCity;
                   formData.BillingState = query.Result.BillingState;
                   formData.BillingZipcode = query.Result.BillingZipcode;
                   formData.BillingAddress = query.Result.BillingAddress;
                   formData.Type = query.Result.Type;
                   formData.PeopleXrefId = query.Result.PeopleXrefId;
                   formData.ProductKey = query.Result.ProductKey;
                   formData.Fax = query.Result.Fax;
                   formData.PrimaryShippedToAddressId = query.Result.PrimaryShippedToAddressId;
                   formData.PrimaryEmailId = query.Result.PrimaryEmailId;
                   MessageBox.Show(formData.Name);
               });


                Task.WaitAll(resultTask);

             



            }

        }
    }
}
