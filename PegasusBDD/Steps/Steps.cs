using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using PegasusBDD.Base;
using PegasusBDD.Utils;
using System;
using TechTalk.SpecFlow;

namespace PegasusBDD.Steps
{
    [Binding]
    public sealed class Steps
    {
        public IWebDriver Driver { get; set; }
        public BasePage basePage;
        private readonly ScenarioContext context;
        private static readonly log4net.ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);


        public Steps(ScenarioContext injectedContext)
        {
            context = injectedContext;
        }

        [BeforeScenario]
        public void SetUp()
        {
            Logging.Logger();
            ChromeOptions options = new ChromeOptions();
            options.AddArgument("start-maximized");
            options.AddArgument("suppress-message-center-popups");
            options.AddArgument("disable-notifications");
            options.AddArgument("test-type");
            Driver = new ChromeDriver(options);

            Driver.Manage().Timeouts().PageLoad = TimeSpan.FromSeconds(30);
            Driver.Manage().Timeouts().ImplicitWait = TimeSpan.FromSeconds(1);
            Driver.Navigate().GoToUrl("https://www.flypgs.com/");
            log.Info("Driver ayağa kalktı...");
            basePage = new BasePage(Driver);
        }

        [Given("(.*) objesine tıklanır")]
        public void ClickOn(string obje)
        {
            basePage.ClickElement(By.CssSelector(obje));
        }

        [Given("(.*) alanına (.*) değeri girilir")]
        public void KeysToSend(string obje, string key)
        {
            basePage.SendKeys(By.CssSelector(obje), key);
        }

        [Given("(.*) için (.*) tarihi girilir")]
        public void DateToEnter(string yön, string obje)
        {
            basePage.SplitString(obje, yön);
        }

        [Given("(.*) saniye beklenir")]
        public void WaitFor(int obje)
        {
            basePage.WaitFor(obje);
        }

        [AfterScenario]
        public void TearDown()
        {
            Driver.Quit();
        }
    }
}