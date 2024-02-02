using UdemyCarBook.Domain.Entities;

namespace UdemyCarBook.Application.Interfaces.TagCloudInterfaces
{
    public interface ITagCloudRepository
    {
        List<TagCloud> GetTagCloudsByBlogID(int id);
    }
}
