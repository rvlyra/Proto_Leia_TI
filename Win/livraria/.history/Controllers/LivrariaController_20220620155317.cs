using livraria.Models;
using Microsoft.AspNetCore.Mvc;

namespace livraria.Controllers
{
    public class LivrariaController :Controller
    {
        private readonly AppDbContext _context;

        public LivrariaController(AppDbContext context)
        {
            _context = context;
        }

        // exibir lista de livros
        [HttpGet]
        public IActionResult Index()
        {
            var books = _context.Livros.ToList();
            return View(books);
        }
        //  
        [HttpGet]
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public

    }
}