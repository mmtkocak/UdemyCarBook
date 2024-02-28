using MediatR;
using UdemyCarBook.Application.Features.Mediator.Results.AuthorResults;

namespace UdemyCarBook.Application.Features.Mediator.Queries.StatisticsQueries
{
    public class GetAuthorCountQuery : IRequest<GetAuthorQueryResult>
    {
    }
}
