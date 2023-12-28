using MediatR;
using UdemyCarBook.Application.Features.Mediator.Results.SocialMedia;

namespace UdemyCarBook.Application.Features.Mediator.Queries.SocialMediaQueries
{
    public class GetSocialMediaQuery : IRequest<List<GetSocialMediaQueryResult>>
    {
    }
}
