﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ShopHuy.Models;

namespace ShopHuy.Areas.Admin.Controllers
{
    public class DeliveriesController : Controller
    {
        private WatchEntities db = new WatchEntities();

        // GET: Admin/Deliveries
        public ActionResult Index()
        {
            var deliveries = db.Deliveries.Include(d => d.Employee);
            return View(deliveries.ToList());
        }

        // GET: Admin/Deliveries/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Delivery delivery = db.Deliveries.Find(id);
            if (delivery == null)
            {
                return HttpNotFound();
            }
            return View(delivery);
        }

        // GET: Admin/Deliveries/Create
        public ActionResult Create()
        {
            ViewBag.EmployeeCode = new SelectList(db.Employees, "EmployeeCode", "EmployeePass");
            return View();
        }

        // POST: Admin/Deliveries/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "DeliveryId,DeliveryTitle,DeliveryDetails,DeliveryQuestion,DeliveryImg,EmployeeCode")] Delivery delivery)
        {
            if (ModelState.IsValid)
            {
                db.Deliveries.Add(delivery);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.EmployeeCode = new SelectList(db.Employees, "EmployeeCode", "EmployeePass", delivery.EmployeeCode);
            return View(delivery);
        }

        // GET: Admin/Deliveries/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Delivery delivery = db.Deliveries.Find(id);
            if (delivery == null)
            {
                return HttpNotFound();
            }
            ViewBag.EmployeeCode = new SelectList(db.Employees, "EmployeeCode", "EmployeePass", delivery.EmployeeCode);
            return View(delivery);
        }

        // POST: Admin/Deliveries/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "DeliveryId,DeliveryTitle,DeliveryDetails,DeliveryQuestion,DeliveryImg,EmployeeCode")] Delivery delivery)
        {
            if (ModelState.IsValid)
            {
                db.Entry(delivery).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.EmployeeCode = new SelectList(db.Employees, "EmployeeCode", "EmployeePass", delivery.EmployeeCode);
            return View(delivery);
        }

        // GET: Admin/Deliveries/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Delivery delivery = db.Deliveries.Find(id);
            if (delivery == null)
            {
                return HttpNotFound();
            }
            return View(delivery);
        }

        // POST: Admin/Deliveries/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Delivery delivery = db.Deliveries.Find(id);
            db.Deliveries.Remove(delivery);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
