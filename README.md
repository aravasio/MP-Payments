# MP-Payments
Code challenge for MercadoPago.

# Project
Open `payment.xcworkspace` and build. Project already includes /Pods files and all external
dependencies required to build out of the box.

# External libs (pods)
* [Moya](https://github.com/Moya/Moya): For Network abstraction layer in Swift. (Compile-time checking for correct
API endpoint accesses, lets you define a clear usage of different endpoints with associated enum values,
treats test stubs as first-class citizens so unit testing is super-easy.)

* [SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON): makes it easy to deal with JSON data in Swift.

* [AlamofireImage](https://github.com/Alamofire/AlamofireImage): Image Response Serializers + an lot more.

# Things to improve
[] Error handling - Just handled the extreme bare-minimum based on what I managed to make fail in the provided API.  
[] Unit Test  
[] UI Test  
[] Reachability (no error message for no internet connection)  
[] Image chache  
[] Improving VC creation through something better than VC-managers (they quickly grow in size).  
