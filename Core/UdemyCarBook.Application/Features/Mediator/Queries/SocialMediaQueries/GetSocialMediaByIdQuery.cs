using MediatR;
using UdemyCarBook.Application.Features.Mediator.Results.SocialMedia;

namespace UdemyCarBook.Application.Features.Mediator.Queries.SocialMediaQueries
{
    public class GetSocialMediaByIdQuery : IRequest<GetSocialMediaByIdQueryResult>
    {
        public GetSocialMediaByIdQuery(int id)
        {
            Id = id;
        }

        public int Id { get; set; }
    }
}


