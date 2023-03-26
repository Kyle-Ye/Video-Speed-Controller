//
//  AckTab.swift
//  Video Speed Controller
//
//  Created by Kyle on 2023/3/26.
//

import AcknowKit
import SwiftUI

struct AckTab: View {
    var body: some View {
        NavigationSplitView {
            List {
                AcknowLibrarySection(library: firstLib)
                AcknowLibrarySection(library: thirdLib)
            }
            .navigationTitle("Acknowledgement")
        } detail: {
            Label("No License is choosen", systemImage: "doc.plaintext")
        }
    }

    private var thirdLib: AcknowLibrary {
        AcknowLibrary(
            items: [
                .init(title: "videospeed", text: """
                Copyright (c) 2014-2023 Ilya Grigorik

                Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

                The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

                THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
                """, author: "Ilya Grigorik", license: .mit, repository: URL(string: "https://github.com/igrigorik/videospeed")),
            ],
            header: NSLocalizedString("第三方库", comment: "Third party libraries")
        )
    }

    private var firstLib: AcknowLibrary {
        AcknowLibrary(
            items: [
                .init(title: "Video Speed Controller", text: """
                You are permitted to use this source code, with or without modification, in source or binary form, on your devices however you see fit. You are not permitted to redistribute binaries of this source code, with or without modification. In other words, you cannot put this application or any application derived from it, on the Apple App Store, Cydia, or any other binary-only distribution channel.

                你可以任意修改、使用该源代码，也可以用于商业目的。但不能将此应用或者修改的应用的二进制文件上传到 App Store 或者通过其它分发渠道（包括但不限于网站、网盘、聊天软件）分享二进制文件。
                """, author: "Kyle-Ye", repository: URL(string: "https://github.com/Kyle-Ye/Video-Speed-Controller")),
                .init(title: "videospeed", text: """
                Copyright (c) 2022-2023 Kyle-Ye

                Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

                The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

                THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
                """, author: "Kyle-Ye", license: .mit, repository: URL(string: "https://github.com/Kyle-Ye/videospeed.git")),
                .init(title: "AcknowKit", text: """
                MIT License

                Copyright (c) 2023 Kyle-Ye

                Permission is hereby granted, free of charge, to any person obtaining a copy
                of this software and associated documentation files (the "Software"), to deal
                in the Software without restriction, including without limitation the rights
                to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
                copies of the Software, and to permit persons to whom the Software is
                furnished to do so, subject to the following conditions:

                The above copyright notice and this permission notice shall be included in all
                copies or substantial portions of the Software.

                THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
                IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
                FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
                AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
                LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
                OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
                SOFTWARE
                """, author: "Kyle-Ye", license: .mit, repository: URL(string: "https://github.com/Kyle-Ye/AcknowKit")),
            ],
            header: NSLocalizedString("First party libraries", comment: "First party libraries")
        )
    }
}

struct AckTab_Previews: PreviewProvider {
    static var previews: some View {
        AckTab()
    }
}
