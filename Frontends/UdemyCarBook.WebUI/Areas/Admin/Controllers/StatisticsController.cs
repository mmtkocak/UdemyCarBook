using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using UdemyCarBook.Dto.StatisticsDtos;

namespace UdemyCarBook.WebUI.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Route("Admin/Statistics")]
    public class StatisticsController : Controller
    {

        private readonly IHttpClientFactory _httpClientFactory;

        public StatisticsController(IHttpClientFactory httpClientFactory)
        {
            _httpClientFactory = httpClientFactory;
        }

        [Route("Index")]
        public async Task<IActionResult> Index()
        {
            var client = _httpClientFactory.CreateClient();
            #region İstatistik1
            var responseMessage = await client.GetAsync("https://localhost:7026/api/Statistics/GetCarCount");
            if (responseMessage.IsSuccessStatusCode)
            {
                var jsonData = await responseMessage.Content.ReadAsStringAsync();
                var values = JsonConvert.DeserializeObject<ResultStatisticsDto>(jsonData);
                ViewBag.v = values.Result.CarCount;
            }
            #endregion
            #region İstatistik2
            var responseMessage2 = await client.GetAsync("https://localhost:7026/api/Statistics/GetLocationCount");
            if (responseMessage2.IsSuccessStatusCode)
            {
                var jsonData2 = await responseMessage2.Content.ReadAsStringAsync();
                var values2 = JsonConvert.DeserializeObject<ResultStatisticsDto>(jsonData2);
                ViewBag.v2 = values2.Result.LocationCount;
            }
            #endregion
            #region İstatistik3
            var responseMessage3 = await client.GetAsync("https://localhost:7026/api/Statistics/GetAuthorCount");
            if (responseMessage3.IsSuccessStatusCode)
            {
                var jsonData3 = await responseMessage3.Content.ReadAsStringAsync();
                var values3 = JsonConvert.DeserializeObject<ResultStatisticsDto>(jsonData3);
                ViewBag.v3 = values3.Result.AuthorCount;
            }
            #endregion
            #region İstatistik4
            var responseMessage4 = await client.GetAsync("https://localhost:7026/api/Statistics/GetBlogCount");
            if (responseMessage4.IsSuccessStatusCode)
            {
                var jsonData4 = await responseMessage4.Content.ReadAsStringAsync();
                var values4 = JsonConvert.DeserializeObject<ResultStatisticsDto>(jsonData4);
                ViewBag.v4 = values4.Result.BlogCount;
            }
            #endregion
            #region İstatistik5
            var responseMessage5 = await client.GetAsync("https://localhost:7026/api/Statistics/GetBrandCount");
            if (responseMessage5.IsSuccessStatusCode)
            {
                var jsonData5 = await responseMessage5.Content.ReadAsStringAsync();
                var values5 = JsonConvert.DeserializeObject<ResultStatisticsDto>(jsonData5);
                ViewBag.v5 = values5.Result.BrandCount;
            }
            #endregion
            #region İstatistik6
            var responseMessage6 = await client.GetAsync("https://localhost:7026/api/Statistics/GetAvgRentPriceForDaily");
            if (responseMessage6.IsSuccessStatusCode)
            {
                var jsonData6 = await responseMessage6.Content.ReadAsStringAsync();
                var values6 = JsonConvert.DeserializeObject<ResultStatisticsDto>(jsonData6);
                ViewBag.v6 = values6.Result.avgPriceForDaily.ToString("0.00");
            }
            #endregion
            #region İstatistik7
            var responseMessage7 = await client.GetAsync("https://localhost:7026/api/Statistics/GetAvgRentPriceForWeekly");
            if (responseMessage7.IsSuccessStatusCode)
            {
                var jsonData7 = await responseMessage7.Content.ReadAsStringAsync();
                var values7 = JsonConvert.DeserializeObject<ResultStatisticsDto>(jsonData7);
                ViewBag.v7 = values7.Result.avgRentPriceForWeekly.ToString("0.00");
            }
            #endregion
            #region İstatistik8
            var responseMessage8 = await client.GetAsync("https://localhost:7026/api/Statistics/GetAvgRentPriceForMonthly");
            if (responseMessage8.IsSuccessStatusCode)
            {
                var jsonData8 = await responseMessage8.Content.ReadAsStringAsync();
                var values8 = JsonConvert.DeserializeObject<ResultStatisticsDto>(jsonData8);
                ViewBag.v8 = values8.Result.avgRentPriceForMonthly.ToString("0.00");
            }
            #endregion
            #region İstatistik9
            var responseMessage9 = await client.GetAsync("https://localhost:7026/api/Statistics/GetCarCountByTranmissionIsAuto");
            if (responseMessage9.IsSuccessStatusCode)
            {
                var jsonData9 = await responseMessage9.Content.ReadAsStringAsync();
                var values9 = JsonConvert.DeserializeObject<ResultStatisticsDto>(jsonData9);
                ViewBag.v9 = values9.Result.carCountByTranmissionIsAuto;
            }
            #endregion
            //#region İstatistik10
            //var responseMessage9 = await client.GetAsync("https://localhost:7026/api/Statistics/GetCarCountByTranmissionIsAuto");
            //if (responseMessage9.IsSuccessStatusCode)
            //{
            //    var jsonData9 = await responseMessage9.Content.ReadAsStringAsync();
            //    var values9 = JsonConvert.DeserializeObject<ResultStatisticsDto>(jsonData9);
            //    ViewBag.v9 = values9.Result.carCountByTranmissionIsAuto;
            //}
            //#endregion
            //#region İstatistik10
            //var responseMessage9 = await client.GetAsync("https://localhost:7026/api/Statistics/GetCarCountByTranmissionIsAuto");
            //if (responseMessage9.IsSuccessStatusCode)
            //{
            //    var jsonData9 = await responseMessage9.Content.ReadAsStringAsync();
            //    var values9 = JsonConvert.DeserializeObject<ResultStatisticsDto>(jsonData9);
            //    ViewBag.v9 = values9.Result.carCountByTranmissionIsAuto;
            //}
            //#endregion
            #region İstatistik12
            var responseMessage12 = await client.GetAsync("https://localhost:7026/api/Statistics/GetCarCountByKmSmallerThen1000");
            if (responseMessage12.IsSuccessStatusCode)
            {
                var jsonData12 = await responseMessage12.Content.ReadAsStringAsync();
                var values12 = JsonConvert.DeserializeObject<ResultStatisticsDto>(jsonData12);
                ViewBag.v12 = values12.Result.carCountByKmSmallerThen1000;
            }
            #endregion




            ////dasdasdasd







            return View();
        }

    }
}
