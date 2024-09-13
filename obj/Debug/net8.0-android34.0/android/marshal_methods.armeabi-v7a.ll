; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [412 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [818 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 7143582, ; 1: Scanner => 0x6d009e => 0
	i32 10166715, ; 2: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 3: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 26230656, ; 4: Microsoft.Extensions.DependencyModel => 0x1903f80 => 232
	i32 32687329, ; 5: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 322
	i32 34715100, ; 6: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 356
	i32 34839235, ; 7: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 38948123, ; 8: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 374
	i32 39109920, ; 9: Newtonsoft.Json.dll => 0x254c520 => 267
	i32 39485524, ; 10: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42244203, ; 11: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 383
	i32 42639949, ; 12: System.Threading.Thread => 0x28aa24d => 145
	i32 57725457, ; 13: it\Microsoft.Data.SqlClient.resources => 0x370d211 => 367
	i32 57727992, ; 14: ja\Microsoft.Data.SqlClient.resources => 0x370dbf8 => 368
	i32 66541672, ; 15: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 16: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 407
	i32 68219467, ; 17: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 18: Microsoft.Maui.Graphics.dll => 0x44bb714 => 264
	i32 76734228, ; 19: Microsoft.Azure.ServiceBus.dll => 0x492df14 => 215
	i32 82292897, ; 20: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83768722, ; 21: Microsoft.AspNetCore.Cryptography.Internal => 0x4fe3592 => 186
	i32 83839681, ; 22: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 391
	i32 100385486, ; 23: Microsoft.Azure.Services.AppAuthentication.dll => 0x5fbc2ce => 216
	i32 101534019, ; 24: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 340
	i32 117431740, ; 25: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 26: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 340
	i32 122350210, ; 27: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 28: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 360
	i32 136584136, ; 29: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 406
	i32 140062828, ; 30: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 399
	i32 142721839, ; 31: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 32: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 33: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 34: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 296
	i32 176265551, ; 35: System.ServiceProcess => 0xa81994f => 132
	i32 176714968, ; 36: Microsoft.AspNetCore.WebUtilities.dll => 0xa8874d8 => 213
	i32 179062648, ; 37: Microsoft.AspNetCore.Mvc.Razor => 0xaac4778 => 203
	i32 182336117, ; 38: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 342
	i32 184328833, ; 39: System.ValueTuple.dll => 0xafca281 => 151
	i32 205061960, ; 40: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 41: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 294
	i32 220171995, ; 42: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 43: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 316
	i32 230752869, ; 44: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 45: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 46: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 47: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 252019042, ; 48: Microsoft.AspNetCore.Razor.Runtime => 0xf058162 => 209
	i32 254259026, ; 49: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 181
	i32 261689757, ; 50: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 299
	i32 264223668, ; 51: zh-Hans\Microsoft.Data.SqlClient.resources => 0xfbfbbb4 => 372
	i32 272650997, ; 52: ko\Microsoft.Data.SqlClient.resources.dll => 0x104052f5 => 369
	i32 276479776, ; 53: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 54: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 318
	i32 280482487, ; 55: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 315
	i32 291076382, ; 56: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 57: System.Net.Ping.dll => 0x11d123fd => 69
	i32 300686228, ; 58: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0x11ec1b94 => 177
	i32 317674968, ; 59: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 404
	i32 318968648, ; 60: Xamarin.AndroidX.Activity.dll => 0x13031348 => 285
	i32 321597661, ; 61: System.Numerics => 0x132b30dd => 83
	i32 321963286, ; 62: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 382
	i32 330147069, ; 63: Microsoft.SqlServer.Server => 0x13ada4fd => 266
	i32 336788001, ; 64: Microsoft.AspNetCore.Antiforgery => 0x1412fa21 => 176
	i32 338324308, ; 65: Microsoft.AspNetCore.Mvc.DataAnnotations.dll => 0x142a6b54 => 201
	i32 342366114, ; 66: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 317
	i32 344827588, ; 67: Microsoft.AspNetCore.ResponseCaching.Abstractions => 0x148da6c4 => 210
	i32 360082299, ; 68: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 69: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 70: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 71: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 72: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 384051609, ; 73: Microsoft.AspNetCore.Routing.dll => 0x16e42999 => 211
	i32 385762202, ; 74: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 75: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 76: _Microsoft.Android.Resource.Designer => 0x17969339 => 408
	i32 403441872, ; 77: WindowsBase => 0x180c08d0 => 165
	i32 409257351, ; 78: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 402
	i32 441335492, ; 79: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 300
	i32 442565967, ; 80: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 81: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 313
	i32 451504562, ; 82: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 83: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 84: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 85: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 86: System.dll => 0x1bff388e => 164
	i32 476646585, ; 87: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 315
	i32 485463106, ; 88: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 250
	i32 486930444, ; 89: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 328
	i32 489220957, ; 90: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 380
	i32 490002678, ; 91: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x1d34d8f6 => 191
	i32 498788369, ; 92: System.ObjectModel => 0x1dbae811 => 84
	i32 513247710, ; 93: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 246
	i32 526420162, ; 94: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 95: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 360
	i32 530272170, ; 96: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 535369068, ; 97: fr\Microsoft.Data.SqlClient.resources.dll => 0x1fe9156c => 366
	i32 538707440, ; 98: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 401
	i32 539058512, ; 99: Microsoft.Extensions.Logging => 0x20216150 => 241
	i32 540030774, ; 100: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 101: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 102: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 547209430, ; 103: ja\Microsoft.Data.SqlClient.resources.dll => 0x209dc0d6 => 368
	i32 548916678, ; 104: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 217
	i32 549171840, ; 105: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 106: Jsr305Binding => 0x213954e7 => 353
	i32 559063233, ; 107: Microsoft.AspNetCore.Razor.Language.dll => 0x2152a0c1 => 208
	i32 561442103, ; 108: Microsoft.Azure.Amqp.dll => 0x2176ed37 => 214
	i32 569127776, ; 109: Microsoft.Azure.Amqp => 0x21ec3360 => 214
	i32 569601784, ; 110: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 351
	i32 571435654, ; 111: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 235
	i32 577335427, ; 112: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 601371474, ; 113: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 114: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 115: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 116: Xamarin.AndroidX.CustomView => 0x2568904f => 305
	i32 627931235, ; 117: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 393
	i32 639843206, ; 118: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 311
	i32 643868501, ; 119: System.Net => 0x2660a755 => 81
	i32 662205335, ; 120: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 121: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 347
	i32 666292255, ; 122: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 292
	i32 672442732, ; 123: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 124: System.Net.Security => 0x28bdabca => 73
	i32 689062853, ; 125: Microsoft.Azure.ServiceBus => 0x291243c5 => 215
	i32 690569205, ; 126: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 127: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 362
	i32 693804605, ; 128: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 129: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 130: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 357
	i32 700358131, ; 131: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 709152836, ; 132: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 277
	i32 720511267, ; 133: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 361
	i32 722857257, ; 134: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 723796036, ; 135: System.ClientModel.dll => 0x2b244044 => 269
	i32 724146010, ; 136: Microsoft.AspNetCore.Authorization.Policy.dll => 0x2b29975a => 180
	i32 730737221, ; 137: Microsoft.AspNetCore.Mvc.Razor.dll => 0x2b8e2a45 => 203
	i32 734129105, ; 138: Microsoft.AspNetCore.Razor => 0x2bc1ebd1 => 207
	i32 735137430, ; 139: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 140: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 141: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 282
	i32 759454413, ; 142: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 143: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775189201, ; 144: System.Data.SqlClient.dll => 0x2e3472d1 => 271
	i32 775507847, ; 145: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 146: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 399
	i32 789151979, ; 147: Microsoft.Extensions.Options => 0x2f0980eb => 245
	i32 790371945, ; 148: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 306
	i32 804008546, ; 149: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 185
	i32 804715423, ; 150: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 151: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 320
	i32 809499826, ; 152: Microsoft.AspNetCore.Mvc.ViewFeatures => 0x303ffcb2 => 206
	i32 823281589, ; 153: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 154: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 155: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 156: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 157: Xamarin.AndroidX.Print => 0x3246f6cd => 333
	i32 869139383, ; 158: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 384
	i32 872446091, ; 159: Microsoft.AspNetCore.Razor.dll => 0x3400788b => 207
	i32 873119928, ; 160: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 161: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 162: System.Net.Http.Json => 0x3463c971 => 63
	i32 880668424, ; 163: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 398
	i32 904024072, ; 164: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 165: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 918734561, ; 166: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 395
	i32 928116545, ; 167: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 356
	i32 940221205, ; 168: Microsoft.CodeAnalysis.Razor => 0x380aa315 => 220
	i32 952186615, ; 169: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 170: Newtonsoft.Json => 0x38f24a24 => 267
	i32 956528696, ; 171: zh-Hans\Microsoft.Data.SqlClient.resources.dll => 0x39037838 => 372
	i32 956575887, ; 172: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 361
	i32 961460050, ; 173: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 388
	i32 966729478, ; 174: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 354
	i32 967690846, ; 175: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 317
	i32 972467304, ; 176: Microsoft.AspNetCore.Razor.Language => 0x39f6ac68 => 208
	i32 975236339, ; 177: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 178: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 179: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 180: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 990727110, ; 181: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 397
	i32 992768348, ; 182: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 183: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 999186168, ; 184: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 237
	i32 1001831731, ; 185: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1009232667, ; 186: Microsoft.AspNetCore.Html.Abstractions.dll => 0x3c27ab1b => 192
	i32 1012816738, ; 187: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 337
	i32 1019214401, ; 188: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 189: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 231
	i32 1031528504, ; 190: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 355
	i32 1035644815, ; 191: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 290
	i32 1036536393, ; 192: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1043950537, ; 193: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 378
	i32 1044663988, ; 194: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 195: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 324
	i32 1054642859, ; 196: Microsoft.AspNetCore.Html.Abstractions => 0x3edc92ab => 192
	i32 1062017875, ; 197: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 249
	i32 1067306892, ; 198: GoogleGson => 0x3f9dcf8c => 175
	i32 1082857460, ; 199: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 200: Xamarin.Kotlin.StdLib => 0x409e66d8 => 358
	i32 1089913930, ; 201: System.Diagnostics.EventLog.dll => 0x40f6c44a => 272
	i32 1098259244, ; 202: System => 0x41761b2c => 164
	i32 1099692271, ; 203: Microsoft.DotNet.PlatformAbstractions => 0x418bf8ef => 222
	i32 1106973742, ; 204: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 228
	i32 1108272742, ; 205: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 400
	i32 1110309514, ; 206: Microsoft.Extensions.Hosting.Abstractions => 0x422dfa8a => 238
	i32 1112354281, ; 207: Microsoft.AspNetCore.Authentication.Abstractions => 0x424d2de9 => 177
	i32 1117529484, ; 208: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 394
	i32 1118262833, ; 209: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 390
	i32 1121599056, ; 210: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 323
	i32 1127624469, ; 211: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 243
	i32 1138436374, ; 212: Microsoft.Data.SqlClient.dll => 0x43db2916 => 221
	i32 1149092582, ; 213: Xamarin.AndroidX.Window => 0x447dc2e6 => 350
	i32 1168523401, ; 214: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 396
	i32 1170634674, ; 215: System.Web.dll => 0x45c677b2 => 153
	i32 1173126369, ; 216: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 233
	i32 1175144683, ; 217: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 346
	i32 1178241025, ; 218: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 331
	i32 1186231468, ; 219: Newtonsoft.Json.Bson.dll => 0x46b474ac => 268
	i32 1204270330, ; 220: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 292
	i32 1204575371, ; 221: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 224
	i32 1208641965, ; 222: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 223: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1220193633, ; 224: Microsoft.Net.Http.Headers => 0x48baad61 => 265
	i32 1224544870, ; 225: Microsoft.AspNetCore.Mvc.RazorPages.dll => 0x48fd1266 => 205
	i32 1236289705, ; 226: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x49b048a9 => 191
	i32 1243150071, ; 227: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 351
	i32 1253011324, ; 228: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 229: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 376
	i32 1264511973, ; 230: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 341
	i32 1267360935, ; 231: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 345
	i32 1267908789, ; 232: Microsoft.AspNetCore.Routing => 0x4b92c0b5 => 211
	i32 1273260888, ; 233: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 297
	i32 1275534314, ; 234: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 362
	i32 1278448581, ; 235: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 289
	i32 1293217323, ; 236: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 308
	i32 1308624726, ; 237: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 385
	i32 1309188875, ; 238: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 239: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 350
	i32 1324164729, ; 240: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 241: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1336711579, ; 242: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 405
	i32 1364015309, ; 243: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 244: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 406
	i32 1376866003, ; 245: Xamarin.AndroidX.SavedState => 0x52114ed3 => 337
	i32 1379779777, ; 246: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 247: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 248: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 301
	i32 1408764838, ; 249: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411008626, ; 250: Scanner.dll => 0x541a4872 => 0
	i32 1411638395, ; 251: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 252: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 253: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 374
	i32 1434145427, ; 254: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 255: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 354
	i32 1439761251, ; 256: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 257: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 258: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1454105418, ; 259: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 234
	i32 1457743152, ; 260: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 261: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1460893475, ; 262: System.IdentityModel.Tokens.Jwt => 0x57137723 => 273
	i32 1461004990, ; 263: es\Microsoft.Maui.Controls.resources => 0x57152abe => 380
	i32 1461234159, ; 264: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 265: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 266: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 267: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 291
	i32 1470490898, ; 268: Microsoft.Extensions.Primitives => 0x57a5e912 => 246
	i32 1479771757, ; 269: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 270: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 271: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 272: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 338
	i32 1498168481, ; 273: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 253
	i32 1521091094, ; 274: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 237
	i32 1526286932, ; 275: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 404
	i32 1536373174, ; 276: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 277: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 278: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1546581739, ; 279: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 185
	i32 1550322496, ; 280: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1565310744, ; 281: System.Runtime.Caching => 0x5d4cbf18 => 276
	i32 1565862583, ; 282: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 283: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 284: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 285: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582305585, ; 286: Azure.Identity => 0x5e501131 => 174
	i32 1582372066, ; 287: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 307
	i32 1592978981, ; 288: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1596263029, ; 289: zh-Hant\Microsoft.Data.SqlClient.resources => 0x5f250a75 => 373
	i32 1597949149, ; 290: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 355
	i32 1601112923, ; 291: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 292: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 293: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 294: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 327
	i32 1622358360, ; 295: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 296: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 349
	i32 1625077857, ; 297: Microsoft.AspNetCore.Antiforgery.dll => 0x60dcb861 => 176
	i32 1628113371, ; 298: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 256
	i32 1632842087, ; 299: Microsoft.Extensions.Configuration.Json => 0x61533167 => 229
	i32 1635184631, ; 300: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 311
	i32 1636350590, ; 301: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 304
	i32 1639515021, ; 302: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 303: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 304: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654881142, ; 305: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 184
	i32 1657153582, ; 306: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 307: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 343
	i32 1658251792, ; 308: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 352
	i32 1670060433, ; 309: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 299
	i32 1675553242, ; 310: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 311: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 312: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 313: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 314: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 315: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 316: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 359
	i32 1701541528, ; 317: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 318: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 320
	i32 1726116996, ; 319: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 320: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 321: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 295
	i32 1743415430, ; 322: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 375
	i32 1744735666, ; 323: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746115085, ; 324: System.IO.Pipelines.dll => 0x68139a0d => 274
	i32 1746316138, ; 325: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 326: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 327: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1760259689, ; 328: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 183
	i32 1763938596, ; 329: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 330: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 331: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 342
	i32 1770582343, ; 332: Microsoft.Extensions.Logging.dll => 0x6988f147 => 241
	i32 1776026572, ; 333: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 334: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 335: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 336: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 391
	i32 1788241197, ; 337: Xamarin.AndroidX.Fragment => 0x6a96652d => 313
	i32 1793755602, ; 338: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 383
	i32 1794500907, ; 339: Microsoft.Identity.Client.dll => 0x6af5e92b => 248
	i32 1796167890, ; 340: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 217
	i32 1798832757, ; 341: es\Microsoft.Data.SqlClient.resources.dll => 0x6b380275 => 365
	i32 1808609942, ; 342: Xamarin.AndroidX.Loader => 0x6bcd3296 => 327
	i32 1813058853, ; 343: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 358
	i32 1813201214, ; 344: Xamarin.Google.Android.Material => 0x6c13413e => 352
	i32 1818569960, ; 345: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 332
	i32 1818787751, ; 346: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1819327070, ; 347: Microsoft.AspNetCore.Http.Features.dll => 0x6c70ba5e => 196
	i32 1820883333, ; 348: Microsoft.AspNetCore.Cryptography.Internal.dll => 0x6c887985 => 186
	i32 1824175904, ; 349: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 350: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1824744702, ; 351: ru\Microsoft.Data.SqlClient.resources.dll => 0x6cc364fe => 371
	i32 1828688058, ; 352: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 242
	i32 1847515442, ; 353: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 282
	i32 1853025655, ; 354: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 400
	i32 1858542181, ; 355: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 356: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1871986876, ; 357: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 256
	i32 1875935024, ; 358: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 382
	i32 1879696579, ; 359: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 360: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 293
	i32 1888955245, ; 361: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 362: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1893218855, ; 363: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 376
	i32 1894524299, ; 364: Microsoft.DotNet.PlatformAbstractions.dll => 0x70ec258b => 222
	i32 1898237753, ; 365: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 366: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 367: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1921968366, ; 368: Microsoft.AspNetCore.Mvc.Formatters.Json => 0x728ee8ee => 202
	i32 1928288591, ; 369: Microsoft.AspNetCore.Http.Abstractions => 0x72ef594f => 194
	i32 1939592360, ; 370: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1953182387, ; 371: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 387
	i32 1953680223, ; 372: Microsoft.AspNetCore.DataProtection.Abstractions => 0x7472cb5f => 188
	i32 1956758971, ; 373: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 374: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 339
	i32 1967298789, ; 375: Microsoft.AspNetCore.Diagnostics.Abstractions.dll => 0x754298e5 => 189
	i32 1968388702, ; 376: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 225
	i32 1983156543, ; 377: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 359
	i32 1985761444, ; 378: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 284
	i32 1986222447, ; 379: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 257
	i32 2003115576, ; 380: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 379
	i32 2011961780, ; 381: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 382: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 324
	i32 2031763787, ; 383: Xamarin.Android.Glide => 0x791a414b => 281
	i32 2040764568, ; 384: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 249
	i32 2045470958, ; 385: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 386: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 227
	i32 2055257422, ; 387: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 319
	i32 2060060697, ; 388: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 389: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 378
	i32 2069514766, ; 390: Newtonsoft.Json.Bson => 0x7b5a4a0e => 268
	i32 2070888862, ; 391: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 392: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 236
	i32 2075706075, ; 393: Microsoft.AspNetCore.Http.Abstractions.dll => 0x7bb8c2db => 194
	i32 2076659885, ; 394: Microsoft.Extensions.WebEncoders => 0x7bc750ad => 247
	i32 2079903147, ; 395: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2085039813, ; 396: System.Security.Cryptography.Xml.dll => 0x7c472ec5 => 279
	i32 2090596640, ; 397: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2092734687, ; 398: Microsoft.AspNetCore.JsonPatch => 0x7cbc98df => 197
	i32 2120057885, ; 399: Microsoft.AspNetCore.Mvc.Formatters.Json.dll => 0x7e5d841d => 202
	i32 2127167465, ; 400: System.Console => 0x7ec9ffe9 => 20
	i32 2131193692, ; 401: pt-BR\Microsoft.Data.SqlClient.resources.dll => 0x7f076f5c => 370
	i32 2134056115, ; 402: zh-Hant\Microsoft.Data.SqlClient.resources.dll => 0x7f331cb3 => 373
	i32 2142473426, ; 403: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 404: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 405: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 406: Microsoft.Maui => 0x80bd55ad => 262
	i32 2169148018, ; 407: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 386
	i32 2181898931, ; 408: Microsoft.Extensions.Options.dll => 0x820d22b3 => 245
	i32 2182738860, ; 409: Microsoft.AspNetCore.Mvc.Core.dll => 0x8219f3ac => 200
	i32 2192057212, ; 410: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 242
	i32 2193016926, ; 411: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2197979891, ; 412: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 232
	i32 2201107256, ; 413: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 363
	i32 2201231467, ; 414: System.Net.Http => 0x8334206b => 64
	i32 2204417087, ; 415: Microsoft.Extensions.ObjectPool => 0x8364bc3f => 244
	i32 2207618523, ; 416: it\Microsoft.Maui.Controls.resources => 0x839595db => 388
	i32 2217644978, ; 417: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 346
	i32 2222056684, ; 418: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2228745826, ; 419: pt-BR\Microsoft.Data.SqlClient.resources => 0x84d7f662 => 370
	i32 2242871324, ; 420: Microsoft.AspNetCore.Http.dll => 0x85af801c => 193
	i32 2244775296, ; 421: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 328
	i32 2252106437, ; 422: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2253551641, ; 423: Microsoft.IdentityModel.Protocols => 0x86527819 => 255
	i32 2256313426, ; 424: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 425: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 426: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 226
	i32 2267999099, ; 427: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 283
	i32 2279755925, ; 428: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 335
	i32 2285293097, ; 429: Microsoft.AspNetCore.Mvc.Abstractions => 0x8836ce29 => 199
	i32 2291847450, ; 430: Microsoft.AspNetCore.DataProtection.dll => 0x889ad11a => 187
	i32 2293034957, ; 431: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 432: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 433: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 434: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 392
	i32 2305521784, ; 435: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2309278602, ; 436: ko\Microsoft.Data.SqlClient.resources => 0x89a4cb8a => 369
	i32 2315684594, ; 437: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 287
	i32 2320631194, ; 438: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2321784778, ; 439: Microsoft.AspNetCore.Mvc.Abstractions.dll => 0x8a639fca => 199
	i32 2340441535, ; 440: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 441: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 442: System.Net.Primitives => 0x8c40e0db => 70
	i32 2366048013, ; 443: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 386
	i32 2368005991, ; 444: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369706906, ; 445: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 254
	i32 2371007202, ; 446: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 225
	i32 2378619854, ; 447: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 448: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 449: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 387
	i32 2401565422, ; 450: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 451: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 310
	i32 2411328690, ; 452: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 181
	i32 2421380589, ; 453: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 454: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 297
	i32 2427245696, ; 455: Microsoft.CodeAnalysis.Razor.dll => 0x90acd480 => 220
	i32 2427813419, ; 456: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 384
	i32 2435356389, ; 457: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 458: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2442556106, ; 459: Microsoft.JSInterop.dll => 0x919672ca => 258
	i32 2451271121, ; 460: Microsoft.AspNetCore.Mvc.RazorPages => 0x921b6dd1 => 205
	i32 2454642406, ; 461: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458592288, ; 462: Microsoft.AspNetCore.Authentication.Core => 0x928b2420 => 178
	i32 2458678730, ; 463: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 464: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 465: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 300
	i32 2471841756, ; 466: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 467: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 468: Microsoft.Maui.Controls => 0x93dba8a1 => 260
	i32 2483903535, ; 469: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 470: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 471: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 472: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2503351294, ; 473: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 390
	i32 2505896520, ; 474: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 322
	i32 2509217888, ; 475: System.Diagnostics.EventLog => 0x958fa060 => 272
	i32 2522472828, ; 476: Xamarin.Android.Glide.dll => 0x9659e17c => 281
	i32 2528662365, ; 477: Microsoft.AspNetCore.JsonPatch.dll => 0x96b8535d => 197
	i32 2537015816, ; 478: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 179
	i32 2538310050, ; 479: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2540434582, ; 480: de\Microsoft.Data.SqlClient.resources.dll => 0x976bf496 => 364
	i32 2550873716, ; 481: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 385
	i32 2562349572, ; 482: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 483: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2576534780, ; 484: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 389
	i32 2581783588, ; 485: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 323
	i32 2581819634, ; 486: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 345
	i32 2585220780, ; 487: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 488: System.Net.Ping => 0x9a20430d => 69
	i32 2585813321, ; 489: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 182
	i32 2589602615, ; 490: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2592341985, ; 491: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 233
	i32 2593268061, ; 492: Microsoft.AspNetCore.Routing.Abstractions.dll => 0x9a92215d => 212
	i32 2593496499, ; 493: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 394
	i32 2594125473, ; 494: Microsoft.AspNetCore.Hosting.Abstractions => 0x9a9f36a1 => 190
	i32 2605712449, ; 495: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 363
	i32 2615233544, ; 496: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 314
	i32 2616218305, ; 497: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 243
	i32 2617129537, ; 498: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 499: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 500: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 304
	i32 2624644809, ; 501: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 309
	i32 2626831493, ; 502: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 389
	i32 2627185994, ; 503: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2628210652, ; 504: System.Memory.Data => 0x9ca74fdc => 275
	i32 2629843544, ; 505: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 506: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 318
	i32 2633959305, ; 507: Microsoft.AspNetCore.Http.Extensions.dll => 0x9cff0789 => 195
	i32 2640290731, ; 508: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 254
	i32 2640706905, ; 509: Azure.Core => 0x9d65fd59 => 173
	i32 2656447230, ; 510: Microsoft.IdentityModel.Clients.ActiveDirectory.dll => 0x9e562afe => 252
	i32 2660759594, ; 511: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 278
	i32 2663391936, ; 512: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 283
	i32 2663698177, ; 513: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 514: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 515: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 516: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2677098746, ; 517: Azure.Identity.dll => 0x9f9148fa => 174
	i32 2686887180, ; 518: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2692077919, ; 519: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 184
	i32 2693849962, ; 520: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 521: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 343
	i32 2715334215, ; 522: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 523: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 524: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2722434549, ; 525: Microsoft.CodeAnalysis.dll => 0xa2450df5 => 218
	i32 2724373263, ; 526: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 527: Xamarin.AndroidX.Activity => 0xa2e0939b => 285
	i32 2735172069, ; 528: System.Threading.Channels => 0xa30769e5 => 139
	i32 2735631878, ; 529: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 179
	i32 2737747696, ; 530: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 291
	i32 2740051746, ; 531: Microsoft.Identity.Client => 0xa351df22 => 248
	i32 2740698338, ; 532: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 375
	i32 2740948882, ; 533: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 534: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 535: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 395
	i32 2755098380, ; 536: Microsoft.SqlServer.Server.dll => 0xa437770c => 266
	i32 2758225723, ; 537: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 261
	i32 2764765095, ; 538: Microsoft.Maui.dll => 0xa4caf7a7 => 262
	i32 2765824710, ; 539: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 540: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 357
	i32 2778768386, ; 541: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 348
	i32 2779977773, ; 542: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 336
	i32 2785988530, ; 543: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 401
	i32 2788224221, ; 544: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 314
	i32 2801831435, ; 545: Microsoft.Maui.Graphics => 0xa7008e0b => 264
	i32 2803228030, ; 546: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2810250172, ; 547: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 301
	i32 2819470561, ; 548: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 549: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 550: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 336
	i32 2824502124, ; 551: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2833784645, ; 552: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 198
	i32 2838993487, ; 553: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 325
	i32 2841355853, ; 554: System.Security.Permissions => 0xa95ba64d => 280
	i32 2849599387, ; 555: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2850549256, ; 556: Microsoft.AspNetCore.Http.Features => 0xa9e7ee08 => 196
	i32 2853208004, ; 557: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 348
	i32 2855708567, ; 558: Xamarin.AndroidX.Transition => 0xaa36a797 => 344
	i32 2861098320, ; 559: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 560: Microsoft.Maui.Essentials => 0xaa8a4878 => 263
	i32 2867946736, ; 561: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 278
	i32 2870099610, ; 562: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 286
	i32 2873584175, ; 563: Microsoft.IdentityModel.Clients.ActiveDirectory.Platform.dll => 0xab476a2f => 251
	i32 2875164099, ; 564: Jsr305Binding.dll => 0xab5f85c3 => 353
	i32 2875220617, ; 565: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 566: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 312
	i32 2887636118, ; 567: System.Net.dll => 0xac1dd496 => 81
	i32 2892341533, ; 568: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 183
	i32 2899753641, ; 569: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 570: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 571: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 572: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 573: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2911054922, ; 574: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 236
	i32 2916838712, ; 575: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 349
	i32 2919462931, ; 576: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 577: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 288
	i32 2921417940, ; 578: System.Security.Cryptography.Xml => 0xae214cd4 => 279
	i32 2930358886, ; 579: Microsoft.AspNetCore.DataProtection.Abstractions.dll => 0xaea9ba66 => 188
	i32 2936416060, ; 580: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 581: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 582: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2944313911, ; 583: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 270
	i32 2959614098, ; 584: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 585: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 586: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978368250, ; 587: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0xb1864afa => 190
	i32 2978675010, ; 588: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 308
	i32 2987532451, ; 589: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 339
	i32 2996646946, ; 590: Microsoft.AspNetCore.Http => 0xb29d3422 => 193
	i32 2996846495, ; 591: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 321
	i32 3012788804, ; 592: System.Configuration.ConfigurationManager => 0xb3938244 => 270
	i32 3016983068, ; 593: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 341
	i32 3023353419, ; 594: WindowsBase.dll => 0xb434b64b => 165
	i32 3023511517, ; 595: ru\Microsoft.Data.SqlClient.resources => 0xb4371fdd => 371
	i32 3024354802, ; 596: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 316
	i32 3033331042, ; 597: Microsoft.AspNetCore.Authentication.Core.dll => 0xb4ccf562 => 178
	i32 3033605958, ; 598: System.Memory.Data.dll => 0xb4d12746 => 275
	i32 3036999524, ; 599: Microsoft.AspNetCore.Http.Extensions => 0xb504ef64 => 195
	i32 3038032645, ; 600: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 408
	i32 3050706616, ; 601: Microsoft.AspNetCore.Mvc.Razor.Extensions => 0xb5d616b8 => 204
	i32 3053864966, ; 602: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 381
	i32 3056245963, ; 603: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 338
	i32 3057625584, ; 604: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 329
	i32 3059408633, ; 605: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 606: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 607: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 223
	i32 3075834255, ; 608: System.Threading.Tasks => 0xb755818f => 144
	i32 3084678329, ; 609: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 257
	i32 3090735792, ; 610: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3093090641, ; 611: Microsoft.Extensions.WebEncoders.dll => 0xb85cd151 => 247
	i32 3099732863, ; 612: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 613: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 614: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3113762169, ; 615: Microsoft.AspNetCore.Routing.Abstractions => 0xb9983d79 => 212
	i32 3121463068, ; 616: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 617: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 618: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 619: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 620: GoogleGson.dll => 0xbba64c02 => 175
	i32 3151576809, ; 621: Microsoft.AspNetCore.Mvc.Core => 0xbbd93ee9 => 200
	i32 3155681111, ; 622: Microsoft.AspNetCore.DataProtection => 0xbc17df57 => 187
	i32 3159123045, ; 623: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 624: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 625: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 330
	i32 3192346100, ; 626: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 627: System.Web => 0xbe592c0c => 153
	i32 3195844289, ; 628: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 223
	i32 3204380047, ; 629: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 630: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 631: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 307
	i32 3213246214, ; 632: System.Security.Permissions.dll => 0xbf863f06 => 280
	i32 3220365878, ; 633: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 634: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3228018376, ; 635: Microsoft.AspNetCore.ResponseCaching.Abstractions.dll => 0xc067a6c8 => 210
	i32 3251039220, ; 636: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 637: Xamarin.AndroidX.CardView => 0xc235e84d => 295
	i32 3265493905, ; 638: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 639: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 640: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 641: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 642: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 643: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 644: System.Text.Encoding => 0xc4a8494a => 135
	i32 3300764913, ; 645: Microsoft.AspNetCore.WebUtilities => 0xc4bdacf1 => 213
	i32 3303498502, ; 646: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 647: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 381
	i32 3312457198, ; 648: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 253
	i32 3316684772, ; 649: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 650: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 305
	i32 3317144872, ; 651: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 652: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 293
	i32 3343947874, ; 653: fr\Microsoft.Data.SqlClient.resources => 0xc7509862 => 366
	i32 3345895724, ; 654: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 334
	i32 3346324047, ; 655: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 331
	i32 3357674450, ; 656: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 398
	i32 3358191349, ; 657: Microsoft.Azure.Services.AppAuthentication => 0xc829eef5 => 216
	i32 3358260929, ; 658: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 659: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 286
	i32 3362522851, ; 660: Xamarin.AndroidX.Core => 0xc86c06e3 => 302
	i32 3366347497, ; 661: Java.Interop => 0xc8a662e9 => 168
	i32 3374879918, ; 662: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 255
	i32 3374999561, ; 663: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 335
	i32 3381016424, ; 664: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 377
	i32 3395150330, ; 665: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 666: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 667: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 306
	i32 3406629867, ; 668: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 234
	i32 3421170118, ; 669: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 227
	i32 3428513518, ; 670: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 230
	i32 3429136800, ; 671: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 672: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 673: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 309
	i32 3445260447, ; 674: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 675: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 259
	i32 3458724246, ; 676: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 396
	i32 3464190856, ; 677: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 182
	i32 3471940407, ; 678: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 679: Mono.Android => 0xcf3163e6 => 171
	i32 3484440000, ; 680: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 397
	i32 3485117614, ; 681: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 682: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 683: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 298
	i32 3500000672, ; 684: Microsoft.JSInterop => 0xd09dc5a0 => 258
	i32 3509114376, ; 685: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 686: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 687: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 688: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3545306353, ; 689: Microsoft.Data.SqlClient => 0xd35114f1 => 221
	i32 3555084973, ; 690: de\Microsoft.Data.SqlClient.resources => 0xd3e64aad => 364
	i32 3558648585, ; 691: System.ClientModel => 0xd41cab09 => 269
	i32 3560100363, ; 692: System.Threading.Timer => 0xd432d20b => 147
	i32 3561949811, ; 693: Azure.Core.dll => 0xd44f0a73 => 173
	i32 3570554715, ; 694: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3570608287, ; 695: System.Runtime.Caching.dll => 0xd4d3289f => 276
	i32 3580758918, ; 696: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 405
	i32 3592228221, ; 697: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 407
	i32 3592435036, ; 698: Microsoft.Extensions.Localization.Abstractions => 0xd620355c => 240
	i32 3597029428, ; 699: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 284
	i32 3598340787, ; 700: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 701: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 702: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 703: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 333
	i32 3633644679, ; 704: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 288
	i32 3638274909, ; 705: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 706: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 319
	i32 3643446276, ; 707: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 402
	i32 3643854240, ; 708: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 330
	i32 3645089577, ; 709: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 710: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 226
	i32 3658129364, ; 711: Microsoft.IdentityModel.Clients.ActiveDirectory.Platform => 0xda0a9fd4 => 251
	i32 3660523487, ; 712: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 713: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 714: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 294
	i32 3684561358, ; 715: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 298
	i32 3700591436, ; 716: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 250
	i32 3700866549, ; 717: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706221932, ; 718: Microsoft.IdentityModel.Clients.ActiveDirectory => 0xdce8756c => 252
	i32 3706696989, ; 719: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 303
	i32 3716563718, ; 720: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 721: Xamarin.AndroidX.Annotation => 0xdda814c6 => 287
	i32 3722202641, ; 722: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 229
	i32 3724971120, ; 723: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 329
	i32 3732100267, ; 724: System.Net.NameResolution => 0xde7354ab => 67
	i32 3732214720, ; 725: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 198
	i32 3737834244, ; 726: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 727: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 728: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3751619990, ; 729: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 377
	i32 3758424670, ; 730: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 228
	i32 3765508441, ; 731: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 244
	i32 3776403777, ; 732: Microsoft.Extensions.Localization.Abstractions.dll => 0xe1175941 => 240
	i32 3786282454, ; 733: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 296
	i32 3792276235, ; 734: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 735: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 259
	i32 3802395368, ; 736: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3807198597, ; 737: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 277
	i32 3819260425, ; 738: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 739: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829324472, ; 740: Microsoft.AspNetCore.Mvc.Razor.Extensions.dll => 0xe43edab8 => 204
	i32 3829621856, ; 741: System.Numerics.dll => 0xe4436460 => 83
	i32 3834665012, ; 742: System.Data.SqlClient => 0xe4905834 => 271
	i32 3841636137, ; 743: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 231
	i32 3844307129, ; 744: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3848348906, ; 745: es\Microsoft.Data.SqlClient.resources => 0xe56124ea => 365
	i32 3849253459, ; 746: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 747: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 748: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 749: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 750: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 751: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 344
	i32 3888767677, ; 752: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 334
	i32 3896106733, ; 753: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 754: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 302
	i32 3898971068, ; 755: Microsoft.Extensions.Localization.dll => 0xe86593bc => 239
	i32 3901907137, ; 756: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920221145, ; 757: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 393
	i32 3920810846, ; 758: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 759: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 347
	i32 3928044579, ; 760: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 761: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 762: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 332
	i32 3945713374, ; 763: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3948965564, ; 764: it\Microsoft.Data.SqlClient.resources.dll => 0xeb606ebc => 367
	i32 3953953790, ; 765: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3954195687, ; 766: Microsoft.Extensions.Localization => 0xebb03ce7 => 239
	i32 3955647286, ; 767: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 290
	i32 3959773229, ; 768: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 321
	i32 4003436829, ; 769: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 770: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 289
	i32 4023392905, ; 771: System.IO.Pipelines => 0xefd01a89 => 274
	i32 4025784931, ; 772: System.Memory => 0xeff49a63 => 62
	i32 4026527876, ; 773: Microsoft.CodeAnalysis.CSharp => 0xeffff084 => 219
	i32 4029710644, ; 774: Microsoft.AspNetCore.Razor.Runtime.dll => 0xf0308134 => 209
	i32 4044155772, ; 775: Microsoft.Net.Http.Headers.dll => 0xf10ceb7c => 265
	i32 4046471985, ; 776: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 261
	i32 4054681211, ; 777: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 778: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 779: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4078967171, ; 780: Microsoft.Extensions.Hosting.Abstractions.dll => 0xf3201983 => 238
	i32 4091086043, ; 781: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 379
	i32 4094352644, ; 782: Microsoft.Maui.Essentials.dll => 0xf40add04 => 263
	i32 4099507663, ; 783: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 784: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 785: Xamarin.AndroidX.Emoji2 => 0xf479582c => 310
	i32 4101842092, ; 786: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 224
	i32 4103439459, ; 787: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 403
	i32 4126470640, ; 788: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 230
	i32 4127667938, ; 789: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 790: System.AppContext => 0xf6318da0 => 6
	i32 4141580284, ; 791: Microsoft.AspNetCore.Authorization.Policy => 0xf6db7ffc => 180
	i32 4147896353, ; 792: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 793: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 403
	i32 4151237749, ; 794: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 795: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 796: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 797: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4169285646, ; 798: Microsoft.AspNetCore.Mvc.ViewFeatures.dll => 0xf882400e => 206
	i32 4180982454, ; 799: Microsoft.AspNetCore.Diagnostics.Abstractions => 0xf934bab6 => 189
	i32 4181436372, ; 800: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 801: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 326
	i32 4185676441, ; 802: System.Security => 0xf97c5a99 => 130
	i32 4196171640, ; 803: Microsoft.CodeAnalysis => 0xfa1c7f78 => 218
	i32 4196529839, ; 804: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 805: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4245218886, ; 806: Microsoft.CodeAnalysis.CSharp.dll => 0xfd08e646 => 219
	i32 4249188766, ; 807: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 392
	i32 4256097574, ; 808: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 303
	i32 4258378803, ; 809: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 325
	i32 4258913604, ; 810: Microsoft.AspNetCore.Mvc.DataAnnotations => 0xfdd9dd44 => 201
	i32 4260525087, ; 811: System.Buffers => 0xfdf2741f => 7
	i32 4263231520, ; 812: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 273
	i32 4271975918, ; 813: Microsoft.Maui.Controls.dll => 0xfea12dee => 260
	i32 4274976490, ; 814: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 815: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 326
	i32 4294648842, ; 816: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 235
	i32 4294763496 ; 817: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 312
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [818 x i32] [
	i32 68, ; 0
	i32 0, ; 1
	i32 67, ; 2
	i32 108, ; 3
	i32 232, ; 4
	i32 322, ; 5
	i32 356, ; 6
	i32 48, ; 7
	i32 374, ; 8
	i32 267, ; 9
	i32 80, ; 10
	i32 383, ; 11
	i32 145, ; 12
	i32 367, ; 13
	i32 368, ; 14
	i32 30, ; 15
	i32 407, ; 16
	i32 124, ; 17
	i32 264, ; 18
	i32 215, ; 19
	i32 102, ; 20
	i32 186, ; 21
	i32 391, ; 22
	i32 216, ; 23
	i32 340, ; 24
	i32 107, ; 25
	i32 340, ; 26
	i32 139, ; 27
	i32 360, ; 28
	i32 406, ; 29
	i32 399, ; 30
	i32 77, ; 31
	i32 124, ; 32
	i32 13, ; 33
	i32 296, ; 34
	i32 132, ; 35
	i32 213, ; 36
	i32 203, ; 37
	i32 342, ; 38
	i32 151, ; 39
	i32 18, ; 40
	i32 294, ; 41
	i32 26, ; 42
	i32 316, ; 43
	i32 1, ; 44
	i32 59, ; 45
	i32 42, ; 46
	i32 91, ; 47
	i32 209, ; 48
	i32 181, ; 49
	i32 299, ; 50
	i32 372, ; 51
	i32 369, ; 52
	i32 147, ; 53
	i32 318, ; 54
	i32 315, ; 55
	i32 54, ; 56
	i32 69, ; 57
	i32 177, ; 58
	i32 404, ; 59
	i32 285, ; 60
	i32 83, ; 61
	i32 382, ; 62
	i32 266, ; 63
	i32 176, ; 64
	i32 201, ; 65
	i32 317, ; 66
	i32 210, ; 67
	i32 131, ; 68
	i32 55, ; 69
	i32 149, ; 70
	i32 74, ; 71
	i32 145, ; 72
	i32 211, ; 73
	i32 62, ; 74
	i32 146, ; 75
	i32 408, ; 76
	i32 165, ; 77
	i32 402, ; 78
	i32 300, ; 79
	i32 12, ; 80
	i32 313, ; 81
	i32 125, ; 82
	i32 152, ; 83
	i32 113, ; 84
	i32 166, ; 85
	i32 164, ; 86
	i32 315, ; 87
	i32 250, ; 88
	i32 328, ; 89
	i32 380, ; 90
	i32 191, ; 91
	i32 84, ; 92
	i32 246, ; 93
	i32 150, ; 94
	i32 360, ; 95
	i32 60, ; 96
	i32 366, ; 97
	i32 401, ; 98
	i32 241, ; 99
	i32 51, ; 100
	i32 103, ; 101
	i32 114, ; 102
	i32 368, ; 103
	i32 217, ; 104
	i32 40, ; 105
	i32 353, ; 106
	i32 208, ; 107
	i32 214, ; 108
	i32 214, ; 109
	i32 351, ; 110
	i32 235, ; 111
	i32 120, ; 112
	i32 52, ; 113
	i32 44, ; 114
	i32 119, ; 115
	i32 305, ; 116
	i32 393, ; 117
	i32 311, ; 118
	i32 81, ; 119
	i32 136, ; 120
	i32 347, ; 121
	i32 292, ; 122
	i32 8, ; 123
	i32 73, ; 124
	i32 215, ; 125
	i32 155, ; 126
	i32 362, ; 127
	i32 154, ; 128
	i32 92, ; 129
	i32 357, ; 130
	i32 45, ; 131
	i32 277, ; 132
	i32 361, ; 133
	i32 109, ; 134
	i32 269, ; 135
	i32 180, ; 136
	i32 203, ; 137
	i32 207, ; 138
	i32 129, ; 139
	i32 25, ; 140
	i32 282, ; 141
	i32 72, ; 142
	i32 55, ; 143
	i32 271, ; 144
	i32 46, ; 145
	i32 399, ; 146
	i32 245, ; 147
	i32 306, ; 148
	i32 185, ; 149
	i32 22, ; 150
	i32 320, ; 151
	i32 206, ; 152
	i32 86, ; 153
	i32 43, ; 154
	i32 160, ; 155
	i32 71, ; 156
	i32 333, ; 157
	i32 384, ; 158
	i32 207, ; 159
	i32 3, ; 160
	i32 42, ; 161
	i32 63, ; 162
	i32 398, ; 163
	i32 16, ; 164
	i32 53, ; 165
	i32 395, ; 166
	i32 356, ; 167
	i32 220, ; 168
	i32 105, ; 169
	i32 267, ; 170
	i32 372, ; 171
	i32 361, ; 172
	i32 388, ; 173
	i32 354, ; 174
	i32 317, ; 175
	i32 208, ; 176
	i32 34, ; 177
	i32 158, ; 178
	i32 85, ; 179
	i32 32, ; 180
	i32 397, ; 181
	i32 12, ; 182
	i32 51, ; 183
	i32 237, ; 184
	i32 56, ; 185
	i32 192, ; 186
	i32 337, ; 187
	i32 36, ; 188
	i32 231, ; 189
	i32 355, ; 190
	i32 290, ; 191
	i32 35, ; 192
	i32 378, ; 193
	i32 58, ; 194
	i32 324, ; 195
	i32 192, ; 196
	i32 249, ; 197
	i32 175, ; 198
	i32 17, ; 199
	i32 358, ; 200
	i32 272, ; 201
	i32 164, ; 202
	i32 222, ; 203
	i32 228, ; 204
	i32 400, ; 205
	i32 238, ; 206
	i32 177, ; 207
	i32 394, ; 208
	i32 390, ; 209
	i32 323, ; 210
	i32 243, ; 211
	i32 221, ; 212
	i32 350, ; 213
	i32 396, ; 214
	i32 153, ; 215
	i32 233, ; 216
	i32 346, ; 217
	i32 331, ; 218
	i32 268, ; 219
	i32 292, ; 220
	i32 224, ; 221
	i32 29, ; 222
	i32 52, ; 223
	i32 265, ; 224
	i32 205, ; 225
	i32 191, ; 226
	i32 351, ; 227
	i32 5, ; 228
	i32 376, ; 229
	i32 341, ; 230
	i32 345, ; 231
	i32 211, ; 232
	i32 297, ; 233
	i32 362, ; 234
	i32 289, ; 235
	i32 308, ; 236
	i32 385, ; 237
	i32 85, ; 238
	i32 350, ; 239
	i32 61, ; 240
	i32 112, ; 241
	i32 405, ; 242
	i32 57, ; 243
	i32 406, ; 244
	i32 337, ; 245
	i32 99, ; 246
	i32 19, ; 247
	i32 301, ; 248
	i32 111, ; 249
	i32 0, ; 250
	i32 101, ; 251
	i32 102, ; 252
	i32 374, ; 253
	i32 104, ; 254
	i32 354, ; 255
	i32 71, ; 256
	i32 38, ; 257
	i32 32, ; 258
	i32 234, ; 259
	i32 103, ; 260
	i32 73, ; 261
	i32 273, ; 262
	i32 380, ; 263
	i32 9, ; 264
	i32 123, ; 265
	i32 46, ; 266
	i32 291, ; 267
	i32 246, ; 268
	i32 9, ; 269
	i32 43, ; 270
	i32 4, ; 271
	i32 338, ; 272
	i32 253, ; 273
	i32 237, ; 274
	i32 404, ; 275
	i32 31, ; 276
	i32 138, ; 277
	i32 92, ; 278
	i32 185, ; 279
	i32 93, ; 280
	i32 276, ; 281
	i32 49, ; 282
	i32 141, ; 283
	i32 112, ; 284
	i32 140, ; 285
	i32 174, ; 286
	i32 307, ; 287
	i32 115, ; 288
	i32 373, ; 289
	i32 355, ; 290
	i32 157, ; 291
	i32 76, ; 292
	i32 79, ; 293
	i32 327, ; 294
	i32 37, ; 295
	i32 349, ; 296
	i32 176, ; 297
	i32 256, ; 298
	i32 229, ; 299
	i32 311, ; 300
	i32 304, ; 301
	i32 64, ; 302
	i32 138, ; 303
	i32 15, ; 304
	i32 184, ; 305
	i32 116, ; 306
	i32 343, ; 307
	i32 352, ; 308
	i32 299, ; 309
	i32 48, ; 310
	i32 70, ; 311
	i32 80, ; 312
	i32 126, ; 313
	i32 94, ; 314
	i32 121, ; 315
	i32 359, ; 316
	i32 26, ; 317
	i32 320, ; 318
	i32 97, ; 319
	i32 28, ; 320
	i32 295, ; 321
	i32 375, ; 322
	i32 149, ; 323
	i32 274, ; 324
	i32 169, ; 325
	i32 4, ; 326
	i32 98, ; 327
	i32 183, ; 328
	i32 33, ; 329
	i32 93, ; 330
	i32 342, ; 331
	i32 241, ; 332
	i32 21, ; 333
	i32 41, ; 334
	i32 170, ; 335
	i32 391, ; 336
	i32 313, ; 337
	i32 383, ; 338
	i32 248, ; 339
	i32 217, ; 340
	i32 365, ; 341
	i32 327, ; 342
	i32 358, ; 343
	i32 352, ; 344
	i32 332, ; 345
	i32 2, ; 346
	i32 196, ; 347
	i32 186, ; 348
	i32 134, ; 349
	i32 111, ; 350
	i32 371, ; 351
	i32 242, ; 352
	i32 282, ; 353
	i32 400, ; 354
	i32 58, ; 355
	i32 95, ; 356
	i32 256, ; 357
	i32 382, ; 358
	i32 39, ; 359
	i32 293, ; 360
	i32 25, ; 361
	i32 94, ; 362
	i32 376, ; 363
	i32 222, ; 364
	i32 89, ; 365
	i32 99, ; 366
	i32 10, ; 367
	i32 202, ; 368
	i32 194, ; 369
	i32 87, ; 370
	i32 387, ; 371
	i32 188, ; 372
	i32 100, ; 373
	i32 339, ; 374
	i32 189, ; 375
	i32 225, ; 376
	i32 359, ; 377
	i32 284, ; 378
	i32 257, ; 379
	i32 379, ; 380
	i32 7, ; 381
	i32 324, ; 382
	i32 281, ; 383
	i32 249, ; 384
	i32 88, ; 385
	i32 227, ; 386
	i32 319, ; 387
	i32 154, ; 388
	i32 378, ; 389
	i32 268, ; 390
	i32 33, ; 391
	i32 236, ; 392
	i32 194, ; 393
	i32 247, ; 394
	i32 116, ; 395
	i32 279, ; 396
	i32 82, ; 397
	i32 197, ; 398
	i32 202, ; 399
	i32 20, ; 400
	i32 370, ; 401
	i32 373, ; 402
	i32 11, ; 403
	i32 162, ; 404
	i32 3, ; 405
	i32 262, ; 406
	i32 386, ; 407
	i32 245, ; 408
	i32 200, ; 409
	i32 242, ; 410
	i32 84, ; 411
	i32 232, ; 412
	i32 363, ; 413
	i32 64, ; 414
	i32 244, ; 415
	i32 388, ; 416
	i32 346, ; 417
	i32 143, ; 418
	i32 370, ; 419
	i32 193, ; 420
	i32 328, ; 421
	i32 157, ; 422
	i32 255, ; 423
	i32 41, ; 424
	i32 117, ; 425
	i32 226, ; 426
	i32 283, ; 427
	i32 335, ; 428
	i32 199, ; 429
	i32 187, ; 430
	i32 131, ; 431
	i32 75, ; 432
	i32 66, ; 433
	i32 392, ; 434
	i32 172, ; 435
	i32 369, ; 436
	i32 287, ; 437
	i32 143, ; 438
	i32 199, ; 439
	i32 106, ; 440
	i32 151, ; 441
	i32 70, ; 442
	i32 386, ; 443
	i32 156, ; 444
	i32 254, ; 445
	i32 225, ; 446
	i32 121, ; 447
	i32 127, ; 448
	i32 387, ; 449
	i32 152, ; 450
	i32 310, ; 451
	i32 181, ; 452
	i32 141, ; 453
	i32 297, ; 454
	i32 220, ; 455
	i32 384, ; 456
	i32 20, ; 457
	i32 14, ; 458
	i32 258, ; 459
	i32 205, ; 460
	i32 135, ; 461
	i32 178, ; 462
	i32 75, ; 463
	i32 59, ; 464
	i32 300, ; 465
	i32 167, ; 466
	i32 168, ; 467
	i32 260, ; 468
	i32 15, ; 469
	i32 74, ; 470
	i32 6, ; 471
	i32 23, ; 472
	i32 390, ; 473
	i32 322, ; 474
	i32 272, ; 475
	i32 281, ; 476
	i32 197, ; 477
	i32 179, ; 478
	i32 91, ; 479
	i32 364, ; 480
	i32 385, ; 481
	i32 1, ; 482
	i32 136, ; 483
	i32 389, ; 484
	i32 323, ; 485
	i32 345, ; 486
	i32 134, ; 487
	i32 69, ; 488
	i32 182, ; 489
	i32 146, ; 490
	i32 233, ; 491
	i32 212, ; 492
	i32 394, ; 493
	i32 190, ; 494
	i32 363, ; 495
	i32 314, ; 496
	i32 243, ; 497
	i32 88, ; 498
	i32 96, ; 499
	i32 304, ; 500
	i32 309, ; 501
	i32 389, ; 502
	i32 31, ; 503
	i32 275, ; 504
	i32 45, ; 505
	i32 318, ; 506
	i32 195, ; 507
	i32 254, ; 508
	i32 173, ; 509
	i32 252, ; 510
	i32 278, ; 511
	i32 283, ; 512
	i32 109, ; 513
	i32 158, ; 514
	i32 35, ; 515
	i32 22, ; 516
	i32 174, ; 517
	i32 114, ; 518
	i32 184, ; 519
	i32 57, ; 520
	i32 343, ; 521
	i32 144, ; 522
	i32 118, ; 523
	i32 120, ; 524
	i32 218, ; 525
	i32 110, ; 526
	i32 285, ; 527
	i32 139, ; 528
	i32 179, ; 529
	i32 291, ; 530
	i32 248, ; 531
	i32 375, ; 532
	i32 54, ; 533
	i32 105, ; 534
	i32 395, ; 535
	i32 266, ; 536
	i32 261, ; 537
	i32 262, ; 538
	i32 133, ; 539
	i32 357, ; 540
	i32 348, ; 541
	i32 336, ; 542
	i32 401, ; 543
	i32 314, ; 544
	i32 264, ; 545
	i32 159, ; 546
	i32 301, ; 547
	i32 163, ; 548
	i32 132, ; 549
	i32 336, ; 550
	i32 161, ; 551
	i32 198, ; 552
	i32 325, ; 553
	i32 280, ; 554
	i32 140, ; 555
	i32 196, ; 556
	i32 348, ; 557
	i32 344, ; 558
	i32 169, ; 559
	i32 263, ; 560
	i32 278, ; 561
	i32 286, ; 562
	i32 251, ; 563
	i32 353, ; 564
	i32 40, ; 565
	i32 312, ; 566
	i32 81, ; 567
	i32 183, ; 568
	i32 56, ; 569
	i32 37, ; 570
	i32 97, ; 571
	i32 166, ; 572
	i32 172, ; 573
	i32 236, ; 574
	i32 349, ; 575
	i32 82, ; 576
	i32 288, ; 577
	i32 279, ; 578
	i32 188, ; 579
	i32 98, ; 580
	i32 30, ; 581
	i32 159, ; 582
	i32 270, ; 583
	i32 18, ; 584
	i32 127, ; 585
	i32 119, ; 586
	i32 190, ; 587
	i32 308, ; 588
	i32 339, ; 589
	i32 193, ; 590
	i32 321, ; 591
	i32 270, ; 592
	i32 341, ; 593
	i32 165, ; 594
	i32 371, ; 595
	i32 316, ; 596
	i32 178, ; 597
	i32 275, ; 598
	i32 195, ; 599
	i32 408, ; 600
	i32 204, ; 601
	i32 381, ; 602
	i32 338, ; 603
	i32 329, ; 604
	i32 170, ; 605
	i32 16, ; 606
	i32 223, ; 607
	i32 144, ; 608
	i32 257, ; 609
	i32 125, ; 610
	i32 247, ; 611
	i32 118, ; 612
	i32 38, ; 613
	i32 115, ; 614
	i32 212, ; 615
	i32 47, ; 616
	i32 142, ; 617
	i32 117, ; 618
	i32 34, ; 619
	i32 175, ; 620
	i32 200, ; 621
	i32 187, ; 622
	i32 95, ; 623
	i32 53, ; 624
	i32 330, ; 625
	i32 129, ; 626
	i32 153, ; 627
	i32 223, ; 628
	i32 24, ; 629
	i32 161, ; 630
	i32 307, ; 631
	i32 280, ; 632
	i32 148, ; 633
	i32 104, ; 634
	i32 210, ; 635
	i32 89, ; 636
	i32 295, ; 637
	i32 60, ; 638
	i32 142, ; 639
	i32 100, ; 640
	i32 5, ; 641
	i32 13, ; 642
	i32 122, ; 643
	i32 135, ; 644
	i32 213, ; 645
	i32 28, ; 646
	i32 381, ; 647
	i32 253, ; 648
	i32 72, ; 649
	i32 305, ; 650
	i32 24, ; 651
	i32 293, ; 652
	i32 366, ; 653
	i32 334, ; 654
	i32 331, ; 655
	i32 398, ; 656
	i32 216, ; 657
	i32 137, ; 658
	i32 286, ; 659
	i32 302, ; 660
	i32 168, ; 661
	i32 255, ; 662
	i32 335, ; 663
	i32 377, ; 664
	i32 101, ; 665
	i32 123, ; 666
	i32 306, ; 667
	i32 234, ; 668
	i32 227, ; 669
	i32 230, ; 670
	i32 163, ; 671
	i32 167, ; 672
	i32 309, ; 673
	i32 39, ; 674
	i32 259, ; 675
	i32 396, ; 676
	i32 182, ; 677
	i32 17, ; 678
	i32 171, ; 679
	i32 397, ; 680
	i32 137, ; 681
	i32 150, ; 682
	i32 298, ; 683
	i32 258, ; 684
	i32 155, ; 685
	i32 130, ; 686
	i32 19, ; 687
	i32 65, ; 688
	i32 221, ; 689
	i32 364, ; 690
	i32 269, ; 691
	i32 147, ; 692
	i32 173, ; 693
	i32 47, ; 694
	i32 276, ; 695
	i32 405, ; 696
	i32 407, ; 697
	i32 240, ; 698
	i32 284, ; 699
	i32 79, ; 700
	i32 61, ; 701
	i32 106, ; 702
	i32 333, ; 703
	i32 288, ; 704
	i32 49, ; 705
	i32 319, ; 706
	i32 402, ; 707
	i32 330, ; 708
	i32 14, ; 709
	i32 226, ; 710
	i32 251, ; 711
	i32 68, ; 712
	i32 171, ; 713
	i32 294, ; 714
	i32 298, ; 715
	i32 250, ; 716
	i32 78, ; 717
	i32 252, ; 718
	i32 303, ; 719
	i32 108, ; 720
	i32 287, ; 721
	i32 229, ; 722
	i32 329, ; 723
	i32 67, ; 724
	i32 198, ; 725
	i32 63, ; 726
	i32 27, ; 727
	i32 160, ; 728
	i32 377, ; 729
	i32 228, ; 730
	i32 244, ; 731
	i32 240, ; 732
	i32 296, ; 733
	i32 10, ; 734
	i32 259, ; 735
	i32 11, ; 736
	i32 277, ; 737
	i32 78, ; 738
	i32 126, ; 739
	i32 204, ; 740
	i32 83, ; 741
	i32 271, ; 742
	i32 231, ; 743
	i32 66, ; 744
	i32 365, ; 745
	i32 107, ; 746
	i32 65, ; 747
	i32 128, ; 748
	i32 122, ; 749
	i32 77, ; 750
	i32 344, ; 751
	i32 334, ; 752
	i32 8, ; 753
	i32 302, ; 754
	i32 239, ; 755
	i32 2, ; 756
	i32 393, ; 757
	i32 44, ; 758
	i32 347, ; 759
	i32 156, ; 760
	i32 128, ; 761
	i32 332, ; 762
	i32 23, ; 763
	i32 367, ; 764
	i32 133, ; 765
	i32 239, ; 766
	i32 290, ; 767
	i32 321, ; 768
	i32 29, ; 769
	i32 289, ; 770
	i32 274, ; 771
	i32 62, ; 772
	i32 219, ; 773
	i32 209, ; 774
	i32 265, ; 775
	i32 261, ; 776
	i32 90, ; 777
	i32 87, ; 778
	i32 148, ; 779
	i32 238, ; 780
	i32 379, ; 781
	i32 263, ; 782
	i32 36, ; 783
	i32 86, ; 784
	i32 310, ; 785
	i32 224, ; 786
	i32 403, ; 787
	i32 230, ; 788
	i32 50, ; 789
	i32 6, ; 790
	i32 180, ; 791
	i32 90, ; 792
	i32 403, ; 793
	i32 21, ; 794
	i32 162, ; 795
	i32 96, ; 796
	i32 50, ; 797
	i32 206, ; 798
	i32 189, ; 799
	i32 113, ; 800
	i32 326, ; 801
	i32 130, ; 802
	i32 218, ; 803
	i32 76, ; 804
	i32 27, ; 805
	i32 219, ; 806
	i32 392, ; 807
	i32 303, ; 808
	i32 325, ; 809
	i32 201, ; 810
	i32 7, ; 811
	i32 273, ; 812
	i32 260, ; 813
	i32 110, ; 814
	i32 326, ; 815
	i32 235, ; 816
	i32 312 ; 817
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

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
!7 = !{i32 1, !"min_enum_size", i32 4}
