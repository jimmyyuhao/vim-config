## 1、入门指南

## 2、写个猜字游戏

## 3、常见编程概念

### 3.1变量与可变性

### 3.2数据类型
Rust有两类数据类型子集：标量（scalar）和复合（compound）。\
Rust有四种基本的标量类型：整型、浮点型、布尔类型和字符类型。\
Rust有两个原生的复合类型：元组（tuple）和数组（array）。\
fds

元组的处理\
1.赋值与读取
``` rust
let tup = (500, 6.4, 1);
let (x, y, z) = tup;
```
这叫做元组的解构（destructuring）

2.也可以使用点号（.）后跟值的索引来直接访问
``` rust
let x: (i32, f64, u8) = (500, 6.4, 1);
let five_hundred = x.0;
let six_point_four = x.1;
let one = x.2;
```
不带任何值的元组有个特殊的名称，叫做 单元（unit） 元组。这种值以及对应的类型都写作 ()，表示空值或空的返回类型。如果表达式不返回任何其他值，则会隐式返回单元值。

### 3.3函数
Rust 代码中的函数和变量名使用 snake case 规范风格。\
语句（Statements）是执行一些操作但不返回值的指令。 表达式（Expressions）计算并产生返回一个值。
```rust
fn main() {
    let y = 6;
}
```
函数定义也是语句，上面整个例子本身就是一个语句。
表达式(Expressions)会计算一个值并且产生返回这个值。
```rust
{
    let y = {
        let x = 3;
        x + 1
    };
}
```
上面的let y = 后的代码块，它的值是 4。这个值作为 let 语句的一部分被绑定到 y 上。

### 3.4注释
惯用注释：惯用的注释样式是以两个斜杠开始注释，并持续到本行的结尾。对于超过一行的注释，需要在每一行前都加上 //
```rust
//this is a comment
let x = 1; //this is a comment
```
文档注释：TODO

### 3.5控制流
在 let 语句中使用 if
```rust
    let condition = true;
    let number = if condition { 5 } else { 6 };
```
从循环中返回值
```rust
    let mut counter = 0;
    let result = loop {
        counter += 1;

        if counter == 10 {
            break counter * 2;
        }
    };
```
使用 for 循环遍历集合中的元素
```rust
    let a = [10, 20, 30, 40, 50];
    for element in a {
        println!("the value is: {element}");
    }
```
## 4、认识所有权

### 4.1什么是所有权？
所有权的规则:
* Rust 中的每一个值都有一个 所有者（owner）。
* 值在任一时刻有且只有一个所有者。
* 当所有者（变量）离开作用域，这个值将被丢弃。

当变量离开作用域，Rust 为我们调用一个特殊的函数。这个函数叫做 drop。
>在 C++ 中，这种 item 在生命周期结束时释放资源的模式有时被称作 资源获取即初始化（Resource Acquisition Is Initialization (RAII)）。

隐含了一个设计选择：Rust 永远也不会自动创建数据的 “深拷贝”。因此，任何*自动*的复制可以被认为对运行时性能影响较小。\
Rust 有一个叫做 Copy trait 的特殊注解，可以用在类似整型这样的存储在栈上的类型上（第十章将会详细讲解 trait）。如果一个类型实现了 Copy trait，那么一个旧的变量在将其赋值给其他变量后仍然可用。Rust 不允许自身或其任何部分实现了 Drop trait 的类型使用 Copy trait。trait<特性，特点；品质>

### 4.2引用与借用
我们将创建一个引用的行为称为 借用（borrowing）。正如变量默认是不可变的，引用也一样。（默认）不允许修改引用的值。\
创建一个可变引用 &mut s。\
不能在拥有不可变引用的同时拥有可变引用。多个不可变引用是可以的。\
在 Rust 中编译器确保引用永远也不会变成悬垂状态：当你拥有一些数据的引用，编译器确保数据不会在其引用之前离开作用域。\
以下代码是解决悬垂引用的办法，所有权被移动出去，所以没有值被释放。
```rust
fn no_dangle() -> String {
    let s = String::from("hello");
    s
}
```

