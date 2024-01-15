using MediatR;
using UdemyCarBook.Application.Features.Mediator.Queries.BlogQueries;
using UdemyCarBook.Application.Features.Mediator.Results.BlogResults;
using UdemyCarBook.Application.Interfaces.BlogInterfaces;

namespace UdemyCarBook.Application.Features.Mediator.Handlers.BlogHandlers
{
    public class GetLast3BlogsWithsAuthorsQueryHandler : IRequestHandler<GetLast3BlogsWithsAuthorsQuery, List<GetLast3BlogsWithsAuthorsQueryResult>>
    {
        private readonly IBlogRepository _blogRepository;

        public GetLast3BlogsWithsAuthorsQueryHandler(IBlogRepository blogRepository)
        {
            _blogRepository = blogRepository;
        }

        public async Task<List<GetLast3BlogsWithsAuthorsQueryResult>> Handle(GetLast3BlogsWithsAuthorsQuery request, CancellationToken cancellationToken)
        {
            var values = _blogRepository.GetLast3BlogsWithsAuthors();
            return values.Select(x => new GetLast3BlogsWithsAuthorsQueryResult
            {
                AuthorID = x.AuthorID,
                BlogID = x.BlogID,
                CategoryID = x.CategoryID,
                CoverImageUrl = x.CoverImageUrl,
                CreatedDate = x.CreatedDate,
                Title = x.Title,
                AuthorName = x.Author.Name,
                Description = x.Description,
            }).ToList();
        }
    }
}
