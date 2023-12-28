using MediatR;
using UdemyCarBook.Application.Features.Mediator.Results.PricingResults;

namespace UdemyCarBook.Application.Features.Mediator.Queries.PricingQueries
{
    public class GetPricingByIdQuery : IRequest<GetPricingByIdQueryResult>
    {
        public GetPricingByIdQuery(int id)
        {
            Id = id;
        }

        public int Id { get; set; }
    }
}
