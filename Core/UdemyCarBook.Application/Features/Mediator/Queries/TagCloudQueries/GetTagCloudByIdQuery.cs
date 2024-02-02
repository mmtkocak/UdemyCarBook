using MediatR;
using UdemyCarBook.Application.Features.Mediator.Results.TagCloudResults;

namespace UdemyCarBook.Application.Features.Mediator.Queries.TagCloudQueries
{
    public class GetTagCloudByIdQuery:IRequest<GetTagCloudByIdQueryResult>
    {
        public GetTagCloudByIdQuery(int id)
        {
            Id = id;
        }

        public int Id { get; set; }
    }
}
