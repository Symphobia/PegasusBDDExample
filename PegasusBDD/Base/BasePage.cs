using OpenQA.Selenium;
using OpenQA.Selenium.Interactions;
using OpenQA.Selenium.Support.UI;
using System;
using System.Collections.Generic;
using System.Threading;

namespace PegasusBDD.Base
{
    public class BasePage
    {
        IWebDriver driver;
        WebDriverWait wait;
        IJavaScriptExecutor scriptExecutor;
        IReadOnlyList<IWebElement> dayList;

        private static readonly log4net.ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        readonly string yearDepartureXpath = "/html/body/div[1]/div[6]/div/div/div[2]/ul/li[1]/div/form/div[3]/div[1]/div/div[2]/div/div[1]/div/div/span[2]";
        readonly string yearArrivalXpath = "/html/body/div[1]/div[6]/div/div/div[2]/ul/li[1]/div/form/div[3]/div[2]/div/div[2]/div/div[1]/div/div/span[2]";

        readonly string monthDepartureXpath = "/html/body/div[1]/div[6]/div/div/div[2]/ul/li[1]/div/form/div[3]/div[1]/div/div[2]/div/div[1]/div/div/span[1]";
        readonly string monthArrivalXpath = "/html/body/div[1]/div[6]/div/div/div[2]/ul/li[1]/div/form/div[3]/div[2]/div/div[2]/div/div[1]/div/div/span[1]";

        readonly string nextMonthDepartureXpath = "/html/body/div[1]/div[6]/div/div/div[2]/ul/li[1]/div/form/div[3]/div[1]/div/div[2]/div/div[2]/div/a";
        readonly string nextMonthArrivalXpath = "/html/body/div[1]/div[6]/div/div/div[2]/ul/li[1]/div/form/div[3]/div[2]/div/div[2]/div/div[2]/div/a";

        readonly string dayDepartureXpath = "/html/body/div[1]/div[6]/div/div/div[2]/ul/li[1]/div/form/div[3]/div[1]/div/div[2]/div/div[1]/table/tbody//a";
        readonly string dayArrivalXpath = "/html/body/div[1]/div[6]/div/div/div[2]/ul/li[1]/div/form/div[3]/div[2]/div/div[2]/div/div[1]/table/tbody//a";

        public BasePage(IWebDriver driver)
        {
            this.driver = driver;
            wait = new WebDriverWait(driver, TimeSpan.FromSeconds(30));
        }

        public void WaitFor(int sec)
        {
            Thread.Sleep(TimeSpan.FromSeconds(sec));
        }

        public IWebElement FindElement(By by)
        {
            wait.Until(SeleniumExtras.WaitHelpers.ExpectedConditions.ElementExists(by));
            HightLightElement(by);
            return driver.FindElement(by);
        }

        public void ClickElement(By by)
        {
            FindElement(by).Click();
        }

        public SelectElement SelectOptions(IWebElement element)
        {
            return new SelectElement(element);
        }

        public void SendKeys(By by, String value)
        {
            FindElement(by).SendKeys(value);
            FindElement(by).SendKeys(Keys.Enter);
        }

        public void SelectElementByText(By by, String visibleText)
        {
            SelectOptions(FindElement(by)).SelectByText(visibleText);
        }

        public void HoverElement(By by)
        {
            Actions actions = new Actions(driver);
            actions.MoveToElement(FindElement(by)).Build().Perform();
        }

        public string GetText(By by)
        {
            wait.Until(SeleniumExtras.WaitHelpers.ExpectedConditions.ElementIsVisible(by));
            string elementText = FindElement(by).Text;
            log.Info("Element Text :" + elementText);
            return elementText;
        }

        public void HightLightElement(By by)
        {
            scriptExecutor = (IJavaScriptExecutor)driver;
            scriptExecutor.ExecuteScript("arguments[0].setAttribute('style', 'background: yellow; border: 2px solid red;');", driver.FindElement(by));
            Thread.Sleep(TimeSpan.FromMilliseconds(700));
        }

        public Boolean MatchText(By by, string expected)
        {
            if (GetText(by).Equals(expected))
            {
                return true;

            }
            else
            {
                log.Warn("Değerler birbiri ile eşleşmiyor!!!!!!!");
            }
            return false;

        }

        public void SplitString(string value, string yön)
        {
            string[] dates = value.Split(' ', StringSplitOptions.RemoveEmptyEntries);
            CheckDates(dates, yön);
        }

        public void CheckDates(string[] dates, string yön)
        {
            string day = dates[0];
            string month = dates[1];
            string year = dates[2];

            if (yön.Equals("Gidiş"))
            {
                CheckYear(year, yearDepartureXpath, nextMonthDepartureXpath);
                CheckMonth(month, monthDepartureXpath, nextMonthDepartureXpath);
                CheckDay(day, dayDepartureXpath);
            }
            else if (yön.Equals("Dönüş"))
            {
                CheckYear(year, yearArrivalXpath, nextMonthArrivalXpath);
                CheckMonth(month, monthArrivalXpath, nextMonthArrivalXpath);
                CheckDay(day, dayArrivalXpath);
            }
        }

        public void CheckYear(string year, string yearXpath, string nextMonthButtonXpath)
        {
            string s;
            while (true)
            {
                s = GetText(By.XPath(yearXpath));
                if (year.Equals(s)) { break; } else { ClickElement(By.XPath(nextMonthButtonXpath)); }
            }
        }

        public void CheckMonth(string month, string monthXpath, string nextMonthButtonXpath)
        {
            string s;
            while (true)
            {
                s = GetText(By.XPath(monthXpath));
                if (month.Equals(s)) { break; } else { ClickElement(By.XPath(nextMonthButtonXpath)); }
            }
        }

        public void CheckDay(string day, string dayXpath)
        {
            dayList = driver.FindElements(By.XPath(dayXpath));
            foreach (var days in dayList)
            {
                if (days.Text.Equals(day)) { days.Click(); break; }
            }
        }
    }
}