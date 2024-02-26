using MediatR;
using UdemyCarBook.Application.Features.Mediator.Results.StatisticsResult;

namespace UdemyCarBook.Application.Features.Mediator.Queries.StatisticsQueries
{
    public class GetCarCountByTranmissionIsAutoQuery : IRequest<GetCarCountByTranmissionIsAutoQueryResult>
    {
    }
}
