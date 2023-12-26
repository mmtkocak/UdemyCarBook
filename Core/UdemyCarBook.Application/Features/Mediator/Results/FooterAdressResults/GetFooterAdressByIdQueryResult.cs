namespace UdemyCarBook.Application.Features.Mediator.Results.FooterAdressResults
{
    public class GetFooterAdressByIdQueryResult
    {
        public int FooterAdressID { get; set; }
        public string Description { get; set; }
        public string Address { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
    }
}
