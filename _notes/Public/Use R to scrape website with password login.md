---
title: Use R to scrape website with password login
---

- #### scraping a website with login can use the same `rvest` library where it create a virtual web browser session and allow us to “navigate” through the website
	- ##### here’s roughly the steps to use it
		- create a browser session using `html_session()`
		- find the form to fill in the password using `html_form()`
			- define the attributes of the form to fill using R Base `list()` and R Base `attr()`
		- submit the form (sort of logging in)
		- navigate to url to download using `jump_to()`
		- download the file by supplying the url and using R Base `writeBin()`
- #### However, if we need to scrape from website that load pages using javascript, we will need RSelenium instead
	- I haven’t fully understand the inner working of that library – to be explored later

```r
## Script for downloading Zip files of adjusted daily historical prices from ShareInvestor website
## No need for RSelenium as this is not scraping from javascript-based webpage
rm(list=ls())

library(rvest)
library(xlsx)     # needed to read from Excel file
library(stringr)  # needed to do some padding in string operations
library(dplyr)

## Part 01 - Logging into ShareInvestor member page ================================================
## Due to the site requires login, the same session must be maintain for downloading files

login_url = "https://www.shareinvestor.com/user/login.html"
session   = html_session(login_url)
form      = html_form(session)[[2]]   # the login form is the 2nd form of the page/url

## Form on home page has no submit button - inject a fake submit button or else rvest cannot submit.
fake_submit_button = list(name = NULL
						  , type = "submit"
						  , value = NULL
						  , checked = NULL
						  , disabled = NULL
						  , readonly = NULL
						  , required = FALSE)

attr(fake_submit_button, "class") = "input"
form[["fields"]][["submit"]]      = fake_submit_button
filled_form                       = set_values(form
											   , name = 'username'
											   , password = 'password')
submit_form(session, filled_form) #Submit form to authenticate the current session


## Part 02 - Downloading historical price zip file =================================================

## Zip files are saved to /Price Data/ subfolder

## Load list of stock to download
scode_list = as.matrix(read.xlsx(file="./s_code_all.xlsx", sheetIndex=1, startRow=1)[,3])
scode_list = unique(scode_list[which(scode_list!="FALSE")])
scode_list = str_pad(scode_list, width=4, side="left", pad="0")

## Limit the list of stock to download by excluding already downloaded file (based on size)
## I had to do this because there's a login time out before I can complete all downloads
dld_list = file.info(list.files(path="./Price Data - hist/", full.names=TRUE)) %>%
	mutate(sname=gsub("./Price Data - hist/hist_|.zip","",rownames(.))) %>%
	filter(size>100) %>%
	select(sname)

xdld_list = scode_list[which(!(scode_list %in% dld_list[,1]))]
todl_list = xdld_list[1:20] # further limit to just 20 stocks to download

for(scode in todl_list){
	download_url = paste0("http://www.shareinvestor.com/prices/price_download_zip_file.zip?type=historical&counter="
						  , scode
						  , ".MY")
	zipfile = jump_to(session, download_url)
	writeBin(zipfile$response$content
			 # , paste0("./Price Data/hist_", scode, format(Sys.Date(), "_%Y%m%d"), ".zip") )
			 , paste0("./Price Data - hist/hist_", scode, ".zip") )
	Sys.sleep(2)
}

# download.file(download_url, "./file.zip", method = "curl")
```

## Metadata
- topic:: [[R programming]]
- updated:: [[2022-08-27]]
- reviewed:: [[2022-08-27]]
- #Reference 
