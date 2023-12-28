using MediatR;

namespace UdemyCarBook.Application.Features.Mediator.Commands.LocationCommands
{
    public class CreateLocationCommand : IRequest
    {
        public string LocationName { get; set; }
    }
}
