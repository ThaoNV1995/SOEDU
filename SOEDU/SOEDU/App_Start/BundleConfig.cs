﻿using System.Web;
using System.Web.Optimization;

namespace SOEDU
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Content/js/jquery-1.10.2.min.js",
                        "~/Content/Plugins/bootstrap/dist/js/bootstrap.min.js",
                        "~/Content/js/main.js",
                        "~/Content/js/jquery.scrollUp.min.js"
                        ));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                "~/Content/Plugins/bootstrap/dist/css/bootstrap.min.css",
                "~/Content/css/Style.css",
                "~/Content/Plugins/font-awesome-4.5.0/css/font-awesome.min.css",
                "~/Content/Plugins/bootstrap-social-gh-pages/bootstrap-social.css",
                "~/Content/css/Style.css"
                ));
        }
    }
}
