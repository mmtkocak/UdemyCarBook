using System.ComponentModel.DataAnnotations;

namespace UdemyCarBook.Domain.Entities
{
    public class RentACar
    {
        [Key]
        public int RentACarId { get; set; }
        public int LocationID { get; set; }
        public Location Location { get; set; }
        public int CarID { get; set; }
        public Car Car { get; set; }
        public bool Available { get; set; }
    }
}
