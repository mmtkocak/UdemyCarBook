using MediatR;
using UdemyCarBook.Application.Features.Mediator.Results.FooterAdressResults;

namespace UdemyCarBook.Application.Features.Mediator.Queries.FooterAdressQueries
{
    public class GetFooterAdressQuery : IRequest<List<GetFooterAdressQueryResult>>
    {
    }
}
