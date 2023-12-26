using MediatR;

namespace UdemyCarBook.Application.Features.Mediator.Commands.FooterAdressCommands
{
    public class RemoveFooterAdressCommand : IRequest
    {
        public RemoveFooterAdressCommand(int id)
        {
            Id = id;
        }

        public int Id { get; set; }
    }
}