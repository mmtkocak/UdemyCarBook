using MediatR;
using UdemyCarBook.Application.Features.CQRS.Results.BrandResults;

namespace UdemyCarBook.Application.Features.Mediator.Queries.StatisticsQueries
{
    public class GetBrandCountQuery : IRequest<GetBrandQueryResult>
    {
    }
}
