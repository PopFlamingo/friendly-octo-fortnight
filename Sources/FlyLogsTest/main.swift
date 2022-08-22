#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif

var total = ""

while true {
    total += "\(total.count) "
    print(total)
    sleep(3)
}