### 4.3 slice类型
slice 允许你引用集合中一段连续的元素序列，而不用引用整个集合。slice 是一类引用，所以它没有所有权。\
字符串 slice（string slice）是 String 中一部分值的引用，它看起来像这样：
```rust
    let s = String::from("hello world");
    let hello = &s[0..5];
    let hello = &s[..5];
```
**字符串字面值就是 slice**

## 5、使用结构体组织相关联的数据

### 5.1 结构体的定义和实例化
创建一个结构体例子：
```rust
struct User {
    active: bool,
    username: String,
    email: String,
    sign_in_count: u64,
}
```

Rust 并不允许只将某个字段标记为可变。\
可以在函数体的最后一个表达式中构造一个结构体的新实例，来隐式地返回这个实例。例如：
```rust
fn build_user(email: String, username: String) -> User {
    User {
        active: true,
        username: username,
        email: email,
        sign_in_count: 1,
    }
}
```
参数名与字段名都完全相同，我们可以使用 字段初始化简写语法。例如：
```rust
fn build_user(email: String, username: String) -> User {
    User {
        active: true,
        username,
        email,
        sign_in_count: 1,
    }
}
```
使用结构体更新语法。例如：
```rust
fn main() {
    let user2 = User {
        email: String::from("another@example.com"),
        ..user1
    };
}
```
结构更新语法就像带有 = 的赋值，因为它移动了数据。在这个例子中，总体上说我们在创建 user2 后不能就再使用 user1 了。因为 user1 的 username 字段中的 String 被移到 user2 中。如果我们给 user2 的 email 和 username 都赋予新的 String 值，从而只使用 user1 的 active 和 sign_in_count 值，那么 user1 在创建 user2 后仍然有效。

我们也可以定义一个没有任何字段的结构体！它们被称为 类单元结构体（unit-like structs）因为它们类似于 ()，即“元组类型”一节中提到的 unit 类型。类单元结构体常常在你想要在某个类型上实现 trait 但不需要在类型中存储数据的时候发挥作用。例如
```rust
struct AlwaysEqual;
fn main() {
    let subject = AlwaysEqual;
}
```

### 5.2 结构体示例程序

通过println和dbg!进行调试打印，如下：
```rust
println!("rect1 is {:?}", rect1);
println!("rect1 is {:#?}", rect1);//更优雅的打印
dbg!(&rectl);
```

### 5.3 方法语法
定义方法,例子如下：
```rust
impl Rectangle {
    fn area(&self) -> u32 {
       self.width * self.height
    }
}
```
所有在 impl 块中定义的函数被称为 关联函数（associated functions）,关键字 ***Self*** 在函数的返回类型中代指在 impl 关键字后出现的类型，在这里是 Rectangle
```rust
impl Rectangle {
    fn square(size: u32) -> Self {
        Self {
            width: size,
            height: size,
        }
    }
}
code block
```
每个结构体都允许拥有多个 impl 块。

## 6、枚举和模式匹配

### 6.1 枚举的定义
定义枚举：
```rust
enum IpAddrKind {
    V4,
    V6,
}
let four = IpAddrKind::V4;
let six = IpAddrKind::V6;
```
IpAddr 枚举的新定义表明了 V4 和 V6 成员都关联了 String 值:
```rust
enum IpAddr {
    V4(String),
    V6(String),
}
let home = IpAddr::V4(String::from("127.0.0.1"));
let loopback = IpAddr::V6(String::from("::1"));
```
从上面的代码看出，每一个我们定义的枚举成员的名字也变成了一个构建枚举的实例的函数。

用枚举替代结构体还有另一个优势：每个成员可以处理不同类型和数量的数据。
```rust    enum IpAddr {
    V4(u8, u8, u8, u8),
    V6(String),
}
let home = IpAddr::V4(127, 0, 0, 1);
let loopback = IpAddr::V6(String::from("::1"));
```
另一个枚举的例子：它的成员中内嵌了多种多样的类型：
```rust
enum Message {
    Quit,
    Move { x: i32, y: i32  },
    Write(String),
    ChangeColor(i32, i32, i32),
}
```
Option 枚举:可以不需要 Option:: 前缀来直接使用 Some 和 None。
```rust
enum Option<T> {
    None,
    Some(T),
}
```

