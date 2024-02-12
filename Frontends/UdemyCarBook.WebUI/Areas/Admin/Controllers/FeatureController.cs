using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Text;
using UdemyCarBook.Dto.FeatureDtos;

namespace UdemyCarBook.WebUI.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Route("Admin/Feature")]
    public class FeatureController : Controller
    {
        private readonly IHttpClientFactory _httpClientFactory;

        public FeatureController(IHttpClientFactory httpClientFactory)
        {
            _httpClientFactory = httpClientFactory;
        }
        [Route("Index")]
        public async Task<IActionResult> Index()
        {
            var client = _httpClientFactory.CreateClient();
            var responseMessage = await client.GetAsync("https://localhost:7026/api/Features");
            if (responseMessage.IsSuccessStatusCode)
            {
                var jsonData = await responseMessage.Content.ReadAsStringAsync();
                var values = JsonConvert.DeserializeObject<List<ResultFeatureDto>>(jsonData);
                return View(values);
            }
            return View();
        }


        [HttpGet]
        [Route("CreateFeature")]
        public IActionResult CreateFeature()
        {
            return View();
        }

        [HttpPost]
        [Route("CreateFeature")]
        public async Task<IActionResult> CreateFeature(UpdateFeatureDto updateFeatureDto)
        {
            var client = _httpClientFactory.CreateClient();
            var jsonData = JsonConvert.SerializeObject(updateFeatureDto);
            StringContent stringContent = new StringContent(jsonData, Encoding.UTF8, "application/json");
            var responseMessage = await client.PostAsync("https://localhost:7026/api/Features", stringContent);
            if (responseMessage.IsSuccessStatusCode)
            {
                return RedirectToAction("Index");
            }
            return View();
        }
        [Route("RemoveFeature/{id}")]
        public async Task<IActionResult> RemoveFeature(int id)
        {
            var client = _httpClientFactory.CreateClient();
            var responseMessage = await client.DeleteAsync($"https://localhost:7026/api/Features/{id}");
            if (responseMessage.IsSuccessStatusCode)
            {
                return RedirectToAction("Index");
            }
            return View();
        }

        [HttpGet]
        [Route("UpdateFeature/{id}")]
        public async Task<IActionResult> UpdateFeature(int id)
        {
            var client = _httpClientFactory.CreateClient();
            var responseMessage = await client.GetAsync($"https://localhost:7026/api/Features/{id}");
            if (responseMessage.IsSuccessStatusCode)
            {
                var jsonData = await responseMessage.Content.ReadAsStringAsync();
                var values = JsonConvert.DeserializeObject<UpdateFeatureDto>(jsonData);
                return View(values);
            }
            return View();
        }

        [HttpPost]
        [Route("UpdateFeature/{id}")]
        public async Task<IActionResult> UpdateFeature(UpdateFeatureDto updateFeatureDto)
        {
            var client = _httpClientFactory.CreateClient();
            var jsonData = JsonConvert.SerializeObject(updateFeatureDto);
            StringContent stringContent = new StringContent(jsonData, Encoding.UTF8, "application/json");
            var responseMessage = await client.PutAsync("https://localhost:7026/api/Features/", stringContent);
            if (responseMessage.IsSuccessStatusCode)
            {
                return RedirectToAction("Index");
            }
            return View();
        }
    }
}
