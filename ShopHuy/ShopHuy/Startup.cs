using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ShopHuy.Startup))]
namespace ShopHuy
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
