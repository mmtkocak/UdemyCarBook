﻿namespace UdemyCarBook.Dto.BannerDtos
{
    public class UpdateBannerDto
    {
        public int BannerID { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string VideoDescription { get; set; }
        public string VideoUrl { get; set; }
    }
}
