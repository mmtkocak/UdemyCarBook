using MediatR;
using UdemyCarBook.Application.Features.Mediator.Results.TestimonialResults;

namespace UdemyCarBook.Application.Features.Mediator.Queries.TestimonialQueries
{
    public class GetTestimonialByIdQuery : IRequest<GetTestimonialByIdQueryResult>
    {
        public GetTestimonialByIdQuery(int id)
        {
            Id = id;
        }

        public int Id { get; set; }
    }
}