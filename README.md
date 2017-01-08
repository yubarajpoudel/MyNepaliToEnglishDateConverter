Nepali to english date converter
===================


Easy way to convert Nepali date to english and english to Nepali. 


Methods
-------------

To convert english to Nepali

   

 var date = String()
    var day = String()
    var time = String()
    let currentDate = NSDate()
    
   // for English to Nepali conconversion
   
        let dateEN = (DateConstant().convertDateToString("mm/dd/yyyy", date:currentDate)
        let dateNP = DateConverter().convertADToBS(dateEN, spliter: "/")
        let nepaliFormat = DateConstant().getDateInString(dateNP, isEnglish: false)
        date = nepaliFormat[0]
        day=nepaliFormat[1]
        let hour = getFormattedLocalDate(currentDate, withFormat: "HH")
        let minute = getFormattedLocalDate(currentDate, withFormat: "mm")
        time="\(DateConstant().getConverted((hour as NSString).integerValue)) : \(DateConstant().getConverted((minute as NSString).integerValue))"
        if ((hour as NSString).integerValue > 12) {
        time = "\(time) बेलुका"
        }
        else {
          time = "\(time) बिहान"  
        }

To convert Nepali to English

    let bsToAdHolder = DateConverter().convertBSToAD("2073-09-26", splitter: "-")
    print("HomeViewController BStoAd date = \(bsToAdHolder.dayOfMonth)/\(bsToAdHolder.month)/\(bsToAdHolder.year)")
    print("HomeViewController , dateInString (DateConstant().getDateInString(bsToAdHolder, isEnglish : true))")

For any queries please do message me
> [Author facebook link](https://www.facebook.com/yubarajme)

Code Usage
> Programmers are welcome to change, edit and use the code as their own skills. Any suggestions are welcomed.
       
       

    
