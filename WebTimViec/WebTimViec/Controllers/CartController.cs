using FindJob.Model.Entities;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.StaticFiles;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using WebTimViec.Models;


namespace WebTimViec.Controllers
{
    public static class SessionExtensions
    {
        public static T GetObject<T>(this ISession session, string key)
        {
            var data = session.GetString(key);
            return data == null ? default(T) : JsonConvert.DeserializeObject<T>(data);
        }

        public static void SetObject(this ISession session, string key, object value)
        {
            session.SetString(key, JsonConvert.SerializeObject(value));
        }
    }

    public class CartController : Controller
    {
        private readonly JobContext _context;

        public CartController(JobContext context)
        {
            _context = context;
        }


        // thêm vào hồ sơ
        public async Task<IActionResult> AddToCart(int jobId, IFormFile cvFile)

        {
            var job = _context.Jobs.FirstOrDefault(j => j.Id == jobId);

            if (job != null)
            {
                // Tạo 1 đối tượng CartItemModel từ công việc
                var cartItemModel = new CartItemModel(job);

                // Lấy hoặc tạo giỏ hàng từ Session
                var cart = HttpContext.Session.GetObject<List<CartItemModel>>("Cart") ?? new List<CartItemModel>();

                // Kiểm tra nếu công việc đã tồn tại trong giỏ hàng
                if (cart.Any(item => item.JobId == jobId))
                {
                    TempData["Message"] = "Bạn đã Apply công việc này rồi.";
                    return RedirectToAction("ViewCart", "Cart");
                }

                // Lưu tập tin CV vào giỏ hàng nếu có
                if (cvFile != null && cvFile.Length > 0)
                {
                    var uploadsDirectory = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "uploads");

                    // Tạo thư mục upload nếu chưa tồn tại
                    if (!Directory.Exists(uploadsDirectory))
                    {
                        Directory.CreateDirectory(uploadsDirectory);
                    }

                    // Tạo tên tập tin duy nhất
                    var uniqueFileName = Guid.NewGuid().ToString() + "_" + Path.GetFileName(cvFile.FileName);
                    var filePath = Path.Combine(uploadsDirectory, uniqueFileName);

                    // Lưu tập tin CV
                    using (var fileStream = new FileStream(filePath, FileMode.Create))
                    {
                        await cvFile.CopyToAsync(fileStream);
                    }

                    // Lưu đường dẫn tập tin CV vào đối tượng CartItemModel
                    cartItemModel.CvPath = Path.Combine("uploads", uniqueFileName);
                }

                cart.Add(cartItemModel);

                // Lưu giỏ hàng vào Session
                HttpContext.Session.SetObject("Cart", cart);
            }

            // Chuyển hướng đến trang giỏ hàng sau khi thêm vào giỏ hàng
            return RedirectToAction("ViewCart", "Cart");
        }

        public IActionResult DownloadCV(string cvPath)
        {
            if (string.IsNullOrEmpty(cvPath))
            {
                return NotFound();
            }

            var filePath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", cvPath.TrimStart('/'));

            if (!System.IO.File.Exists(filePath))
            {
                return NotFound();
            }

            var memory = new MemoryStream();
            using (var stream = new FileStream(filePath, FileMode.Open))
            {
                stream.CopyTo(memory);
            }
            memory.Position = 0;

            var provider = new FileExtensionContentTypeProvider();
            if (!provider.TryGetContentType(filePath, out var contentType))
            {
                contentType = "application/octet-stream";
            }

            return File(memory, contentType, Path.GetFileName(filePath));
        }


        public IActionResult RemoveFromCart(int jobId)
        {
            // Lấy thông tin giỏ hàng từ Session
            var cartItems = HttpContext.Session.GetObject<List<CartItemModel>>("Cart") ?? new List<CartItemModel>();

            // Tìm và xóa mục có jobId tương ứng
            var itemToRemove = cartItems.FirstOrDefault(item => item.JobId == jobId);
            if (itemToRemove != null)
            {
                cartItems.Remove(itemToRemove);

                // Cập nhật giỏ hàng trong Session
                HttpContext.Session.SetObject("Cart", cartItems);
            }

            // Chuyển hướng đến trang ViewCart
            return RedirectToAction("ViewCart");
        }

        public IActionResult ViewCart()
        {
            // Lấy thông tin giỏ hàng từ Session
            var cartItems = HttpContext.Session.GetObject<List<CartItemModel>>("Cart") ?? new List<CartItemModel>();

            return View(cartItems);
        }
    }
}
