using Microsoft.AspNetCore.Mvc;

namespace UdemyCarBook.WebUI.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class BannerController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
