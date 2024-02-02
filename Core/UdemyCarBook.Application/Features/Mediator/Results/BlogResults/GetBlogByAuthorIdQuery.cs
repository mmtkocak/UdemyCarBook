using MediatR;

namespace UdemyCarBook.Application.Features.Mediator.Results.BlogResults
{
    public class GetBlogByAuthorIdQuery : IRequest<List<GetBLogByAuthorIdQueryResult>>
    {
        public GetBlogByAuthorIdQuery(int id)
        {
            Id = id;
        }

        public int Id { get; set; }
    }
}
