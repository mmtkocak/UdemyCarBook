﻿using MediatR;
using UdemyCarBook.Application.Features.Mediator.Commands.FeatureCommands;
using UdemyCarBook.Application.Interfaces;
using UdemyCarBook.Domain.Entities;

namespace UdemyCarBook.Application.Features.Mediator.Handlers.FeatureHandlers
{
    public class UpdateAuthorCommandHandler : IRequestHandler<UpdateFeatureCommand>
    {
        private readonly IRepository<Feature> _repository;

        public UpdateAuthorCommandHandler(IRepository<Feature> repository)
        {
            _repository = repository;
        }

        public async Task Handle(UpdateFeatureCommand request, CancellationToken cancellationToken)
        {
            var values = await _repository.GetByIdAsync(request.FeatureID);
            values.Name = request.Name;
            await _repository.UpdateAsync(values);
        }
    }
}
