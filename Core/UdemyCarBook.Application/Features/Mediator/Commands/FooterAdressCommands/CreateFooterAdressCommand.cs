using MediatR;

namespace UdemyCarBook.Application.Features.Mediator.Commands.FooterAdressCommands
{
    public class CreateFooterAdressCommand : IRequest
    {
        public string Description { get; set; }
        public string Address { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
    }
}
