using System.Reflection.Metadata.Ecma335;

namespace UdemyCarBook.Dto.StatisticsDtos
{
    public class ResultStatisticsDto
    {
        public ResultDto Result { get; set; }
        public int Id { get; set; }
        public object Exception { get; set; }
        public int Status { get; set; }
        public bool IsCanceled { get; set; }
        public bool IsCompleted { get; set; }
        public bool IsCompletedSuccessfully { get; set; }
        public int CreationOptions { get; set; }
        public object AsyncState { get; set; }
        public bool IsFaulted { get; set; }
    }

    public class ResultDto
    {
        public int CarCount { get; set; }
        public int LocationCount { get; set; }
        public int AuthorCount { get; set; }
        public int BlogCount { get; set; }
        public int BrandCount {  get; set; }
        public decimal avgPriceForDaily { get; set; }
        public decimal avgRentPriceForWeekly { get; set; }
        public decimal avgRentPriceForMonthly { get; set; }
        public int carCountByTranmissionIsAuto { get; set; }
        public int carCountByKmSmallerThen1000 { get; set; }
        public int carCountByFuelGasolineOrDiesel { get; set; }
        public int carCountByFuelElectric { get; set; }

        public string carBrandAndModelByRentPriceDailyMax { get; set; }
        public string carBrandAndModelByRentPriceDailyMin { get; set; }

        public string brandNameByMaxCar {  get; set; }

        public string blogTitleByMaxBlogComment { get; set; }
    }
}
