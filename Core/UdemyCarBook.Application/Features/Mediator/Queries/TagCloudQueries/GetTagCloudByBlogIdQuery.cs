using MediatR;
using UdemyCarBook.Application.Features.Mediator.Results.TagCloudResults;

namespace UdemyCarBook.Application.Features.Mediator.Queries.TagCloudQueries
{
    public class GetTagCloudByBlogIdQuery : IRequest<List<GetTagCloudByBlogIdQueryResult>>
    {
        public GetTagCloudByBlogIdQuery(int id)
        {
            Id = id;
        }

        public int Id { get; set; }
    }
}
