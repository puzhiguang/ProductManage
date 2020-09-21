# ProductManage
项目目标：通过服务端提供的API获取，指定关键字搜索的数据集合
考点分析：
1、SwiftUI的List、UISearchBar的考察。
2、自定义List、Row的展示，List通过Section进行分组。
3、自定义SearchBar，可以通过Change text的Action来触发List的刷新。
4、获取数据源，我写的是假数据，应该是通过URLSession.shared.dataTask方式，获取get或者post指定的URL，如果更好的办法是通过pod方式集成pod 'Alamofire', '4.9.1'进行数据获取。

ProductModel：造的假数据
ProductListRow：自定义List显示的Row，定制了显示的颜色和样式。颜色是通过工具获取pdf上面的颜色。
ProductList：主显示界面，默认上来显示一个Search搜索条，通过搜索关键字显示List，如果输入内容不存在显示“not result”

Search目录，自定义search栏，点Search时，SearchBar置顶，增加cancel按钮。退回到主界面。
ViewControllerResolver
SearchBar

项目可扩展的地方很多。如果时间再多些可以做的更好。通过https://docs.djangoproject.com/zh-hans/3.1/这套可以快速的搭建一套本地service。但是也有学习成本。暂时没有弄。
