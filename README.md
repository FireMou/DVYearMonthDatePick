# DVYearMonthDatePick
A PickerView For Year And Month

简要描述
---------------------
这是一个很简单的框架，用来选择年和月，因为Apple自带的UIDatePicker不支持只选择年和月，所以写了一个选择控件，分享给大家。这个框架是模仿“IgorFedorchuk”的“MonthYearDatePicker”来写的，因为这个框架本身是偏好于外国人的习惯，所以我进行了一些更改，让它更适应中国人的选择控件的习惯。希望大家喜欢

![img](http://d.pr/i/16n8m+ "img")

####DVYearMonthDatePicker.h
```
@property (nonatomic, strong) UIColor *monthSelectedTextColor;
@property (nonatomic, strong) UIColor *monthTextColor;

@property (nonatomic, strong) UIColor *yearSelectedTextColor;
@property (nonatomic, strong) UIColor *yearTextColor;

@property (nonatomic, strong) UIFont *monthSelectedFont;
@property (nonatomic, strong) UIFont *monthFont;

@property (nonatomic, strong) UIFont *yearSelectedFont;
@property (nonatomic, strong) UIFont *yearFont;

@property (nonatomic, assign) NSInteger rowHeight;

```
* 上面的这些属性可以定义该控件怎么进行显示，很简单，看单词意思就可以明白，这里不做注释和解释了

####让控件默认选择一个日期
```
/**
 *  datePicker显示今天
 */
-(void)selectToday;

/**
 *  datePicker显示date
 */
- (void)selectDate:(NSDate *)date;

```
* 用上面的两个方法可以让控件默认选择今天或者某一天进行显示

####设置最大和最小的年份
```
/**
 *  datePicker设置最小年份和最大年份
 */
-(void)setupMinYear:(NSInteger)minYear maxYear:(NSInteger)maxYear;

```
* 这个方法用来设置控件中需要的最大年份和最小年份

####读取当前选择的日期
```

/**
 *  查看datePicker当前选择的日期
 */
@property (nonatomic, strong, readonly) NSDate *date;

```
* 用这个属性可以读取到当前选择的日期