### 6.2 match 控制流结构
match 允许我们将一个值与一系列的模式相比较，并根据相匹配的模式执行相应代码。它确保了所有可能的情况都得到处理。
```rust
enum Coin {
    Penny,
    Nickel,
    Dime,
    Quarter,
}

fn value_in_cents(coin: Coin) -> u8 {
    match coin {
        Coin::Penny =>{
            println!("lucky penny!");
            1
        }
        Coin::Nickel => 5,
        Coin::Dime => 10,
        Coin::Quarter => 25,
    }
}
```
如果想要在分支中运行多行代码，可以使用大括号，而分支后的逗号是可选的。

绑定值的模式：\
如果调用 value_in_cents(Coin::Quarter(UsState::Alaska))，coin 将是 Coin::Quarter(UsState::Alaska)。直到遇到 Coin::Quarter(state)。这时，state 绑定的将会是值 UsState::Alaska。<F24><F25>
```rust 
#[derive(Debug)] // 这样可以立刻看到州的名称
enum UsState {
    Alabama,
    Alaska,
    // --snip--
}
enum Coin {
    Penny,
    Nickel,
    Dime,
    Quarter(UsState),
}
fn value_in_cents(coin: Coin) -> u8 {
    match coin {
        Coin::Penny => 1,
        Coin::Nickel => 5,
        Coin::Dime => 10,
        Coin::Quarter(state) => {
            println!("State quarter from {:?}!", state);
            25
        }
    }
}
```
匹配 Option<T>:\
```rust
fn plus_one(x: Option<i32>) -> Option<i32> {
	match x {
		None => None,
		Some(i) => Some(i + 1),
	}
}
```

通配模式和 _ 占位符
通配模式：
```rust
let dice_roll = 9;
match dice_roll {
    3 => add_fancy_hat(),
    7 => remove_fancy_hat(),
    other => move_player(other),
}
```
上例中，最后一个分支则涵盖了所有其他可能的值，模式是我们命名为 other 的一个变量。other 分支的代码通过将其传递给 move_player 函数来使用这个变量。
_ 占位符： 不需要使用这个值，所以我们改动代码使用 _ 来替代变量 other
```rust
let dice_roll = 9;
match dice_roll {
    3 => add_fancy_hat(),
    7 => remove_fancy_hat(),
    _ => reroll(),
}
```

### 6.3 if let 简洁控制流
if let 语法让我们以一种不那么冗长的方式结合 if 和 let，来处理只匹配一个模式的值而忽略其他模式的情况。
然而，这样会失去 match 强制要求的穷尽性检查。match 和 if let 之间的选择依赖特定的环境以及增加简洁度和失去穷尽性检查的权衡取舍。
换句话说，可以认为 if let 是 match 的一个语法糖，它当值匹配某一模式时执行代码而忽略所有其他值。
可以在 if let 中包含一个 else。else 块中的代码与 match 表达式中的 _ 分支块中的代码相同，这样的 match 表达式就等同于 if let 和 else。
```RUst
let mut count = 0;
if let Coin::Quarter(state) = coin {
	println!("State quarter from {:?}!", state);
} else {
	count += 1;
}
```


## A、各类技巧和规范
### A.1 字串(str)、字符串字面值(&str)、字符（char），字符串(string)使用
Rust 的 char 类型的大小为四个字节 (four bytes)，并代表了一个 Unicode 标量值（Unicode Scalar Value），这意味着它可以比 ASCII 表示更多内容。在 Rust 中，带变音符号的字母（Accented letters），中文、日文、韩文等字符，emoji（绘文字）以及零长度的空白字符都是有效的 char 值。\

### A.2 调试、打印

### A.3 Option的使用

#### 当有一个 Option<T> 的值时，如何从 Some 成员中取出 T 的值来使用它
