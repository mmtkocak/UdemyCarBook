﻿namespace UdemyCarBook.Application.Features.Mediator.Results.AuthorResults
{
    public class GetAuthorQueryResult
    {
        public int AuthorID { get; set; }
        public string Name { get; set; }
        public string ImageUrl { get; set; }
        public string Description { get; set; }
    }
}
