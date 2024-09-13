; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [294 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [588 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 219
	i32 7143582, ; 1: Scanner => 0x6d009e => 174
	i32 10166715, ; 2: System.Net.NameResolution.dll => 0x9b21bb => 218
	i32 26230656, ; 3: Microsoft.Extensions.DependencyModel => 0x1903f80 => 99
	i32 38948123, ; 4: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 10
	i32 39109920, ; 5: Newtonsoft.Json.dll => 0x254c520 => 132
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 228
	i32 42244203, ; 7: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 19
	i32 42639949, ; 8: System.Threading.Thread => 0x28aa24d => 274
	i32 57725457, ; 9: it\Microsoft.Data.SqlClient.resources => 0x370d211 => 3
	i32 57727992, ; 10: ja\Microsoft.Data.SqlClient.resources => 0x370dbf8 => 4
	i32 66541672, ; 11: System.Diagnostics.StackTrace => 0x3f75868 => 195
	i32 67008169, ; 12: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 43
	i32 68219467, ; 13: System.Security.Cryptography.Primitives => 0x410f24b => 260
	i32 72070932, ; 14: Microsoft.Maui.Graphics.dll => 0x44bb714 => 129
	i32 76734228, ; 15: Microsoft.Azure.ServiceBus.dll => 0x492df14 => 85
	i32 83768722, ; 16: Microsoft.AspNetCore.Cryptography.Internal => 0x4fe3592 => 56
	i32 83839681, ; 17: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 27
	i32 100385486, ; 18: Microsoft.Azure.Services.AppAuthentication.dll => 0x5fbc2ce => 86
	i32 117431740, ; 19: System.Runtime.InteropServices => 0x6ffddbc => 245
	i32 122350210, ; 20: System.Threading.Channels.dll => 0x74aea82 => 270
	i32 136584136, ; 21: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 42
	i32 140062828, ; 22: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 35
	i32 142721839, ; 23: System.Net.WebHeaderCollection => 0x881c32f => 226
	i32 149972175, ; 24: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 260
	i32 159306688, ; 25: System.ComponentModel.Annotations => 0x97ed3c0 => 185
	i32 165246403, ; 26: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 150
	i32 176714968, ; 27: Microsoft.AspNetCore.WebUtilities.dll => 0xa8874d8 => 83
	i32 179062648, ; 28: Microsoft.AspNetCore.Mvc.Razor => 0xaac4778 => 73
	i32 182336117, ; 29: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 168
	i32 184328833, ; 30: System.ValueTuple.dll => 0xafca281 => 279
	i32 205061960, ; 31: System.ComponentModel => 0xc38ff48 => 188
	i32 209399409, ; 32: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 148
	i32 220171995, ; 33: System.Diagnostics.Debug => 0xd1f8edb => 192
	i32 230752869, ; 34: Microsoft.CSharp.dll => 0xdc10265 => 175
	i32 231814094, ; 35: System.Globalization => 0xdd133ce => 203
	i32 246610117, ; 36: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 236
	i32 252019042, ; 37: Microsoft.AspNetCore.Razor.Runtime => 0xf058162 => 79
	i32 254259026, ; 38: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 52
	i32 264223668, ; 39: zh-Hans\Microsoft.Data.SqlClient.resources => 0xfbfbbb4 => 8
	i32 272650997, ; 40: ko\Microsoft.Data.SqlClient.resources.dll => 0x104052f5 => 5
	i32 276479776, ; 41: System.Threading.Timer.dll => 0x107abf20 => 276
	i32 300686228, ; 42: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0x11ec1b94 => 48
	i32 317674968, ; 43: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 40
	i32 318968648, ; 44: Xamarin.AndroidX.Activity.dll => 0x13031348 => 145
	i32 321963286, ; 45: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 18
	i32 330147069, ; 46: Microsoft.SqlServer.Server => 0x13ada4fd => 131
	i32 336788001, ; 47: Microsoft.AspNetCore.Antiforgery => 0x1412fa21 => 47
	i32 338324308, ; 48: Microsoft.AspNetCore.Mvc.DataAnnotations.dll => 0x142a6b54 => 71
	i32 342366114, ; 49: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 157
	i32 344827588, ; 50: Microsoft.AspNetCore.ResponseCaching.Abstractions => 0x148da6c4 => 80
	i32 367780167, ; 51: System.IO.Pipes => 0x15ebe147 => 211
	i32 374914964, ; 52: System.Transactions.Local => 0x1658bf94 => 278
	i32 375677976, ; 53: System.Net.ServicePoint.dll => 0x16646418 => 223
	i32 379916513, ; 54: System.Threading.Thread.dll => 0x16a510e1 => 274
	i32 384051609, ; 55: Microsoft.AspNetCore.Routing.dll => 0x16e42999 => 81
	i32 385762202, ; 56: System.Memory.dll => 0x16fe439a => 215
	i32 392610295, ; 57: System.Threading.ThreadPool.dll => 0x1766c1f7 => 275
	i32 395744057, ; 58: _Microsoft.Android.Resource.Designer => 0x17969339 => 44
	i32 409257351, ; 59: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 38
	i32 442565967, ; 60: System.Collections => 0x1a61054f => 184
	i32 450948140, ; 61: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 156
	i32 451504562, ; 62: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 261
	i32 456227837, ; 63: System.Web.HttpUtility.dll => 0x1b317bfd => 280
	i32 459347974, ; 64: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 250
	i32 465846621, ; 65: mscorlib => 0x1bc4415d => 288
	i32 469710990, ; 66: System.dll => 0x1bff388e => 287
	i32 485463106, ; 67: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 116
	i32 489220957, ; 68: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 16
	i32 490002678, ; 69: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x1d34d8f6 => 61
	i32 498788369, ; 70: System.ObjectModel => 0x1dbae811 => 230
	i32 513247710, ; 71: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 112
	i32 535369068, ; 72: fr\Microsoft.Data.SqlClient.resources.dll => 0x1fe9156c => 2
	i32 538707440, ; 73: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 37
	i32 539058512, ; 74: Microsoft.Extensions.Logging => 0x20216150 => 108
	i32 540030774, ; 75: System.IO.FileSystem.dll => 0x20303736 => 209
	i32 545304856, ; 76: System.Runtime.Extensions => 0x2080b118 => 243
	i32 546455878, ; 77: System.Runtime.Serialization.Xml => 0x20924146 => 251
	i32 547209430, ; 78: ja\Microsoft.Data.SqlClient.resources.dll => 0x209dc0d6 => 4
	i32 548916678, ; 79: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 87
	i32 559063233, ; 80: Microsoft.AspNetCore.Razor.Language.dll => 0x2152a0c1 => 78
	i32 561442103, ; 81: Microsoft.Azure.Amqp.dll => 0x2176ed37 => 84
	i32 569127776, ; 82: Microsoft.Azure.Amqp => 0x21ec3360 => 84
	i32 571435654, ; 83: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 102
	i32 577335427, ; 84: System.Security.Cryptography.Cng => 0x22697083 => 257
	i32 613668793, ; 85: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 256
	i32 627609679, ; 86: Xamarin.AndroidX.CustomView => 0x2568904f => 154
	i32 627931235, ; 87: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 29
	i32 662205335, ; 88: System.Text.Encodings.Web.dll => 0x27787397 => 267
	i32 672442732, ; 89: System.Collections.Concurrent => 0x2814a96c => 180
	i32 683518922, ; 90: System.Net.Security => 0x28bdabca => 222
	i32 689062853, ; 91: Microsoft.Azure.ServiceBus => 0x291243c5 => 85
	i32 690569205, ; 92: System.Xml.Linq.dll => 0x29293ff5 => 281
	i32 709152836, ; 93: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 141
	i32 722857257, ; 94: System.Runtime.Loader.dll => 0x2b15ed29 => 246
	i32 723796036, ; 95: System.ClientModel.dll => 0x2b244044 => 134
	i32 724146010, ; 96: Microsoft.AspNetCore.Authorization.Policy.dll => 0x2b29975a => 51
	i32 730737221, ; 97: Microsoft.AspNetCore.Mvc.Razor.dll => 0x2b8e2a45 => 73
	i32 734129105, ; 98: Microsoft.AspNetCore.Razor => 0x2bc1ebd1 => 77
	i32 759454413, ; 99: System.Net.Requests => 0x2d445acd => 221
	i32 762598435, ; 100: System.IO.Pipes.dll => 0x2d745423 => 211
	i32 775189201, ; 101: System.Data.SqlClient.dll => 0x2e3472d1 => 136
	i32 775507847, ; 102: System.IO.Compression => 0x2e394f87 => 205
	i32 777317022, ; 103: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 35
	i32 789151979, ; 104: Microsoft.Extensions.Options => 0x2f0980eb => 111
	i32 804008546, ; 105: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 55
	i32 804715423, ; 106: System.Data.Common => 0x2ff6fb9f => 191
	i32 809499826, ; 107: Microsoft.AspNetCore.Mvc.ViewFeatures => 0x303ffcb2 => 76
	i32 823281589, ; 108: System.Private.Uri.dll => 0x311247b5 => 232
	i32 830298997, ; 109: System.IO.Compression.Brotli => 0x317d5b75 => 204
	i32 869139383, ; 110: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 20
	i32 872446091, ; 111: Microsoft.AspNetCore.Razor.dll => 0x3400788b => 77
	i32 877678880, ; 112: System.Globalization.dll => 0x34505120 => 203
	i32 880668424, ; 113: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 34
	i32 904024072, ; 114: System.ComponentModel.Primitives.dll => 0x35e25008 => 186
	i32 911108515, ; 115: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 210
	i32 918734561, ; 116: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 31
	i32 940221205, ; 117: Microsoft.CodeAnalysis.Razor => 0x380aa315 => 90
	i32 955402788, ; 118: Newtonsoft.Json => 0x38f24a24 => 132
	i32 956528696, ; 119: zh-Hans\Microsoft.Data.SqlClient.resources.dll => 0x39037838 => 8
	i32 961460050, ; 120: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 24
	i32 967690846, ; 121: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 157
	i32 972467304, ; 122: Microsoft.AspNetCore.Razor.Language => 0x39f6ac68 => 78
	i32 975236339, ; 123: System.Diagnostics.Tracing => 0x3a20ecf3 => 199
	i32 975874589, ; 124: System.Xml.XDocument => 0x3a2aaa1d => 283
	i32 986514023, ; 125: System.Private.DataContractSerialization.dll => 0x3acd0267 => 231
	i32 987214855, ; 126: System.Diagnostics.Tools => 0x3ad7b407 => 197
	i32 990727110, ; 127: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 33
	i32 992768348, ; 128: System.Collections.dll => 0x3b2c715c => 184
	i32 994442037, ; 129: System.IO.FileSystem => 0x3b45fb35 => 209
	i32 999186168, ; 130: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 104
	i32 1009232667, ; 131: Microsoft.AspNetCore.Html.Abstractions.dll => 0x3c27ab1b => 62
	i32 1012816738, ; 132: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 167
	i32 1019214401, ; 133: System.Drawing => 0x3cbffa41 => 201
	i32 1028951442, ; 134: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 98
	i32 1035644815, ; 135: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 146
	i32 1036536393, ; 136: System.Drawing.Primitives.dll => 0x3dc84a49 => 200
	i32 1043950537, ; 137: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 14
	i32 1044663988, ; 138: System.Linq.Expressions.dll => 0x3e444eb4 => 213
	i32 1052210849, ; 139: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 159
	i32 1054642859, ; 140: Microsoft.AspNetCore.Html.Abstractions => 0x3edc92ab => 62
	i32 1062017875, ; 141: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 115
	i32 1082857460, ; 142: System.ComponentModel.TypeConverter => 0x408b17f4 => 187
	i32 1084122840, ; 143: Xamarin.Kotlin.StdLib => 0x409e66d8 => 172
	i32 1089913930, ; 144: System.Diagnostics.EventLog.dll => 0x40f6c44a => 137
	i32 1098259244, ; 145: System => 0x41761b2c => 287
	i32 1099692271, ; 146: Microsoft.DotNet.PlatformAbstractions => 0x418bf8ef => 92
	i32 1108272742, ; 147: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 36
	i32 1110309514, ; 148: Microsoft.Extensions.Hosting.Abstractions => 0x422dfa8a => 105
	i32 1112354281, ; 149: Microsoft.AspNetCore.Authentication.Abstractions => 0x424d2de9 => 48
	i32 1117529484, ; 150: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 30
	i32 1118262833, ; 151: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 26
	i32 1138436374, ; 152: Microsoft.Data.SqlClient.dll => 0x43db2916 => 91
	i32 1168523401, ; 153: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 32
	i32 1173126369, ; 154: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 100
	i32 1178241025, ; 155: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 164
	i32 1186231468, ; 156: Newtonsoft.Json.Bson.dll => 0x46b474ac => 133
	i32 1204575371, ; 157: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 94
	i32 1208641965, ; 158: System.Diagnostics.Process => 0x480a69ad => 194
	i32 1220193633, ; 159: Microsoft.Net.Http.Headers => 0x48baad61 => 130
	i32 1224544870, ; 160: Microsoft.AspNetCore.Mvc.RazorPages.dll => 0x48fd1266 => 75
	i32 1236289705, ; 161: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x49b048a9 => 61
	i32 1253011324, ; 162: Microsoft.Win32.Registry => 0x4aaf6f7c => 177
	i32 1260983243, ; 163: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 12
	i32 1267908789, ; 164: Microsoft.AspNetCore.Routing => 0x4b92c0b5 => 81
	i32 1293217323, ; 165: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 155
	i32 1308624726, ; 166: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 21
	i32 1309188875, ; 167: System.Private.DataContractSerialization => 0x4e08a30b => 231
	i32 1324164729, ; 168: System.Linq => 0x4eed2679 => 214
	i32 1335329327, ; 169: System.Runtime.Serialization.Json.dll => 0x4f97822f => 249
	i32 1336711579, ; 170: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 41
	i32 1364015309, ; 171: System.IO => 0x514d38cd => 212
	i32 1373134921, ; 172: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 42
	i32 1376866003, ; 173: Xamarin.AndroidX.SavedState => 0x52114ed3 => 167
	i32 1379779777, ; 174: System.Resources.ResourceManager => 0x523dc4c1 => 241
	i32 1406073936, ; 175: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 151
	i32 1408764838, ; 176: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 248
	i32 1411008626, ; 177: Scanner.dll => 0x541a4872 => 174
	i32 1411638395, ; 178: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 242
	i32 1430672901, ; 179: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 10
	i32 1452070440, ; 180: System.Formats.Asn1.dll => 0x568cd628 => 202
	i32 1453312822, ; 181: System.Diagnostics.Tools.dll => 0x569fcb36 => 197
	i32 1454105418, ; 182: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 101
	i32 1457743152, ; 183: System.Runtime.Extensions.dll => 0x56e36530 => 243
	i32 1458022317, ; 184: System.Net.Security.dll => 0x56e7a7ad => 222
	i32 1460893475, ; 185: System.IdentityModel.Tokens.Jwt => 0x57137723 => 138
	i32 1461004990, ; 186: es\Microsoft.Maui.Controls.resources => 0x57152abe => 16
	i32 1461234159, ; 187: System.Collections.Immutable.dll => 0x5718a9ef => 181
	i32 1462112819, ; 188: System.IO.Compression.dll => 0x57261233 => 205
	i32 1469204771, ; 189: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 147
	i32 1470490898, ; 190: Microsoft.Extensions.Primitives => 0x57a5e912 => 112
	i32 1479771757, ; 191: System.Collections.Immutable => 0x5833866d => 181
	i32 1480492111, ; 192: System.IO.Compression.Brotli.dll => 0x583e844f => 204
	i32 1487239319, ; 193: Microsoft.Win32.Primitives => 0x58a57897 => 176
	i32 1498168481, ; 194: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 119
	i32 1521091094, ; 195: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 104
	i32 1526286932, ; 196: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 40
	i32 1536373174, ; 197: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 196
	i32 1543031311, ; 198: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 269
	i32 1546581739, ; 199: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 55
	i32 1550322496, ; 200: System.Reflection.Extensions.dll => 0x5c680b40 => 237
	i32 1565310744, ; 201: System.Runtime.Caching => 0x5d4cbf18 => 140
	i32 1565862583, ; 202: System.IO.FileSystem.Primitives => 0x5d552ab7 => 207
	i32 1573704789, ; 203: System.Runtime.Serialization.Json => 0x5dccd455 => 249
	i32 1582305585, ; 204: Azure.Identity => 0x5e501131 => 46
	i32 1592978981, ; 205: System.Runtime.Serialization.dll => 0x5ef2ee25 => 252
	i32 1596263029, ; 206: zh-Hant\Microsoft.Data.SqlClient.resources => 0x5f250a75 => 9
	i32 1604827217, ; 207: System.Net.WebClient => 0x5fa7b851 => 225
	i32 1618516317, ; 208: System.Net.WebSockets.Client.dll => 0x6078995d => 227
	i32 1622152042, ; 209: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 161
	i32 1624863272, ; 210: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 170
	i32 1625077857, ; 211: Microsoft.AspNetCore.Antiforgery.dll => 0x60dcb861 => 47
	i32 1628113371, ; 212: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 122
	i32 1636350590, ; 213: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 153
	i32 1639515021, ; 214: System.Net.Http.dll => 0x61b9038d => 216
	i32 1639986890, ; 215: System.Text.RegularExpressions => 0x61c036ca => 269
	i32 1654881142, ; 216: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 54
	i32 1657153582, ; 217: System.Runtime => 0x62c6282e => 253
	i32 1658251792, ; 218: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 171
	i32 1677501392, ; 219: System.Net.Primitives.dll => 0x63fca3d0 => 220
	i32 1678508291, ; 220: System.Net.WebSockets => 0x640c0103 => 228
	i32 1679769178, ; 221: System.Security.Cryptography => 0x641f3e5a => 262
	i32 1691477237, ; 222: System.Reflection.Metadata => 0x64d1e4f5 => 238
	i32 1696967625, ; 223: System.Security.Cryptography.Csp => 0x6525abc9 => 258
	i32 1701541528, ; 224: System.Diagnostics.Debug.dll => 0x656b7698 => 192
	i32 1726116996, ; 225: System.Reflection.dll => 0x66e27484 => 240
	i32 1729485958, ; 226: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 149
	i32 1743415430, ; 227: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 11
	i32 1744735666, ; 228: System.Transactions.Local.dll => 0x67fe8db2 => 278
	i32 1750313021, ; 229: Microsoft.Win32.Primitives.dll => 0x6853a83d => 176
	i32 1760259689, ; 230: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 53
	i32 1763938596, ; 231: System.Diagnostics.TraceSource.dll => 0x69239124 => 198
	i32 1765942094, ; 232: System.Reflection.Extensions => 0x6942234e => 237
	i32 1766324549, ; 233: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 168
	i32 1770582343, ; 234: Microsoft.Extensions.Logging.dll => 0x6988f147 => 108
	i32 1776026572, ; 235: System.Core.dll => 0x69dc03cc => 190
	i32 1780572499, ; 236: Mono.Android.Runtime.dll => 0x6a216153 => 292
	i32 1782862114, ; 237: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 27
	i32 1788241197, ; 238: Xamarin.AndroidX.Fragment => 0x6a96652d => 156
	i32 1793755602, ; 239: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 19
	i32 1794500907, ; 240: Microsoft.Identity.Client.dll => 0x6af5e92b => 114
	i32 1796167890, ; 241: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 87
	i32 1798832757, ; 242: es\Microsoft.Data.SqlClient.resources.dll => 0x6b380275 => 1
	i32 1808609942, ; 243: Xamarin.AndroidX.Loader => 0x6bcd3296 => 161
	i32 1813058853, ; 244: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 172
	i32 1813201214, ; 245: Xamarin.Google.Android.Material => 0x6c13413e => 171
	i32 1818569960, ; 246: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 165
	i32 1819327070, ; 247: Microsoft.AspNetCore.Http.Features.dll => 0x6c70ba5e => 66
	i32 1820883333, ; 248: Microsoft.AspNetCore.Cryptography.Internal.dll => 0x6c887985 => 56
	i32 1824175904, ; 249: System.Text.Encoding.Extensions => 0x6cbab720 => 265
	i32 1824722060, ; 250: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 248
	i32 1824744702, ; 251: ru\Microsoft.Data.SqlClient.resources.dll => 0x6cc364fe => 7
	i32 1828688058, ; 252: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 109
	i32 1853025655, ; 253: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 36
	i32 1858542181, ; 254: System.Linq.Expressions => 0x6ec71a65 => 213
	i32 1870277092, ; 255: System.Reflection.Primitives => 0x6f7a29e4 => 239
	i32 1871986876, ; 256: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 122
	i32 1875935024, ; 257: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 18
	i32 1889954781, ; 258: System.Reflection.Metadata.dll => 0x70a66bdd => 238
	i32 1893218855, ; 259: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 12
	i32 1894524299, ; 260: Microsoft.DotNet.PlatformAbstractions.dll => 0x70ec258b => 92
	i32 1900610850, ; 261: System.Resources.ResourceManager.dll => 0x71490522 => 241
	i32 1910275211, ; 262: System.Collections.NonGeneric.dll => 0x71dc7c8b => 182
	i32 1921968366, ; 263: Microsoft.AspNetCore.Mvc.Formatters.Json => 0x728ee8ee => 72
	i32 1928288591, ; 264: Microsoft.AspNetCore.Http.Abstractions => 0x72ef594f => 64
	i32 1939592360, ; 265: System.Private.Xml.Linq => 0x739bd4a8 => 233
	i32 1953182387, ; 266: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 23
	i32 1953680223, ; 267: Microsoft.AspNetCore.DataProtection.Abstractions => 0x7472cb5f => 58
	i32 1967298789, ; 268: Microsoft.AspNetCore.Diagnostics.Abstractions.dll => 0x754298e5 => 59
	i32 1968388702, ; 269: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 95
	i32 1986222447, ; 270: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 123
	i32 2003115576, ; 271: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 15
	i32 2011961780, ; 272: System.Buffers.dll => 0x77ec19b4 => 179
	i32 2019465201, ; 273: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 159
	i32 2040764568, ; 274: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 115
	i32 2045470958, ; 275: System.Private.Xml => 0x79eb68ee => 234
	i32 2055257422, ; 276: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 158
	i32 2066184531, ; 277: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 14
	i32 2069514766, ; 278: Newtonsoft.Json.Bson => 0x7b5a4a0e => 133
	i32 2070888862, ; 279: System.Diagnostics.TraceSource => 0x7b6f419e => 198
	i32 2072397586, ; 280: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 103
	i32 2075706075, ; 281: Microsoft.AspNetCore.Http.Abstractions.dll => 0x7bb8c2db => 64
	i32 2076659885, ; 282: Microsoft.Extensions.WebEncoders => 0x7bc750ad => 113
	i32 2079903147, ; 283: System.Runtime.dll => 0x7bf8cdab => 253
	i32 2085039813, ; 284: System.Security.Cryptography.Xml.dll => 0x7c472ec5 => 143
	i32 2090596640, ; 285: System.Numerics.Vectors => 0x7c9bf920 => 229
	i32 2092734687, ; 286: Microsoft.AspNetCore.JsonPatch => 0x7cbc98df => 67
	i32 2120057885, ; 287: Microsoft.AspNetCore.Mvc.Formatters.Json.dll => 0x7e5d841d => 72
	i32 2127167465, ; 288: System.Console => 0x7ec9ffe9 => 189
	i32 2131193692, ; 289: pt-BR\Microsoft.Data.SqlClient.resources.dll => 0x7f076f5c => 6
	i32 2134056115, ; 290: zh-Hant\Microsoft.Data.SqlClient.resources.dll => 0x7f331cb3 => 9
	i32 2142473426, ; 291: System.Collections.Specialized => 0x7fb38cd2 => 183
	i32 2143790110, ; 292: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 285
	i32 2159891885, ; 293: Microsoft.Maui => 0x80bd55ad => 127
	i32 2169148018, ; 294: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 22
	i32 2181898931, ; 295: Microsoft.Extensions.Options.dll => 0x820d22b3 => 111
	i32 2182738860, ; 296: Microsoft.AspNetCore.Mvc.Core.dll => 0x8219f3ac => 70
	i32 2192057212, ; 297: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 109
	i32 2193016926, ; 298: System.ObjectModel.dll => 0x82b6c85e => 230
	i32 2197979891, ; 299: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 99
	i32 2201107256, ; 300: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 173
	i32 2201231467, ; 301: System.Net.Http => 0x8334206b => 216
	i32 2204417087, ; 302: Microsoft.Extensions.ObjectPool => 0x8364bc3f => 110
	i32 2207618523, ; 303: it\Microsoft.Maui.Controls.resources => 0x839595db => 24
	i32 2222056684, ; 304: System.Threading.Tasks.Parallel => 0x8471e4ec => 272
	i32 2228745826, ; 305: pt-BR\Microsoft.Data.SqlClient.resources => 0x84d7f662 => 6
	i32 2242871324, ; 306: Microsoft.AspNetCore.Http.dll => 0x85af801c => 63
	i32 2253551641, ; 307: Microsoft.IdentityModel.Protocols => 0x86527819 => 121
	i32 2265110946, ; 308: System.Security.AccessControl.dll => 0x8702d9a2 => 254
	i32 2266799131, ; 309: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 96
	i32 2279755925, ; 310: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 166
	i32 2285293097, ; 311: Microsoft.AspNetCore.Mvc.Abstractions => 0x8836ce29 => 69
	i32 2291847450, ; 312: Microsoft.AspNetCore.DataProtection.dll => 0x889ad11a => 57
	i32 2295906218, ; 313: System.Net.Sockets => 0x88d8bfaa => 224
	i32 2303942373, ; 314: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 28
	i32 2305521784, ; 315: System.Private.CoreLib.dll => 0x896b7878 => 290
	i32 2309278602, ; 316: ko\Microsoft.Data.SqlClient.resources => 0x89a4cb8a => 5
	i32 2320631194, ; 317: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 272
	i32 2321784778, ; 318: Microsoft.AspNetCore.Mvc.Abstractions.dll => 0x8a639fca => 69
	i32 2340441535, ; 319: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 244
	i32 2344264397, ; 320: System.ValueTuple => 0x8bbaa2cd => 279
	i32 2353062107, ; 321: System.Net.Primitives => 0x8c40e0db => 220
	i32 2366048013, ; 322: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 22
	i32 2368005991, ; 323: System.Xml.ReaderWriter.dll => 0x8d24e767 => 282
	i32 2369706906, ; 324: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 120
	i32 2371007202, ; 325: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 95
	i32 2378619854, ; 326: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 258
	i32 2383496789, ; 327: System.Security.Principal.Windows.dll => 0x8e114655 => 263
	i32 2395872292, ; 328: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 23
	i32 2401565422, ; 329: System.Web.HttpUtility => 0x8f24faee => 280
	i32 2411328690, ; 330: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 52
	i32 2427245696, ; 331: Microsoft.CodeAnalysis.Razor.dll => 0x90acd480 => 90
	i32 2427813419, ; 332: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 20
	i32 2435356389, ; 333: System.Console.dll => 0x912896e5 => 189
	i32 2442556106, ; 334: Microsoft.JSInterop.dll => 0x919672ca => 124
	i32 2451271121, ; 335: Microsoft.AspNetCore.Mvc.RazorPages => 0x921b6dd1 => 75
	i32 2454642406, ; 336: System.Text.Encoding.dll => 0x924edee6 => 266
	i32 2458592288, ; 337: Microsoft.AspNetCore.Authentication.Core => 0x928b2420 => 49
	i32 2458678730, ; 338: System.Net.Sockets.dll => 0x928c75ca => 224
	i32 2471841756, ; 339: netstandard.dll => 0x93554fdc => 289
	i32 2475788418, ; 340: Java.Interop.dll => 0x93918882 => 291
	i32 2480646305, ; 341: Microsoft.Maui.Controls => 0x93dba8a1 => 125
	i32 2484371297, ; 342: System.Net.ServicePoint => 0x94147f61 => 223
	i32 2490993605, ; 343: System.AppContext.dll => 0x94798bc5 => 178
	i32 2503351294, ; 344: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 26
	i32 2509217888, ; 345: System.Diagnostics.EventLog => 0x958fa060 => 137
	i32 2528662365, ; 346: Microsoft.AspNetCore.JsonPatch.dll => 0x96b8535d => 67
	i32 2537015816, ; 347: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 50
	i32 2538310050, ; 348: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 236
	i32 2540434582, ; 349: de\Microsoft.Data.SqlClient.resources.dll => 0x976bf496 => 0
	i32 2550873716, ; 350: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 21
	i32 2562349572, ; 351: Microsoft.CSharp => 0x98ba5a04 => 175
	i32 2570120770, ; 352: System.Text.Encodings.Web => 0x9930ee42 => 267
	i32 2576534780, ; 353: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 25
	i32 2585220780, ; 354: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 265
	i32 2589602615, ; 355: System.Threading.ThreadPool => 0x9a5a3337 => 275
	i32 2592341985, ; 356: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 100
	i32 2593268061, ; 357: Microsoft.AspNetCore.Routing.Abstractions.dll => 0x9a92215d => 82
	i32 2593496499, ; 358: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 30
	i32 2594125473, ; 359: Microsoft.AspNetCore.Hosting.Abstractions => 0x9a9f36a1 => 60
	i32 2605712449, ; 360: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 173
	i32 2617129537, ; 361: System.Private.Xml.dll => 0x9bfe3a41 => 234
	i32 2620871830, ; 362: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 153
	i32 2626831493, ; 363: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 25
	i32 2627185994, ; 364: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 196
	i32 2628210652, ; 365: System.Memory.Data => 0x9ca74fdc => 139
	i32 2633959305, ; 366: Microsoft.AspNetCore.Http.Extensions.dll => 0x9cff0789 => 65
	i32 2640290731, ; 367: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 120
	i32 2640706905, ; 368: Azure.Core => 0x9d65fd59 => 45
	i32 2656447230, ; 369: Microsoft.IdentityModel.Clients.ActiveDirectory.dll => 0x9e562afe => 118
	i32 2660759594, ; 370: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 142
	i32 2663698177, ; 371: System.Runtime.Loader => 0x9ec4cf01 => 246
	i32 2664396074, ; 372: System.Xml.XDocument.dll => 0x9ecf752a => 283
	i32 2665622720, ; 373: System.Drawing.Primitives => 0x9ee22cc0 => 200
	i32 2676780864, ; 374: System.Data.Common.dll => 0x9f8c6f40 => 191
	i32 2677098746, ; 375: Azure.Identity.dll => 0x9f9148fa => 46
	i32 2686887180, ; 376: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 251
	i32 2692077919, ; 377: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 54
	i32 2693849962, ; 378: System.IO.dll => 0xa090e36a => 212
	i32 2715334215, ; 379: System.Threading.Tasks.dll => 0xa1d8b647 => 273
	i32 2717744543, ; 380: System.Security.Claims => 0xa1fd7d9f => 255
	i32 2719963679, ; 381: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 257
	i32 2722434549, ; 382: Microsoft.CodeAnalysis.dll => 0xa2450df5 => 88
	i32 2724373263, ; 383: System.Runtime.Numerics.dll => 0xa262a30f => 247
	i32 2732626843, ; 384: Xamarin.AndroidX.Activity => 0xa2e0939b => 145
	i32 2735172069, ; 385: System.Threading.Channels => 0xa30769e5 => 270
	i32 2735631878, ; 386: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 50
	i32 2737747696, ; 387: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 147
	i32 2740051746, ; 388: Microsoft.Identity.Client => 0xa351df22 => 114
	i32 2740698338, ; 389: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 11
	i32 2752995522, ; 390: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 31
	i32 2755098380, ; 391: Microsoft.SqlServer.Server.dll => 0xa437770c => 131
	i32 2758225723, ; 392: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 126
	i32 2764765095, ; 393: Microsoft.Maui.dll => 0xa4caf7a7 => 127
	i32 2765824710, ; 394: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 264
	i32 2778768386, ; 395: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 169
	i32 2785988530, ; 396: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 37
	i32 2801831435, ; 397: Microsoft.Maui.Graphics => 0xa7008e0b => 129
	i32 2803228030, ; 398: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 284
	i32 2810250172, ; 399: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 151
	i32 2819470561, ; 400: System.Xml.dll => 0xa80db4e1 => 286
	i32 2833784645, ; 401: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 68
	i32 2841355853, ; 402: System.Security.Permissions => 0xa95ba64d => 144
	i32 2850549256, ; 403: Microsoft.AspNetCore.Http.Features => 0xa9e7ee08 => 66
	i32 2853208004, ; 404: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 169
	i32 2861189240, ; 405: Microsoft.Maui.Essentials => 0xaa8a4878 => 128
	i32 2867946736, ; 406: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 142
	i32 2873584175, ; 407: Microsoft.IdentityModel.Clients.ActiveDirectory.Platform.dll => 0xab476a2f => 117
	i32 2892341533, ; 408: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 53
	i32 2901442782, ; 409: System.Reflection => 0xacf080de => 240
	i32 2905242038, ; 410: mscorlib.dll => 0xad2a79b6 => 288
	i32 2909740682, ; 411: System.Private.CoreLib => 0xad6f1e8a => 290
	i32 2911054922, ; 412: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 103
	i32 2916838712, ; 413: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 170
	i32 2919462931, ; 414: System.Numerics.Vectors.dll => 0xae037813 => 229
	i32 2921417940, ; 415: System.Security.Cryptography.Xml => 0xae214cd4 => 143
	i32 2930358886, ; 416: Microsoft.AspNetCore.DataProtection.Abstractions.dll => 0xaea9ba66 => 58
	i32 2940926066, ; 417: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 195
	i32 2942453041, ; 418: System.Xml.XPath.XDocument => 0xaf624531 => 284
	i32 2944313911, ; 419: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 135
	i32 2959614098, ; 420: System.ComponentModel.dll => 0xb0682092 => 188
	i32 2968338931, ; 421: System.Security.Principal.Windows => 0xb0ed41f3 => 263
	i32 2972252294, ; 422: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 256
	i32 2978368250, ; 423: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0xb1864afa => 60
	i32 2978675010, ; 424: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 155
	i32 2996646946, ; 425: Microsoft.AspNetCore.Http => 0xb29d3422 => 63
	i32 3012788804, ; 426: System.Configuration.ConfigurationManager => 0xb3938244 => 135
	i32 3023511517, ; 427: ru\Microsoft.Data.SqlClient.resources => 0xb4371fdd => 7
	i32 3033331042, ; 428: Microsoft.AspNetCore.Authentication.Core.dll => 0xb4ccf562 => 49
	i32 3033605958, ; 429: System.Memory.Data.dll => 0xb4d12746 => 139
	i32 3036999524, ; 430: Microsoft.AspNetCore.Http.Extensions => 0xb504ef64 => 65
	i32 3038032645, ; 431: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 44
	i32 3050706616, ; 432: Microsoft.AspNetCore.Mvc.Razor.Extensions => 0xb5d616b8 => 74
	i32 3053864966, ; 433: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 17
	i32 3057625584, ; 434: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 162
	i32 3059408633, ; 435: Mono.Android.Runtime => 0xb65adef9 => 292
	i32 3059793426, ; 436: System.ComponentModel.Primitives => 0xb660be12 => 186
	i32 3069363400, ; 437: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 93
	i32 3075834255, ; 438: System.Threading.Tasks => 0xb755818f => 273
	i32 3084678329, ; 439: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 123
	i32 3090735792, ; 440: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 261
	i32 3093090641, ; 441: Microsoft.Extensions.WebEncoders.dll => 0xb85cd151 => 113
	i32 3099732863, ; 442: System.Security.Claims.dll => 0xb8c22b7f => 255
	i32 3103600923, ; 443: System.Formats.Asn1 => 0xb8fd311b => 202
	i32 3111772706, ; 444: System.Runtime.Serialization => 0xb979e222 => 252
	i32 3113762169, ; 445: Microsoft.AspNetCore.Routing.Abstractions => 0xb9983d79 => 82
	i32 3121463068, ; 446: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 206
	i32 3124832203, ; 447: System.Threading.Tasks.Extensions => 0xba4127cb => 271
	i32 3132293585, ; 448: System.Security.AccessControl => 0xbab301d1 => 254
	i32 3147165239, ; 449: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 199
	i32 3151576809, ; 450: Microsoft.AspNetCore.Mvc.Core => 0xbbd93ee9 => 70
	i32 3155681111, ; 451: Microsoft.AspNetCore.DataProtection => 0xbc17df57 => 57
	i32 3159123045, ; 452: System.Reflection.Primitives.dll => 0xbc4c6465 => 239
	i32 3160747431, ; 453: System.IO.MemoryMappedFiles => 0xbc652da7 => 210
	i32 3178803400, ; 454: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 163
	i32 3195844289, ; 455: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 93
	i32 3213246214, ; 456: System.Security.Permissions.dll => 0xbf863f06 => 144
	i32 3220365878, ; 457: System.Threading => 0xbff2e236 => 277
	i32 3228018376, ; 458: Microsoft.AspNetCore.ResponseCaching.Abstractions.dll => 0xc067a6c8 => 80
	i32 3258312781, ; 459: Xamarin.AndroidX.CardView => 0xc235e84d => 149
	i32 3265893370, ; 460: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 271
	i32 3279906254, ; 461: Microsoft.Win32.Registry.dll => 0xc37f65ce => 177
	i32 3280506390, ; 462: System.ComponentModel.Annotations.dll => 0xc3888e16 => 185
	i32 3290767353, ; 463: System.Security.Cryptography.Encoding => 0xc4251ff9 => 259
	i32 3299363146, ; 464: System.Text.Encoding => 0xc4a8494a => 266
	i32 3300764913, ; 465: Microsoft.AspNetCore.WebUtilities => 0xc4bdacf1 => 83
	i32 3305363605, ; 466: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 17
	i32 3312457198, ; 467: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 119
	i32 3316684772, ; 468: System.Net.Requests.dll => 0xc5b097e4 => 221
	i32 3317135071, ; 469: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 154
	i32 3343947874, ; 470: fr\Microsoft.Data.SqlClient.resources => 0xc7509862 => 2
	i32 3346324047, ; 471: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 164
	i32 3357674450, ; 472: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 34
	i32 3358191349, ; 473: Microsoft.Azure.Services.AppAuthentication => 0xc829eef5 => 86
	i32 3358260929, ; 474: System.Text.Json => 0xc82afec1 => 268
	i32 3362522851, ; 475: Xamarin.AndroidX.Core => 0xc86c06e3 => 152
	i32 3366347497, ; 476: Java.Interop => 0xc8a662e9 => 291
	i32 3374879918, ; 477: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 121
	i32 3374999561, ; 478: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 166
	i32 3381016424, ; 479: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 13
	i32 3395150330, ; 480: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 242
	i32 3406629867, ; 481: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 101
	i32 3428513518, ; 482: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 97
	i32 3429136800, ; 483: System.Xml => 0xcc6479a0 => 286
	i32 3430777524, ; 484: netstandard => 0xcc7d82b4 => 289
	i32 3458724246, ; 485: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 32
	i32 3471940407, ; 486: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 187
	i32 3476120550, ; 487: Mono.Android => 0xcf3163e6 => 293
	i32 3484440000, ; 488: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 33
	i32 3485117614, ; 489: System.Text.Json.dll => 0xcfbaacae => 268
	i32 3500000672, ; 490: Microsoft.JSInterop => 0xd09dc5a0 => 124
	i32 3509114376, ; 491: System.Xml.Linq => 0xd128d608 => 281
	i32 3539954161, ; 492: System.Net.HttpListener => 0xd2ff69f1 => 217
	i32 3545306353, ; 493: Microsoft.Data.SqlClient => 0xd35114f1 => 91
	i32 3555084973, ; 494: de\Microsoft.Data.SqlClient.resources => 0xd3e64aad => 0
	i32 3558648585, ; 495: System.ClientModel => 0xd41cab09 => 134
	i32 3560100363, ; 496: System.Threading.Timer => 0xd432d20b => 276
	i32 3561949811, ; 497: Azure.Core.dll => 0xd44f0a73 => 45
	i32 3570554715, ; 498: System.IO.FileSystem.AccessControl => 0xd4d2575b => 206
	i32 3570608287, ; 499: System.Runtime.Caching.dll => 0xd4d3289f => 140
	i32 3580758918, ; 500: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 41
	i32 3592228221, ; 501: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 43
	i32 3592435036, ; 502: Microsoft.Extensions.Localization.Abstractions => 0xd620355c => 107
	i32 3598340787, ; 503: System.Net.WebSockets.Client => 0xd67a52b3 => 227
	i32 3608519521, ; 504: System.Linq.dll => 0xd715a361 => 214
	i32 3624195450, ; 505: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 244
	i32 3638274909, ; 506: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 207
	i32 3641597786, ; 507: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 158
	i32 3643446276, ; 508: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 38
	i32 3643854240, ; 509: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 163
	i32 3657292374, ; 510: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 96
	i32 3658129364, ; 511: Microsoft.IdentityModel.Clients.ActiveDirectory.Platform => 0xda0a9fd4 => 117
	i32 3660523487, ; 512: System.Net.NetworkInformation => 0xda2f27df => 219
	i32 3672681054, ; 513: Mono.Android.dll => 0xdae8aa5e => 293
	i32 3682565725, ; 514: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 148
	i32 3700591436, ; 515: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 116
	i32 3706221932, ; 516: Microsoft.IdentityModel.Clients.ActiveDirectory => 0xdce8756c => 118
	i32 3724971120, ; 517: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 162
	i32 3732100267, ; 518: System.Net.NameResolution => 0xde7354ab => 218
	i32 3732214720, ; 519: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 68
	i32 3748608112, ; 520: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 193
	i32 3751619990, ; 521: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 13
	i32 3765508441, ; 522: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 110
	i32 3776403777, ; 523: Microsoft.Extensions.Localization.Abstractions.dll => 0xe1175941 => 107
	i32 3786282454, ; 524: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 150
	i32 3792276235, ; 525: System.Collections.NonGeneric => 0xe2098b0b => 182
	i32 3802395368, ; 526: System.Collections.Specialized.dll => 0xe2a3f2e8 => 183
	i32 3807198597, ; 527: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 141
	i32 3823082795, ; 528: System.Security.Cryptography.dll => 0xe3df9d2b => 262
	i32 3829324472, ; 529: Microsoft.AspNetCore.Mvc.Razor.Extensions.dll => 0xe43edab8 => 74
	i32 3834665012, ; 530: System.Data.SqlClient => 0xe4905834 => 136
	i32 3841636137, ; 531: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 98
	i32 3848348906, ; 532: es\Microsoft.Data.SqlClient.resources => 0xe56124ea => 1
	i32 3849253459, ; 533: System.Runtime.InteropServices.dll => 0xe56ef253 => 245
	i32 3870376305, ; 534: System.Net.HttpListener.dll => 0xe6b14171 => 217
	i32 3875112723, ; 535: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 259
	i32 3885497537, ; 536: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 226
	i32 3896106733, ; 537: System.Collections.Concurrent.dll => 0xe839deed => 180
	i32 3896760992, ; 538: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 152
	i32 3898971068, ; 539: Microsoft.Extensions.Localization.dll => 0xe86593bc => 106
	i32 3920221145, ; 540: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 29
	i32 3928044579, ; 541: System.Xml.ReaderWriter => 0xea213423 => 282
	i32 3931092270, ; 542: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 165
	i32 3948965564, ; 543: it\Microsoft.Data.SqlClient.resources.dll => 0xeb606ebc => 3
	i32 3953953790, ; 544: System.Text.Encoding.CodePages => 0xebac8bfe => 264
	i32 3954195687, ; 545: Microsoft.Extensions.Localization => 0xebb03ce7 => 106
	i32 3955647286, ; 546: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 146
	i32 4003436829, ; 547: System.Diagnostics.Process.dll => 0xee9f991d => 194
	i32 4025784931, ; 548: System.Memory => 0xeff49a63 => 215
	i32 4026527876, ; 549: Microsoft.CodeAnalysis.CSharp => 0xeffff084 => 89
	i32 4029710644, ; 550: Microsoft.AspNetCore.Razor.Runtime.dll => 0xf0308134 => 79
	i32 4044155772, ; 551: Microsoft.Net.Http.Headers.dll => 0xf10ceb7c => 130
	i32 4046471985, ; 552: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 126
	i32 4054681211, ; 553: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 235
	i32 4068434129, ; 554: System.Private.Xml.Linq.dll => 0xf27f60d1 => 233
	i32 4073602200, ; 555: System.Threading.dll => 0xf2ce3c98 => 277
	i32 4078967171, ; 556: Microsoft.Extensions.Hosting.Abstractions.dll => 0xf3201983 => 105
	i32 4091086043, ; 557: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 15
	i32 4094352644, ; 558: Microsoft.Maui.Essentials.dll => 0xf40add04 => 128
	i32 4099507663, ; 559: System.Drawing.dll => 0xf45985cf => 201
	i32 4100113165, ; 560: System.Private.Uri => 0xf462c30d => 232
	i32 4101842092, ; 561: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 94
	i32 4103439459, ; 562: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 39
	i32 4126470640, ; 563: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 97
	i32 4127667938, ; 564: System.IO.FileSystem.Watcher => 0xf60736e2 => 208
	i32 4130442656, ; 565: System.AppContext => 0xf6318da0 => 178
	i32 4141580284, ; 566: Microsoft.AspNetCore.Authorization.Policy => 0xf6db7ffc => 51
	i32 4147896353, ; 567: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 235
	i32 4150914736, ; 568: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 39
	i32 4151237749, ; 569: System.Core => 0xf76edc75 => 190
	i32 4159265925, ; 570: System.Xml.XmlSerializer => 0xf7e95c85 => 285
	i32 4164802419, ; 571: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 208
	i32 4169285646, ; 572: Microsoft.AspNetCore.Mvc.ViewFeatures.dll => 0xf882400e => 76
	i32 4180982454, ; 573: Microsoft.AspNetCore.Diagnostics.Abstractions => 0xf934bab6 => 59
	i32 4181436372, ; 574: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 250
	i32 4182413190, ; 575: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 160
	i32 4196171640, ; 576: Microsoft.CodeAnalysis => 0xfa1c7f78 => 88
	i32 4196529839, ; 577: System.Net.WebClient.dll => 0xfa21f6af => 225
	i32 4213026141, ; 578: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 193
	i32 4245218886, ; 579: Microsoft.CodeAnalysis.CSharp.dll => 0xfd08e646 => 89
	i32 4249188766, ; 580: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 28
	i32 4258913604, ; 581: Microsoft.AspNetCore.Mvc.DataAnnotations => 0xfdd9dd44 => 71
	i32 4260525087, ; 582: System.Buffers => 0xfdf2741f => 179
	i32 4263231520, ; 583: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 138
	i32 4271975918, ; 584: Microsoft.Maui.Controls.dll => 0xfea12dee => 125
	i32 4274976490, ; 585: System.Runtime.Numerics => 0xfecef6ea => 247
	i32 4292120959, ; 586: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 160
	i32 4294648842 ; 587: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 102
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [588 x i32] [
	i32 219, ; 0
	i32 174, ; 1
	i32 218, ; 2
	i32 99, ; 3
	i32 10, ; 4
	i32 132, ; 5
	i32 228, ; 6
	i32 19, ; 7
	i32 274, ; 8
	i32 3, ; 9
	i32 4, ; 10
	i32 195, ; 11
	i32 43, ; 12
	i32 260, ; 13
	i32 129, ; 14
	i32 85, ; 15
	i32 56, ; 16
	i32 27, ; 17
	i32 86, ; 18
	i32 245, ; 19
	i32 270, ; 20
	i32 42, ; 21
	i32 35, ; 22
	i32 226, ; 23
	i32 260, ; 24
	i32 185, ; 25
	i32 150, ; 26
	i32 83, ; 27
	i32 73, ; 28
	i32 168, ; 29
	i32 279, ; 30
	i32 188, ; 31
	i32 148, ; 32
	i32 192, ; 33
	i32 175, ; 34
	i32 203, ; 35
	i32 236, ; 36
	i32 79, ; 37
	i32 52, ; 38
	i32 8, ; 39
	i32 5, ; 40
	i32 276, ; 41
	i32 48, ; 42
	i32 40, ; 43
	i32 145, ; 44
	i32 18, ; 45
	i32 131, ; 46
	i32 47, ; 47
	i32 71, ; 48
	i32 157, ; 49
	i32 80, ; 50
	i32 211, ; 51
	i32 278, ; 52
	i32 223, ; 53
	i32 274, ; 54
	i32 81, ; 55
	i32 215, ; 56
	i32 275, ; 57
	i32 44, ; 58
	i32 38, ; 59
	i32 184, ; 60
	i32 156, ; 61
	i32 261, ; 62
	i32 280, ; 63
	i32 250, ; 64
	i32 288, ; 65
	i32 287, ; 66
	i32 116, ; 67
	i32 16, ; 68
	i32 61, ; 69
	i32 230, ; 70
	i32 112, ; 71
	i32 2, ; 72
	i32 37, ; 73
	i32 108, ; 74
	i32 209, ; 75
	i32 243, ; 76
	i32 251, ; 77
	i32 4, ; 78
	i32 87, ; 79
	i32 78, ; 80
	i32 84, ; 81
	i32 84, ; 82
	i32 102, ; 83
	i32 257, ; 84
	i32 256, ; 85
	i32 154, ; 86
	i32 29, ; 87
	i32 267, ; 88
	i32 180, ; 89
	i32 222, ; 90
	i32 85, ; 91
	i32 281, ; 92
	i32 141, ; 93
	i32 246, ; 94
	i32 134, ; 95
	i32 51, ; 96
	i32 73, ; 97
	i32 77, ; 98
	i32 221, ; 99
	i32 211, ; 100
	i32 136, ; 101
	i32 205, ; 102
	i32 35, ; 103
	i32 111, ; 104
	i32 55, ; 105
	i32 191, ; 106
	i32 76, ; 107
	i32 232, ; 108
	i32 204, ; 109
	i32 20, ; 110
	i32 77, ; 111
	i32 203, ; 112
	i32 34, ; 113
	i32 186, ; 114
	i32 210, ; 115
	i32 31, ; 116
	i32 90, ; 117
	i32 132, ; 118
	i32 8, ; 119
	i32 24, ; 120
	i32 157, ; 121
	i32 78, ; 122
	i32 199, ; 123
	i32 283, ; 124
	i32 231, ; 125
	i32 197, ; 126
	i32 33, ; 127
	i32 184, ; 128
	i32 209, ; 129
	i32 104, ; 130
	i32 62, ; 131
	i32 167, ; 132
	i32 201, ; 133
	i32 98, ; 134
	i32 146, ; 135
	i32 200, ; 136
	i32 14, ; 137
	i32 213, ; 138
	i32 159, ; 139
	i32 62, ; 140
	i32 115, ; 141
	i32 187, ; 142
	i32 172, ; 143
	i32 137, ; 144
	i32 287, ; 145
	i32 92, ; 146
	i32 36, ; 147
	i32 105, ; 148
	i32 48, ; 149
	i32 30, ; 150
	i32 26, ; 151
	i32 91, ; 152
	i32 32, ; 153
	i32 100, ; 154
	i32 164, ; 155
	i32 133, ; 156
	i32 94, ; 157
	i32 194, ; 158
	i32 130, ; 159
	i32 75, ; 160
	i32 61, ; 161
	i32 177, ; 162
	i32 12, ; 163
	i32 81, ; 164
	i32 155, ; 165
	i32 21, ; 166
	i32 231, ; 167
	i32 214, ; 168
	i32 249, ; 169
	i32 41, ; 170
	i32 212, ; 171
	i32 42, ; 172
	i32 167, ; 173
	i32 241, ; 174
	i32 151, ; 175
	i32 248, ; 176
	i32 174, ; 177
	i32 242, ; 178
	i32 10, ; 179
	i32 202, ; 180
	i32 197, ; 181
	i32 101, ; 182
	i32 243, ; 183
	i32 222, ; 184
	i32 138, ; 185
	i32 16, ; 186
	i32 181, ; 187
	i32 205, ; 188
	i32 147, ; 189
	i32 112, ; 190
	i32 181, ; 191
	i32 204, ; 192
	i32 176, ; 193
	i32 119, ; 194
	i32 104, ; 195
	i32 40, ; 196
	i32 196, ; 197
	i32 269, ; 198
	i32 55, ; 199
	i32 237, ; 200
	i32 140, ; 201
	i32 207, ; 202
	i32 249, ; 203
	i32 46, ; 204
	i32 252, ; 205
	i32 9, ; 206
	i32 225, ; 207
	i32 227, ; 208
	i32 161, ; 209
	i32 170, ; 210
	i32 47, ; 211
	i32 122, ; 212
	i32 153, ; 213
	i32 216, ; 214
	i32 269, ; 215
	i32 54, ; 216
	i32 253, ; 217
	i32 171, ; 218
	i32 220, ; 219
	i32 228, ; 220
	i32 262, ; 221
	i32 238, ; 222
	i32 258, ; 223
	i32 192, ; 224
	i32 240, ; 225
	i32 149, ; 226
	i32 11, ; 227
	i32 278, ; 228
	i32 176, ; 229
	i32 53, ; 230
	i32 198, ; 231
	i32 237, ; 232
	i32 168, ; 233
	i32 108, ; 234
	i32 190, ; 235
	i32 292, ; 236
	i32 27, ; 237
	i32 156, ; 238
	i32 19, ; 239
	i32 114, ; 240
	i32 87, ; 241
	i32 1, ; 242
	i32 161, ; 243
	i32 172, ; 244
	i32 171, ; 245
	i32 165, ; 246
	i32 66, ; 247
	i32 56, ; 248
	i32 265, ; 249
	i32 248, ; 250
	i32 7, ; 251
	i32 109, ; 252
	i32 36, ; 253
	i32 213, ; 254
	i32 239, ; 255
	i32 122, ; 256
	i32 18, ; 257
	i32 238, ; 258
	i32 12, ; 259
	i32 92, ; 260
	i32 241, ; 261
	i32 182, ; 262
	i32 72, ; 263
	i32 64, ; 264
	i32 233, ; 265
	i32 23, ; 266
	i32 58, ; 267
	i32 59, ; 268
	i32 95, ; 269
	i32 123, ; 270
	i32 15, ; 271
	i32 179, ; 272
	i32 159, ; 273
	i32 115, ; 274
	i32 234, ; 275
	i32 158, ; 276
	i32 14, ; 277
	i32 133, ; 278
	i32 198, ; 279
	i32 103, ; 280
	i32 64, ; 281
	i32 113, ; 282
	i32 253, ; 283
	i32 143, ; 284
	i32 229, ; 285
	i32 67, ; 286
	i32 72, ; 287
	i32 189, ; 288
	i32 6, ; 289
	i32 9, ; 290
	i32 183, ; 291
	i32 285, ; 292
	i32 127, ; 293
	i32 22, ; 294
	i32 111, ; 295
	i32 70, ; 296
	i32 109, ; 297
	i32 230, ; 298
	i32 99, ; 299
	i32 173, ; 300
	i32 216, ; 301
	i32 110, ; 302
	i32 24, ; 303
	i32 272, ; 304
	i32 6, ; 305
	i32 63, ; 306
	i32 121, ; 307
	i32 254, ; 308
	i32 96, ; 309
	i32 166, ; 310
	i32 69, ; 311
	i32 57, ; 312
	i32 224, ; 313
	i32 28, ; 314
	i32 290, ; 315
	i32 5, ; 316
	i32 272, ; 317
	i32 69, ; 318
	i32 244, ; 319
	i32 279, ; 320
	i32 220, ; 321
	i32 22, ; 322
	i32 282, ; 323
	i32 120, ; 324
	i32 95, ; 325
	i32 258, ; 326
	i32 263, ; 327
	i32 23, ; 328
	i32 280, ; 329
	i32 52, ; 330
	i32 90, ; 331
	i32 20, ; 332
	i32 189, ; 333
	i32 124, ; 334
	i32 75, ; 335
	i32 266, ; 336
	i32 49, ; 337
	i32 224, ; 338
	i32 289, ; 339
	i32 291, ; 340
	i32 125, ; 341
	i32 223, ; 342
	i32 178, ; 343
	i32 26, ; 344
	i32 137, ; 345
	i32 67, ; 346
	i32 50, ; 347
	i32 236, ; 348
	i32 0, ; 349
	i32 21, ; 350
	i32 175, ; 351
	i32 267, ; 352
	i32 25, ; 353
	i32 265, ; 354
	i32 275, ; 355
	i32 100, ; 356
	i32 82, ; 357
	i32 30, ; 358
	i32 60, ; 359
	i32 173, ; 360
	i32 234, ; 361
	i32 153, ; 362
	i32 25, ; 363
	i32 196, ; 364
	i32 139, ; 365
	i32 65, ; 366
	i32 120, ; 367
	i32 45, ; 368
	i32 118, ; 369
	i32 142, ; 370
	i32 246, ; 371
	i32 283, ; 372
	i32 200, ; 373
	i32 191, ; 374
	i32 46, ; 375
	i32 251, ; 376
	i32 54, ; 377
	i32 212, ; 378
	i32 273, ; 379
	i32 255, ; 380
	i32 257, ; 381
	i32 88, ; 382
	i32 247, ; 383
	i32 145, ; 384
	i32 270, ; 385
	i32 50, ; 386
	i32 147, ; 387
	i32 114, ; 388
	i32 11, ; 389
	i32 31, ; 390
	i32 131, ; 391
	i32 126, ; 392
	i32 127, ; 393
	i32 264, ; 394
	i32 169, ; 395
	i32 37, ; 396
	i32 129, ; 397
	i32 284, ; 398
	i32 151, ; 399
	i32 286, ; 400
	i32 68, ; 401
	i32 144, ; 402
	i32 66, ; 403
	i32 169, ; 404
	i32 128, ; 405
	i32 142, ; 406
	i32 117, ; 407
	i32 53, ; 408
	i32 240, ; 409
	i32 288, ; 410
	i32 290, ; 411
	i32 103, ; 412
	i32 170, ; 413
	i32 229, ; 414
	i32 143, ; 415
	i32 58, ; 416
	i32 195, ; 417
	i32 284, ; 418
	i32 135, ; 419
	i32 188, ; 420
	i32 263, ; 421
	i32 256, ; 422
	i32 60, ; 423
	i32 155, ; 424
	i32 63, ; 425
	i32 135, ; 426
	i32 7, ; 427
	i32 49, ; 428
	i32 139, ; 429
	i32 65, ; 430
	i32 44, ; 431
	i32 74, ; 432
	i32 17, ; 433
	i32 162, ; 434
	i32 292, ; 435
	i32 186, ; 436
	i32 93, ; 437
	i32 273, ; 438
	i32 123, ; 439
	i32 261, ; 440
	i32 113, ; 441
	i32 255, ; 442
	i32 202, ; 443
	i32 252, ; 444
	i32 82, ; 445
	i32 206, ; 446
	i32 271, ; 447
	i32 254, ; 448
	i32 199, ; 449
	i32 70, ; 450
	i32 57, ; 451
	i32 239, ; 452
	i32 210, ; 453
	i32 163, ; 454
	i32 93, ; 455
	i32 144, ; 456
	i32 277, ; 457
	i32 80, ; 458
	i32 149, ; 459
	i32 271, ; 460
	i32 177, ; 461
	i32 185, ; 462
	i32 259, ; 463
	i32 266, ; 464
	i32 83, ; 465
	i32 17, ; 466
	i32 119, ; 467
	i32 221, ; 468
	i32 154, ; 469
	i32 2, ; 470
	i32 164, ; 471
	i32 34, ; 472
	i32 86, ; 473
	i32 268, ; 474
	i32 152, ; 475
	i32 291, ; 476
	i32 121, ; 477
	i32 166, ; 478
	i32 13, ; 479
	i32 242, ; 480
	i32 101, ; 481
	i32 97, ; 482
	i32 286, ; 483
	i32 289, ; 484
	i32 32, ; 485
	i32 187, ; 486
	i32 293, ; 487
	i32 33, ; 488
	i32 268, ; 489
	i32 124, ; 490
	i32 281, ; 491
	i32 217, ; 492
	i32 91, ; 493
	i32 0, ; 494
	i32 134, ; 495
	i32 276, ; 496
	i32 45, ; 497
	i32 206, ; 498
	i32 140, ; 499
	i32 41, ; 500
	i32 43, ; 501
	i32 107, ; 502
	i32 227, ; 503
	i32 214, ; 504
	i32 244, ; 505
	i32 207, ; 506
	i32 158, ; 507
	i32 38, ; 508
	i32 163, ; 509
	i32 96, ; 510
	i32 117, ; 511
	i32 219, ; 512
	i32 293, ; 513
	i32 148, ; 514
	i32 116, ; 515
	i32 118, ; 516
	i32 162, ; 517
	i32 218, ; 518
	i32 68, ; 519
	i32 193, ; 520
	i32 13, ; 521
	i32 110, ; 522
	i32 107, ; 523
	i32 150, ; 524
	i32 182, ; 525
	i32 183, ; 526
	i32 141, ; 527
	i32 262, ; 528
	i32 74, ; 529
	i32 136, ; 530
	i32 98, ; 531
	i32 1, ; 532
	i32 245, ; 533
	i32 217, ; 534
	i32 259, ; 535
	i32 226, ; 536
	i32 180, ; 537
	i32 152, ; 538
	i32 106, ; 539
	i32 29, ; 540
	i32 282, ; 541
	i32 165, ; 542
	i32 3, ; 543
	i32 264, ; 544
	i32 106, ; 545
	i32 146, ; 546
	i32 194, ; 547
	i32 215, ; 548
	i32 89, ; 549
	i32 79, ; 550
	i32 130, ; 551
	i32 126, ; 552
	i32 235, ; 553
	i32 233, ; 554
	i32 277, ; 555
	i32 105, ; 556
	i32 15, ; 557
	i32 128, ; 558
	i32 201, ; 559
	i32 232, ; 560
	i32 94, ; 561
	i32 39, ; 562
	i32 97, ; 563
	i32 208, ; 564
	i32 178, ; 565
	i32 51, ; 566
	i32 235, ; 567
	i32 39, ; 568
	i32 190, ; 569
	i32 285, ; 570
	i32 208, ; 571
	i32 76, ; 572
	i32 59, ; 573
	i32 250, ; 574
	i32 160, ; 575
	i32 88, ; 576
	i32 225, ; 577
	i32 193, ; 578
	i32 89, ; 579
	i32 28, ; 580
	i32 71, ; 581
	i32 179, ; 582
	i32 138, ; 583
	i32 125, ; 584
	i32 247, ; 585
	i32 160, ; 586
	i32 102 ; 587
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
