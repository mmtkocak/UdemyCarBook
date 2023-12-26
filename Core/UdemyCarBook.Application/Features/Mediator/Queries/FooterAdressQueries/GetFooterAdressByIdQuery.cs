using MediatR;
using UdemyCarBook.Application.Features.Mediator.Results.FooterAdressResults;

namespace UdemyCarBook.Application.Features.Mediator.Queries.FooterAdressQueries
{
    public class GetFooterAdressByIdQuery : IRequest<GetFooterAdressByIdQueryResult>
    {
        public GetFooterAdressByIdQuery(int id)
        {
            Id = id;
        }

        public int Id { get; set; }
    }
}
