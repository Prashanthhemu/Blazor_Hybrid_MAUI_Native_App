; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [294 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [588 x i64] [
	i64 15690660930947125, ; 0: Microsoft.DotNet.PlatformAbstractions.dll => 0x37be92af148835 => 92
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 112
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 293
	i64 131669012237370309, ; 3: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 128
	i64 160518225272466977, ; 4: Microsoft.Extensions.Hosting.Abstractions => 0x23a4679b5576e21 => 105
	i64 196720943101637631, ; 5: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 213
	i64 210515253464952879, ; 6: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 150
	i64 229794953483747371, ; 7: System.ValueTuple.dll => 0x330654aed93802b => 279
	i64 232391251801502327, ; 8: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 167
	i64 374214195677100225, ; 9: Microsoft.CodeAnalysis.Razor => 0x53179d40b3df8c1 => 90
	i64 482535784737928357, ; 10: Microsoft.AspNetCore.Diagnostics.Abstractions.dll => 0x6b24fbd58b7f4a5 => 59
	i64 535107122908063503, ; 11: Microsoft.Extensions.ObjectPool.dll => 0x76d1517d9b7670f => 110
	i64 560278790331054453, ; 12: System.Reflection.Primitives => 0x7c6829760de3975 => 239
	i64 634256334200181332, ; 13: Microsoft.CodeAnalysis.CSharp.dll => 0x8cd54c6888b1254 => 89
	i64 670564002081277297, ; 14: Microsoft.Identity.Client.dll => 0x94e526837380571 => 114
	i64 683390398661839228, ; 15: Microsoft.Extensions.FileProviders.Embedded => 0x97be3f26326c97c => 102
	i64 750875890346172408, ; 16: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 274
	i64 799765834175365804, ; 17: System.ComponentModel.dll => 0xb1956c9f18442ac => 188
	i64 805302231655005164, ; 18: hu\Microsoft.Maui.Controls.resources.dll => 0xb2d021ceea03bec => 22
	i64 864641107619353643, ; 19: Microsoft.AspNetCore.Mvc.DataAnnotations => 0xbffd2819dda142b => 71
	i64 872800313462103108, ; 20: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 155
	i64 937459790420187032, ; 21: Microsoft.SqlServer.Server.dll => 0xd0286b667351798 => 131
	i64 982068613551266738, ; 22: Microsoft.AspNetCore.ResponseCaching.Abstractions.dll => 0xda1023367c89bb2 => 80
	i64 1001381392624924420, ; 23: Microsoft.AspNetCore.Authentication.Core.dll => 0xde59f1230183704 => 49
	i64 1010599046655515943, ; 24: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 239
	i64 1060858978308751610, ; 25: Azure.Core.dll => 0xeb8ed9ebee080fa => 45
	i64 1120440138749646132, ; 26: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 171
	i64 1150430735170971895, ; 27: ru\Microsoft.Data.SqlClient.resources => 0xff726a88c8ea8f7 => 7
	i64 1268860745194512059, ; 28: System.Drawing.dll => 0x119be62002c19ebb => 201
	i64 1369545283391376210, ; 29: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 163
	i64 1404195534211153682, ; 30: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 208
	i64 1425944114962822056, ; 31: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 252
	i64 1476839205573959279, ; 32: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 220
	i64 1486715745332614827, ; 33: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 125
	i64 1492954217099365037, ; 34: System.Net.HttpListener => 0x14b809f350210aad => 217
	i64 1513467482682125403, ; 35: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 292
	i64 1537168428375924959, ; 36: System.Threading.Thread.dll => 0x15551e8a954ae0df => 274
	i64 1624659445732251991, ; 37: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 147
	i64 1628611045998245443, ; 38: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 160
	i64 1639340239664632727, ; 39: Microsoft.AspNetCore.Cryptography.Internal.dll => 0x16c01b432b36d397 => 56
	i64 1731380447121279447, ; 40: Newtonsoft.Json => 0x18071957e9b889d7 => 132
	i64 1743969030606105336, ; 41: System.Memory.dll => 0x1833d297e88f2af8 => 215
	i64 1767386781656293639, ; 42: System.Private.Uri.dll => 0x188704e9f5582107 => 232
	i64 1776954265264967804, ; 43: Microsoft.JSInterop.dll => 0x18a9027d533bd07c => 124
	i64 1795316252682057001, ; 44: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 146
	i64 1825687700144851180, ; 45: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 244
	i64 1835311033149317475, ; 46: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 16
	i64 1836611346387731153, ; 47: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 167
	i64 1865037103900624886, ; 48: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 87
	i64 1875417405349196092, ; 49: System.Drawing.Primitives => 0x1a06d2319b6c713c => 200
	i64 1881198190668717030, ; 50: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 38
	i64 1920760634179481754, ; 51: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 126
	i64 1972384582241139858, ; 52: Microsoft.CodeAnalysis.CSharp => 0x1b5f5153d0f0bc92 => 89
	i64 1972385128188460614, ; 53: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 256
	i64 1981742497975770890, ; 54: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 159
	i64 2040001226662520565, ; 55: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 271
	i64 2080945842184875448, ; 56: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 210
	i64 2102659300918482391, ; 57: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 200
	i64 2133195048986300728, ; 58: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 132
	i64 2165725771938924357, ; 59: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 148
	i64 2262844636196693701, ; 60: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 155
	i64 2269733267185212154, ; 61: Microsoft.AspNetCore.Html.Abstractions.dll => 0x1f7fb66185761afa => 62
	i64 2287834202362508563, ; 62: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 180
	i64 2295368378960711535, ; 63: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x1fdac961189e0f6f => 55
	i64 2315304989185124968, ; 64: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 209
	i64 2316229908869312383, ; 65: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x2024e6d4884a6f7f => 122
	i64 2329709569556905518, ; 66: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 158
	i64 2335503487726329082, ; 67: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 267
	i64 2337758774805907496, ; 68: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 242
	i64 2470498323731680442, ; 69: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 151
	i64 2497223385847772520, ; 70: System.Runtime => 0x22a7eb7046413568 => 253
	i64 2522657795076679771, ; 71: Microsoft.IdentityModel.Clients.ActiveDirectory => 0x230247e6256a685b => 118
	i64 2547086958574651984, ; 72: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 145
	i64 2554797818648757682, ; 73: System.Runtime.Caching.dll => 0x23747714858085b2 => 140
	i64 2592350477072141967, ; 74: System.Xml.dll => 0x23f9e10627330e8f => 286
	i64 2602673633151553063, ; 75: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 37
	i64 2612152650457191105, ; 76: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 123
	i64 2624866290265602282, ; 77: mscorlib.dll => 0x246d65fbde2db8ea => 288
	i64 2632269733008246987, ; 78: System.Net.NameResolution => 0x2487b36034f808cb => 218
	i64 2656907746661064104, ; 79: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 97
	i64 2662981627730767622, ; 80: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 12
	i64 2706075432581334785, ; 81: System.Net.WebSockets => 0x258de944be6c0701 => 228
	i64 2781169761569919449, ; 82: Microsoft.JSInterop => 0x2698b329b26ed1d9 => 124
	i64 2783046991838674048, ; 83: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 242
	i64 2789714023057451704, ; 84: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 119
	i64 2815524396660695947, ; 85: System.Security.AccessControl => 0x2712c0857f68238b => 254
	i64 2851879596360956261, ; 86: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 135
	i64 2895129759130297543, ; 87: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 17
	i64 2934188502315225119, ; 88: fr\Microsoft.Data.SqlClient.resources.dll => 0x28b854e59888d01f => 2
	i64 2974029546067041986, ; 89: Microsoft.AspNetCore.Mvc.Formatters.Json.dll => 0x2945e01d74d79ec2 => 72
	i64 3004558106879253741, ; 90: ja\Microsoft.Data.SqlClient.resources => 0x29b255adeb8edced => 4
	i64 3017704767998173186, ; 91: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 171
	i64 3021884968805928991, ; 92: Microsoft.AspNetCore.Authorization.Policy => 0x29efe45e55c5101f => 51
	i64 3063847325783385934, ; 93: System.ClientModel.dll => 0x2a84f8e8eb59674e => 134
	i64 3106852385031680087, ; 94: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 251
	i64 3110390492489056344, ; 95: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 258
	i64 3168817962471953758, ; 96: Microsoft.Extensions.Hosting.Abstractions.dll => 0x2bf9e725d304955e => 105
	i64 3168887168596639127, ; 97: Microsoft.AspNetCore.Mvc.Razor.Extensions.dll => 0x2bfa2617217efd97 => 74
	i64 3266690593535380875, ; 98: Microsoft.AspNetCore.Authorization => 0x2d559dc982c94d8b => 50
	i64 3289520064315143713, ; 99: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 157
	i64 3311221304742556517, ; 100: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 229
	i64 3325875462027654285, ; 101: System.Runtime.Numerics => 0x2e27e21c8958b48d => 247
	i64 3328853167529574890, ; 102: System.Net.Sockets.dll => 0x2e327651a008c1ea => 224
	i64 3344514922410554693, ; 103: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 173
	i64 3396143930648122816, ; 104: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 100
	i64 3402534845034375023, ; 105: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 138
	i64 3429672777697402584, ; 106: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 128
	i64 3437845325506641314, ; 107: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 210
	i64 3494946837667399002, ; 108: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 95
	i64 3522470458906976663, ; 109: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 168
	i64 3523004241079211829, ; 110: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 94
	i64 3551103847008531295, ; 111: System.Private.CoreLib.dll => 0x31480e226177735f => 290
	i64 3567343442040498961, ; 112: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 32
	i64 3571415421602489686, ; 113: System.Runtime.dll => 0x319037675df7e556 => 253
	i64 3638003163729360188, ; 114: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 96
	i64 3647754201059316852, ; 115: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 282
	i64 3655542548057982301, ; 116: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 95
	i64 3670755665060182523, ; 117: es\Microsoft.Data.SqlClient.resources.dll => 0x32f124d4312a39fb => 1
	i64 3716579019761409177, ; 118: netstandard.dll => 0x3393f0ed5c8c5c99 => 289
	i64 3727469159507183293, ; 119: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 166
	i64 3753897248517198740, ; 120: Microsoft.AspNetCore.Components.WebView.dll => 0x341885a8952f1394 => 54
	i64 3794322307918838949, ; 121: Microsoft.AspNetCore.Metadata.dll => 0x34a824092ed7bca5 => 68
	i64 3869221888984012293, ; 122: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 108
	i64 3869649043256705283, ; 123: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 197
	i64 3889433610606858880, ; 124: Microsoft.Extensions.FileProviders.Physical.dll => 0x35fa0b4301afd280 => 103
	i64 3890352374528606784, ; 125: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 126
	i64 3919223565570527920, ; 126: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 259
	i64 3933965368022646939, ; 127: System.Net.Requests => 0x369840a8bfadc09b => 221
	i64 3966267475168208030, ; 128: System.Memory => 0x370b03412596249e => 215
	i64 4005135229510678782, ; 129: Microsoft.AspNetCore.DataProtection.Abstractions => 0x379519456862f8fe => 58
	i64 4009997192427317104, ; 130: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 250
	i64 4070326265757318011, ; 131: da\Microsoft.Maui.Controls.resources.dll => 0x387cb42c56683b7b => 13
	i64 4073500526318903918, ; 132: System.Private.Xml.dll => 0x3887fb25779ae26e => 234
	i64 4120493066591692148, ; 133: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 43
	i64 4154383907710350974, ; 134: System.ComponentModel => 0x39a7562737acb67e => 188
	i64 4167269041631776580, ; 135: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 275
	i64 4168469861834746866, ; 136: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 255
	i64 4187479170553454871, ; 137: System.Linq.Expressions => 0x3a1cea1e912fa117 => 213
	i64 4202567570116092282, ; 138: Newtonsoft.Json.Bson => 0x3a5284f05958a17a => 133
	i64 4205801962323029395, ; 139: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 187
	i64 4225924121207573736, ; 140: Microsoft.AspNetCore.Authentication.Abstractions => 0x3aa57f992c550ce8 => 48
	i64 4243591448627561453, ; 141: Microsoft.AspNetCore.Http.Extensions.dll => 0x3ae443f06354c3ed => 65
	i64 4250192876909962317, ; 142: Microsoft.AspNetCore.Hosting.Abstractions => 0x3afbb7e72f1d244d => 60
	i64 4321865999928413850, ; 143: System.Diagnostics.EventLog.dll => 0x3bfa5a3a8c924e9a => 137
	i64 4360412976914417659, ; 144: tr\Microsoft.Maui.Controls.resources.dll => 0x3c834c8002fcc7fb => 38
	i64 4373617458794931033, ; 145: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 211
	i64 4431618353714093320, ; 146: Microsoft.AspNetCore.Antiforgery => 0x3d804569b93add08 => 47
	i64 4477672992252076438, ; 147: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 280
	i64 4620536241703500132, ; 148: System.Data.SqlClient.dll => 0x401f713b2e8e3964 => 136
	i64 4672453897036726049, ; 149: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 208
	i64 4716677666592453464, ; 150: System.Xml.XmlSerializer => 0x417501590542f358 => 285
	i64 4743821336939966868, ; 151: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 185
	i64 4794310189461587505, ; 152: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 145
	i64 4795410492532947900, ; 153: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 168
	i64 4809057822547766521, ; 154: System.Drawing => 0x42bd349c3145ecf9 => 201
	i64 4814660307502931973, ; 155: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 218
	i64 4853321196694829351, ; 156: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 246
	i64 4871824391508510238, ; 157: nb\Microsoft.Maui.Controls.resources.dll => 0x439c3278d7f2c61e => 28
	i64 4953714692329509532, ; 158: sv\Microsoft.Maui.Controls.resources.dll => 0x44bf21444aef129c => 36
	i64 5081566143765835342, ; 159: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 241
	i64 5099468265966638712, ; 160: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 241
	i64 5103417709280584325, ; 161: System.Collections.Specialized => 0x46d2fb5e161b6285 => 183
	i64 5112836352847824253, ; 162: Microsoft.AspNetCore.WebUtilities.dll => 0x46f47192ee32c57d => 83
	i64 5177565741364132164, ; 163: Microsoft.AspNetCore.Http => 0x47da689c1f3db944 => 63
	i64 5182934613077526976, ; 164: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 183
	i64 5197073077358930460, ; 165: Microsoft.AspNetCore.Components.Web.dll => 0x481fb66db7b9aa1c => 53
	i64 5266851800019912408, ; 166: System.Data.SqlClient => 0x49179dcea0d046d8 => 136
	i64 5278787618751394462, ; 167: System.Net.WebClient.dll => 0x4942055efc68329e => 225
	i64 5290786973231294105, ; 168: System.Runtime.Loader => 0x496ca6b869b72699 => 246
	i64 5423376490970181369, ; 169: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 244
	i64 5446034149219586269, ; 170: System.Diagnostics.Debug => 0x4b94333452e150dd => 192
	i64 5471532531798518949, ; 171: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 36
	i64 5507995362134886206, ; 172: System.Core.dll => 0x4c705499688c873e => 190
	i64 5522859530602327440, ; 173: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 39
	i64 5527431512186326818, ; 174: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 207
	i64 5570799893513421663, ; 175: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 204
	i64 5573260873512690141, ; 176: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 262
	i64 5593115988096097561, ; 177: Microsoft.AspNetCore.Routing.dll => 0x4d9ebd5b8a069d19 => 81
	i64 5610815111739789596, ; 178: Microsoft.AspNetCore.Authentication.Core => 0x4ddd9e9de3a4d11c => 49
	i64 5650097808083101034, ; 179: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 256
	i64 5692067934154308417, ; 180: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 170
	i64 5741990095351817038, ; 181: Microsoft.Extensions.Localization.Abstractions.dll => 0x4fafa591c141a34e => 107
	i64 5979151488806146654, ; 182: System.Formats.Asn1 => 0x52fa3699a489d25e => 202
	i64 5984759512290286505, ; 183: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 260
	i64 6191169322606060163, ; 184: Microsoft.Azure.ServiceBus.dll => 0x55eb73b25a3ae283 => 85
	i64 6200764641006662125, ; 185: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 33
	i64 6222399776351216807, ; 186: System.Text.Json.dll => 0x565a67a0ffe264a7 => 268
	i64 6251069312384999852, ; 187: System.Transactions.Local => 0x56c0426b870da1ac => 278
	i64 6278736998281604212, ; 188: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 231
	i64 6284145129771520194, ; 189: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 235
	i64 6300676701234028427, ; 190: es\Microsoft.Maui.Controls.resources.dll => 0x57708013cda25f8b => 16
	i64 6357457916754632952, ; 191: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 44
	i64 6401687960814735282, ; 192: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 158
	i64 6459596646370694080, ; 193: Microsoft.AspNetCore.JsonPatch.dll => 0x59a518eceb3ad3c0 => 67
	i64 6471714727257221498, ; 194: fi\Microsoft.Maui.Controls.resources.dll => 0x59d026417dd4a97a => 17
	i64 6478287442656530074, ; 195: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 21
	i64 6504860066809920875, ; 196: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 148
	i64 6548213210057960872, ; 197: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 154
	i64 6560151584539558821, ; 198: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 111
	i64 6574745649279418477, ; 199: Microsoft.IdentityModel.Clients.ActiveDirectory.dll => 0x5b3e305561d8406d => 118
	i64 6617685658146568858, ; 200: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 264
	i64 6702137467294796250, ; 201: Microsoft.AspNetCore.Mvc.Razor => 0x5d02c6845df149da => 73
	i64 6743165466166707109, ; 202: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 29
	i64 6786606130239981554, ; 203: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 198
	i64 6814185388980153342, ; 204: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 283
	i64 6832506761347760515, ; 205: ru\Microsoft.Data.SqlClient.resources.dll => 0x5ed1f0b303968183 => 7
	i64 6876862101832370452, ; 206: System.Xml.Linq => 0x5f6f85a57d108914 => 281
	i64 6894844156784520562, ; 207: System.Numerics.Vectors => 0x5faf683aead1ad72 => 229
	i64 6911788284027924527, ; 208: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x5feb9ad2f830f02f => 61
	i64 6920570528939222495, ; 209: Microsoft.AspNetCore.Components.WebView => 0x600ace3ab475a5df => 54
	i64 7060448593242414269, ; 210: System.Security.Cryptography.Xml => 0x61fbc096731edcbd => 143
	i64 7060896174307865760, ; 211: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 272
	i64 7083547580668757502, ; 212: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 233
	i64 7105430439328552570, ; 213: System.Security.Cryptography.Pkcs => 0x629b8f56a06d167a => 141
	i64 7112547816752919026, ; 214: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 209
	i64 7123594442286643413, ; 215: Microsoft.AspNetCore.Razor.Runtime => 0x62dc1767207138d5 => 79
	i64 7270811800166795866, ; 216: System.Linq => 0x64e71ccf51a90a5a => 214
	i64 7316205155833392065, ; 217: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 176
	i64 7331765743953618630, ; 218: Microsoft.AspNetCore.Http.dll => 0x65bfaa1948bba6c6 => 63
	i64 7338192458477945005, ; 219: System.Reflection => 0x65d67f295d0740ad => 240
	i64 7348123982286201829, ; 220: System.Memory.Data.dll => 0x65f9c7d471b2a3e5 => 139
	i64 7377312882064240630, ; 221: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 187
	i64 7473077275758116397, ; 222: Microsoft.DotNet.PlatformAbstractions => 0x67b5b430309b3e2d => 92
	i64 7488575175965059935, ; 223: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 281
	i64 7489048572193775167, ; 224: System.ObjectModel => 0x67ee71ff6b419e3f => 230
	i64 7496222613193209122, ; 225: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 138
	i64 7592577537120840276, ; 226: System.Diagnostics.Process => 0x695e410af5b2aa54 => 194
	i64 7654504624184590948, ; 227: System.Net.Http => 0x6a3a4366801b8264 => 216
	i64 7714652370974252055, ; 228: System.Private.CoreLib => 0x6b0ff375198b9c17 => 290
	i64 7735176074855944702, ; 229: Microsoft.CSharp => 0x6b58dda848e391fe => 175
	i64 7735352534559001595, ; 230: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 172
	i64 7742555799473854801, ; 231: it\Microsoft.Maui.Controls.resources.dll => 0x6b73157a51479951 => 24
	i64 7791074099216502080, ; 232: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 206
	i64 7793763988543076423, ; 233: it\Microsoft.Data.SqlClient.resources.dll => 0x6c29030df0577847 => 3
	i64 7824823231109474690, ; 234: Microsoft.AspNetCore.Authorization.Policy.dll => 0x6c975b4560812982 => 51
	i64 7836164640616011524, ; 235: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 147
	i64 7886756138387249641, ; 236: pt-BR\Microsoft.Data.SqlClient.resources.dll => 0x6d7362ec0ab419e9 => 6
	i64 7972383140441761405, ; 237: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 93
	i64 7975724199463739455, ; 238: sk\Microsoft.Maui.Controls.resources.dll => 0x6eaf76e6f785e03f => 35
	i64 8064050204834738623, ; 239: System.Collections.dll => 0x6fe942efa61731bf => 184
	i64 8073408692540562791, ; 240: ja\Microsoft.Data.SqlClient.resources.dll => 0x700a826e5d6e5d67 => 4
	i64 8083354569033831015, ; 241: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 157
	i64 8087206902342787202, ; 242: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 193
	i64 8108129031893776750, ; 243: ko\Microsoft.Maui.Controls.resources.dll => 0x7085dc65530f796e => 26
	i64 8113615946733131500, ; 244: System.Reflection.Extensions => 0x70995ab73cf916ec => 237
	i64 8167236081217502503, ; 245: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 291
	i64 8185542183669246576, ; 246: System.Collections => 0x7198e33f4794aa70 => 184
	i64 8234598844743906698, ; 247: Microsoft.Identity.Client.Extensions.Msal.dll => 0x72472c0540cd758a => 115
	i64 8246048515196606205, ; 248: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 129
	i64 8264926008854159966, ; 249: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 194
	i64 8290740647658429042, ; 250: System.Runtime.Extensions => 0x730ea0b15c929a72 => 243
	i64 8368701292315763008, ; 251: System.Security.Cryptography => 0x7423997c6fd56140 => 262
	i64 8386351099740279196, ; 252: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x74624de475b9d19c => 41
	i64 8399132193771933415, ; 253: Microsoft.Extensions.WebEncoders => 0x748fb63acf52cee7 => 113
	i64 8400357532724379117, ; 254: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 165
	i64 8410671156615598628, ; 255: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 236
	i64 8476857680833348370, ; 256: System.Security.Permissions.dll => 0x75a3d925fd9d0312 => 144
	i64 8513291706828295435, ; 257: Microsoft.SqlServer.Server => 0x762549b3b6c78d0b => 131
	i64 8518412311883997971, ; 258: System.Collections.Immutable => 0x76377add7c28e313 => 181
	i64 8519205576476231015, ; 259: Microsoft.AspNetCore.Mvc.Core.dll => 0x763a4c55ca648567 => 70
	i64 8563666267364444763, ; 260: System.Private.Uri => 0x76d841191140ca5b => 232
	i64 8611142787134128904, ; 261: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x7780ecbdb94c0308 => 61
	i64 8626175481042262068, ; 262: Java.Interop => 0x77b654e585b55834 => 291
	i64 8638972117149407195, ; 263: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 175
	i64 8639588376636138208, ; 264: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 164
	i64 8648495978913578441, ; 265: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 177
	i64 8677882282824630478, ; 266: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 31
	i64 8725526185868997716, ; 267: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 193
	i64 8941376889969657626, ; 268: System.Xml.XDocument => 0x7c1626e87187471a => 283
	i64 8954753533646919997, ; 269: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 249
	i64 8955323522379913726, ; 270: Microsoft.Identity.Client => 0x7c47b34bd82799fe => 114
	i64 9045785047181495996, ; 271: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 41
	i64 9052662452269567435, ; 272: Microsoft.IdentityModel.Protocols => 0x7da184898b0b4dcb => 121
	i64 9111603110219107042, ; 273: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 94
	i64 9138683372487561558, ; 274: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 258
	i64 9312692141327339315, ; 275: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 170
	i64 9324707631942237306, ; 276: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 146
	i64 9363564275759486853, ; 277: el\Microsoft.Maui.Controls.resources.dll => 0x81f21019382e9785 => 15
	i64 9413000421947348542, ; 278: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0x82a1b202f4c6163e => 60
	i64 9427266486299436557, ; 279: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 120
	i64 9468215723722196442, ; 280: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 284
	i64 9513793942805897923, ; 281: zh-Hans\Microsoft.Data.SqlClient.resources => 0x8407c92f4b3562c3 => 8
	i64 9551379474083066910, ; 282: uk\Microsoft.Maui.Controls.resources.dll => 0x848d5106bbadb41e => 39
	i64 9584643793929893533, ; 283: System.IO.dll => 0x85037ebfbbd7f69d => 212
	i64 9659729154652888475, ; 284: System.Text.RegularExpressions => 0x860e407c9991dd9b => 269
	i64 9667360217193089419, ; 285: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 195
	i64 9678050649315576968, ; 286: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 151
	i64 9702891218465930390, ; 287: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 182
	i64 9773637193738963987, ; 288: ca\Microsoft.Maui.Controls.resources.dll => 0x87a2ef3ea85b4c13 => 11
	i64 9808709177481450983, ; 289: Mono.Android.dll => 0x881f890734e555e7 => 293
	i64 9819168441846169364, ; 290: Microsoft.IdentityModel.Protocols.dll => 0x8844b1ac75f77f14 => 121
	i64 9836529246295212050, ; 291: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 238
	i64 9864374015518639636, ; 292: Microsoft.AspNetCore.Cryptography.Internal => 0x88e54be746950614 => 56
	i64 9901312892585205432, ; 293: ko\Microsoft.Data.SqlClient.resources.dll => 0x8968879dcc895eb8 => 5
	i64 9938556199016768930, ; 294: Microsoft.AspNetCore.Routing => 0x89ecd834cea6a5a2 => 81
	i64 9956195530459977388, ; 295: Microsoft.Maui => 0x8a2b8315b36616ac => 127
	i64 9994308163963284983, ; 296: Newtonsoft.Json.Bson.dll => 0x8ab2ea52b0d16df7 => 133
	i64 10038780035334861115, ; 297: System.Net.Http.dll => 0x8b50e941206af13b => 216
	i64 10051358222726253779, ; 298: System.Private.Xml => 0x8b7d990c97ccccd3 => 234
	i64 10078727084704864206, ; 299: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 227
	i64 10089571585547156312, ; 300: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 206
	i64 10092835686693276772, ; 301: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 125
	i64 10105485790837105934, ; 302: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 272
	i64 10143853363526200146, ; 303: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 13
	i64 10209869394718195525, ; 304: nl\Microsoft.Maui.Controls.resources.dll => 0x8db0be1ecb4f7f45 => 29
	i64 10229024438826829339, ; 305: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 154
	i64 10236703004850800690, ; 306: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 223
	i64 10243523786148452761, ; 307: Microsoft.AspNetCore.Http.Abstractions => 0x8e284e9c69a49999 => 64
	i64 10245369515835430794, ; 308: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 236
	i64 10357309525532190134, ; 309: Microsoft.AspNetCore.Mvc.RazorPages.dll => 0x8fbc8e235a1da5b6 => 75
	i64 10360651442923773544, ; 310: System.Text.Encoding => 0x8fc86d98211c1e68 => 266
	i64 10364469296367737616, ; 311: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 235
	i64 10406448008575299332, ; 312: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 173
	i64 10430153318873392755, ; 313: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 152
	i64 10447083246144586668, ; 314: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 87
	i64 10458986597687352396, ; 315: Microsoft.AspNetCore.Routing.Abstractions => 0x9125c8e581b9dc4c => 82
	i64 10506226065143327199, ; 316: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 11
	i64 10521980565667308266, ; 317: Microsoft.AspNetCore.Razor.dll => 0x920595939e29e2ea => 77
	i64 10546663366131771576, ; 318: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 249
	i64 10566960649245365243, ; 319: System.Globalization.dll => 0x92a562b96dcd13fb => 203
	i64 10595762989148858956, ; 320: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 284
	i64 10670374202010151210, ; 321: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 176
	i64 10714184849103829812, ; 322: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 243
	i64 10734191584620811116, ; 323: Microsoft.Extensions.FileProviders.Embedded.dll => 0x94f7825fc04f936c => 102
	i64 10761706286639228993, ; 324: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0x955942d988382841 => 43
	i64 10785150219063592792, ; 325: System.Net.Primitives => 0x95ac8cfb68830758 => 220
	i64 10858124219977111934, ; 326: de\Microsoft.Data.SqlClient.resources.dll => 0x96afce7302cd197e => 0
	i64 10889380495983713167, ; 327: Microsoft.Data.SqlClient.dll => 0x971ed9dddf2d1b8f => 91
	i64 10929237632997888614, ; 328: Microsoft.AspNetCore.Html.Abstractions => 0x97ac73b8bcab9266 => 62
	i64 10964653383833615866, ; 329: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 199
	i64 10972388274974066310, ; 330: Microsoft.AspNetCore.Razor.Language => 0x9845c1007b7d8686 => 78
	i64 11002576679268595294, ; 331: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 109
	i64 11009005086950030778, ; 332: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 127
	i64 11023048688141570732, ; 333: System.Core => 0x98f9bc61168392ac => 190
	i64 11037814507248023548, ; 334: System.Xml => 0x992e31d0412bf7fc => 286
	i64 11050168729868392624, ; 335: Microsoft.AspNetCore.Http.Features => 0x995a15e9dbef58b0 => 66
	i64 11051904132540108364, ; 336: Microsoft.Extensions.FileProviders.Composite.dll => 0x99604040c7b98e4c => 101
	i64 11103970607964515343, ; 337: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 22
	i64 11156122287428000958, ; 338: th\Microsoft.Maui.Controls.resources.dll => 0x9ad2821cdcf6dcbe => 37
	i64 11157797727133427779, ; 339: fr\Microsoft.Maui.Controls.resources.dll => 0x9ad875ea9172e843 => 18
	i64 11162124722117608902, ; 340: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 169
	i64 11183417087873056340, ; 341: ko\Microsoft.Data.SqlClient.resources => 0x9b337a96d1b4fe54 => 5
	i64 11218356222449480316, ; 342: Microsoft.AspNetCore.Components => 0x9baf9b8c02e4f27c => 52
	i64 11220793807500858938, ; 343: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 25
	i64 11226290749488709958, ; 344: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 111
	i64 11329751333533450475, ; 345: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 276
	i64 11340910727871153756, ; 346: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 153
	i64 11341245327015630248, ; 347: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 135
	i64 11347436699239206956, ; 348: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 285
	i64 11369118378396596751, ; 349: de\Microsoft.Data.SqlClient.resources => 0x9dc738edd1b1ba0f => 0
	i64 11432101114902388181, ; 350: System.AppContext => 0x9ea6fb64e61a9dd5 => 178
	i64 11448276831755070604, ; 351: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 196
	i64 11485890710487134646, ; 352: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 245
	i64 11517440453979132662, ; 353: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 116
	i64 11518296021396496455, ; 354: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 23
	i64 11529969570048099689, ; 355: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 169
	i64 11530571088791430846, ; 356: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 108
	i64 11564861549255168062, ; 357: Microsoft.CodeAnalysis.dll => 0xa07ea44e47ed903e => 88
	i64 11597940890313164233, ; 358: netstandard => 0xa0f429ca8d1805c9 => 289
	i64 11743665907891708234, ; 359: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 273
	i64 11855031688536399763, ; 360: vi\Microsoft.Maui.Controls.resources.dll => 0xa485888294361f93 => 40
	i64 11959533830108555580, ; 361: Microsoft.IdentityModel.Clients.ActiveDirectory.Platform => 0xa5f8cca776e3293c => 117
	i64 12011556116648931059, ; 362: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 142
	i64 12040886584167504988, ; 363: System.Net.ServicePoint => 0xa719d28d8e121c5c => 223
	i64 12048689113179125827, ; 364: Microsoft.Extensions.FileProviders.Physical => 0xa7358ae968287843 => 103
	i64 12058074296353848905, ; 365: Microsoft.Extensions.FileSystemGlobbing.dll => 0xa756e2afa5707e49 => 104
	i64 12094367927612810875, ; 366: it\Microsoft.Data.SqlClient.resources => 0xa7d7d38d2c3d267b => 3
	i64 12102847907131387746, ; 367: System.Buffers => 0xa7f5f40c43256f62 => 179
	i64 12123043025855404482, ; 368: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 237
	i64 12145679461940342714, ; 369: System.Text.Json => 0xa88e1f1ebcb62fba => 268
	i64 12198439281774268251, ; 370: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0xa9498fe58c538f5b => 122
	i64 12201331334810686224, ; 371: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 250
	i64 12224491885263837567, ; 372: Scanner.dll => 0xa9a61e99fccbd97f => 174
	i64 12269460666702402136, ; 373: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 181
	i64 12307931450793293627, ; 374: Microsoft.Azure.Amqp.dll => 0xaace8e71bc64773b => 84
	i64 12310909314810916455, ; 375: Microsoft.Extensions.Localization.dll => 0xaad922cbbb5a2e67 => 106
	i64 12439275739440478309, ; 376: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 119
	i64 12441092376399691269, ; 377: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0xaca7a399c11fbe05 => 48
	i64 12451044538927396471, ; 378: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 156
	i64 12466513435562512481, ; 379: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 161
	i64 12475113361194491050, ; 380: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 44
	i64 12493213219680520345, ; 381: Microsoft.Data.SqlClient => 0xad60cf3b3e458899 => 91
	i64 12517810545449516888, ; 382: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 198
	i64 12538491095302438457, ; 383: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 149
	i64 12550732019250633519, ; 384: System.IO.Compression => 0xae2d28465e8e1b2f => 205
	i64 12699999919562409296, ; 385: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 195
	i64 12700543734426720211, ; 386: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 150
	i64 12708238894395270091, ; 387: System.IO => 0xb05cbbf17d3ba3cb => 212
	i64 12708922737231849740, ; 388: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 265
	i64 12717050818822477433, ; 389: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 251
	i64 12742166704152928552, ; 390: Microsoft.CodeAnalysis.Razor.dll => 0xb0d5451b45d86128 => 90
	i64 12835242264250840079, ; 391: System.IO.Pipes => 0xb21ff0d5d6c0740f => 211
	i64 12843321153144804894, ; 392: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 112
	i64 12843770487262409629, ; 393: System.AppContext.dll => 0xb23e3d357debf39d => 178
	i64 12859557719246324186, ; 394: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 226
	i64 12989346753972519995, ; 395: ar\Microsoft.Maui.Controls.resources.dll => 0xb4436e0d5ee7c43b => 10
	i64 12991459499837607210, ; 396: Microsoft.CodeAnalysis => 0xb44aef9559b1cd2a => 88
	i64 13003699287675270979, ; 397: Microsoft.AspNetCore.Components.WebView.Maui => 0xb4766b9b07e27743 => 55
	i64 13005833372463390146, ; 398: pt-BR\Microsoft.Maui.Controls.resources.dll => 0xb47e008b5d99ddc2 => 31
	i64 13068258254871114833, ; 399: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 248
	i64 13070736518021853291, ; 400: Microsoft.AspNetCore.JsonPatch => 0xb564959c856b306b => 67
	i64 13086625805112021739, ; 401: Microsoft.AspNetCore.DataProtection.Abstractions.dll => 0xb59d08d5762992eb => 58
	i64 13162471042547327635, ; 402: System.Security.Permissions => 0xb6aa7dace9662293 => 144
	i64 13308002692117796025, ; 403: Microsoft.AspNetCore.Routing.Abstractions.dll => 0xb8af85f08d9f94b9 => 82
	i64 13343850469010654401, ; 404: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 292
	i64 13370592475155966277, ; 405: System.Runtime.Serialization => 0xb98de304062ea945 => 252
	i64 13381594904270902445, ; 406: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 19
	i64 13404984788036896679, ; 407: Microsoft.AspNetCore.Http.Abstractions.dll => 0xba0812a45e7447a7 => 64
	i64 13431476299110033919, ; 408: System.Net.WebClient => 0xba663087f18829ff => 225
	i64 13463706743370286408, ; 409: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 231
	i64 13465488254036897740, ; 410: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 172
	i64 13540124433173649601, ; 411: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 40
	i64 13550417756503177631, ; 412: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 100
	i64 13572454107664307259, ; 413: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 166
	i64 13618112415141049676, ; 414: Microsoft.AspNetCore.Mvc.Core => 0xbcfd4116f7d1b54c => 70
	i64 13702626353344114072, ; 415: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 197
	i64 13710614125866346983, ; 416: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 254
	i64 13717397318615465333, ; 417: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 186
	i64 13742054908850494594, ; 418: Azure.Identity => 0xbeb596218df25c82 => 46
	i64 13881769479078963060, ; 419: System.Console.dll => 0xc0a5f3cade5c6774 => 189
	i64 13921917134693230900, ; 420: Microsoft.AspNetCore.WebUtilities => 0xc13495df5dd06934 => 83
	i64 13939962644205322370, ; 421: Microsoft.AspNetCore.Razor.Language.dll => 0xc174b22af612c082 => 78
	i64 13955418299340266673, ; 422: Microsoft.Extensions.DependencyModel.dll => 0xc1ab9b0118299cb1 => 99
	i64 13959074834287824816, ; 423: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 156
	i64 14082136096249122791, ; 424: Microsoft.AspNetCore.Metadata => 0xc36dcc2b4fa28fe7 => 68
	i64 14124974489674258913, ; 425: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 149
	i64 14125464355221830302, ; 426: System.Threading.dll => 0xc407bafdbc707a9e => 277
	i64 14212104595480609394, ; 427: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 257
	i64 14254574811015963973, ; 428: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 265
	i64 14261232074598307362, ; 429: Microsoft.AspNetCore.Mvc.Abstractions => 0xc5ea130339d6d622 => 69
	i64 14327695147300244862, ; 430: System.Reflection.dll => 0xc6d632d338eb4d7e => 240
	i64 14327709162229390963, ; 431: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 261
	i64 14346616798576884773, ; 432: Microsoft.Azure.ServiceBus => 0xc7196bf777d3bc25 => 85
	i64 14349907877893689639, ; 433: ro\Microsoft.Maui.Controls.resources.dll => 0xc7251d2f956ed127 => 33
	i64 14458689592244936066, ; 434: Scanner => 0xc8a7959427659d82 => 174
	i64 14461014870687870182, ; 435: System.Net.Requests.dll => 0xc8afd8683afdece6 => 221
	i64 14464374589798375073, ; 436: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 34
	i64 14491877563792607819, ; 437: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0xc91d7ddcee4fca4b => 42
	i64 14528548208938697926, ; 438: Microsoft.AspNetCore.Mvc.Abstractions.dll => 0xc99fc59ed7edc4c6 => 69
	i64 14533141687369379279, ; 439: zh-Hant\Microsoft.Data.SqlClient.resources => 0xc9b0175d6212adcf => 9
	i64 14551742072151931844, ; 440: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 267
	i64 14561513370130550166, ; 441: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 260
	i64 14569958227297576184, ; 442: Microsoft.AspNetCore.Mvc.Razor.Extensions => 0xca32e3d0125a24f8 => 74
	i64 14610046442689856844, ; 443: cs\Microsoft.Maui.Controls.resources.dll => 0xcac14fd5107d054c => 12
	i64 14622043554576106986, ; 444: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 248
	i64 14648804764802849406, ; 445: Azure.Identity.dll => 0xcb4b0252261f9a7e => 46
	i64 14669215534098758659, ; 446: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 97
	i64 14690985099581930927, ; 447: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 280
	i64 14705122255218365489, ; 448: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 26
	i64 14711489710198462279, ; 449: Microsoft.AspNetCore.Mvc.ViewFeatures.dll => 0xcc29b5f255319747 => 76
	i64 14735017007120366644, ; 450: ja\Microsoft.Maui.Controls.resources.dll => 0xcc7d4be604bfbc34 => 25
	i64 14744092281598614090, ; 451: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 42
	i64 14770036310768355310, ; 452: Microsoft.Azure.Services.AppAuthentication => 0xccf9b5c506f807ee => 86
	i64 14832630590065248058, ; 453: System.Security.Claims => 0xcdd816ef5d6e873a => 255
	i64 14852515768018889994, ; 454: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 153
	i64 14904040806490515477, ; 455: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 10
	i64 14912225920358050525, ; 456: System.Security.Principal.Windows => 0xcef2de7759506add => 263
	i64 14935719434541007538, ; 457: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 264
	i64 14954917835170835695, ; 458: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 98
	i64 14984936317414011727, ; 459: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 226
	i64 14987728460634540364, ; 460: System.IO.Compression.dll => 0xcfff1ba06622494c => 205
	i64 14997925763760621062, ; 461: Microsoft.AspNetCore.Razor.Runtime.dll => 0xd02356050ca18606 => 79
	i64 15015154896917945444, ; 462: System.Net.Security.dll => 0xd0608bd33642dc64 => 222
	i64 15076659072870671916, ; 463: System.ObjectModel.dll => 0xd13b0d8c1620662c => 230
	i64 15098643813271943940, ; 464: zh-Hant\Microsoft.Data.SqlClient.resources.dll => 0xd189288d58393b04 => 9
	i64 15111608613780139878, ; 465: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 27
	i64 15115185479366240210, ; 466: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 204
	i64 15133485256822086103, ; 467: System.Linq.dll => 0xd204f0a9127dd9d7 => 214
	i64 15138356091203993725, ; 468: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 116
	i64 15203009853192377507, ; 469: pt\Microsoft.Maui.Controls.resources.dll => 0xd2fbf0e9984b94a3 => 32
	i64 15227001540531775957, ; 470: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 96
	i64 15332518387094693223, ; 471: Microsoft.AspNetCore.Mvc.DataAnnotations.dll => 0xd4c80c3ce6eca567 => 71
	i64 15370028218478381000, ; 472: Microsoft.Extensions.Localization.Abstractions => 0xd54d4f3b162247c8 => 107
	i64 15370334346939861994, ; 473: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 152
	i64 15383240894167415497, ; 474: System.Memory.Data => 0xd57c4016df1c7ac9 => 139
	i64 15391712275433856905, ; 475: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 98
	i64 15427448221306938193, ; 476: Microsoft.AspNetCore.Components.Web => 0xd6194e6b4dbb6351 => 53
	i64 15440042012048828209, ; 477: pt-BR\Microsoft.Data.SqlClient.resources => 0xd6460c67b5472731 => 6
	i64 15475196252089753159, ; 478: System.Diagnostics.EventLog => 0xd6c2f1000b441e47 => 137
	i64 15481710163200268842, ; 479: Microsoft.Extensions.FileProviders.Composite => 0xd6da155e291b5a2a => 101
	i64 15526743539506359484, ; 480: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 266
	i64 15527772828719725935, ; 481: System.Console => 0xd77dbb1e38cd3d6f => 189
	i64 15530465045505749832, ; 482: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 217
	i64 15536481058354060254, ; 483: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 14
	i64 15541854775306130054, ; 484: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 261
	i64 15557562860424774966, ; 485: System.Net.Sockets => 0xd7e790fe7a6dc536 => 224
	i64 15565247197164990907, ; 486: Microsoft.AspNetCore.Http.Extensions => 0xd802dddb8c29f1bb => 65
	i64 15582737692548360875, ; 487: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 160
	i64 15592226634512578529, ; 488: Microsoft.AspNetCore.Authorization.dll => 0xd862b7834f81b7e1 => 50
	i64 15609085926864131306, ; 489: System.dll => 0xd89e9cf3334914ea => 287
	i64 15620595871140898079, ; 490: Microsoft.Extensions.DependencyModel => 0xd8c7812eef49651f => 99
	i64 15637608551555227372, ; 491: Microsoft.AspNetCore.Mvc.Razor.dll => 0xd903f220440f5eec => 73
	i64 15661133872274321916, ; 492: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 282
	i64 15710114879900314733, ; 493: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 177
	i64 15735700225633954557, ; 494: Microsoft.Extensions.Localization => 0xda606ffbe0f22afd => 106
	i64 15755368083429170162, ; 495: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 207
	i64 15783653065526199428, ; 496: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 15
	i64 15817206913877585035, ; 497: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 273
	i64 15841161113133006081, ; 498: Microsoft.Azure.Services.AppAuthentication.dll => 0xdbd71c1a32063d01 => 86
	i64 15847085070278954535, ; 499: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 270
	i64 15852824340364052161, ; 500: Microsoft.AspNetCore.Http.Features.dll => 0xdc008bbee610c6c1 => 66
	i64 15937190497610202713, ; 501: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 257
	i64 15963349826457351533, ; 502: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 271
	i64 16018552496348375205, ; 503: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 219
	i64 16027684189145026053, ; 504: Microsoft.AspNetCore.DataProtection => 0xde6dc5da0a224e05 => 57
	i64 16046481083542319511, ; 505: Microsoft.Extensions.ObjectPool => 0xdeb08d870f90b197 => 110
	i64 16056281320585338352, ; 506: ru\Microsoft.Maui.Controls.resources.dll => 0xded35eca8f3a9df0 => 34
	i64 16153500642854367575, ; 507: Microsoft.Extensions.WebEncoders.dll => 0xe02cc33ff060f157 => 113
	i64 16154507427712707110, ; 508: System => 0xe03056ea4e39aa26 => 287
	i64 16219561732052121626, ; 509: System.Net.Security => 0xe1177575db7c781a => 222
	i64 16273242250288839465, ; 510: Microsoft.Azure.Amqp => 0xe1d62b9b78583b29 => 84
	i64 16288847719894691167, ; 511: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 28
	i64 16321164108206115771, ; 512: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 109
	i64 16337011941688632206, ; 513: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 263
	i64 16344871930018146979, ; 514: Microsoft.AspNetCore.ResponseCaching.Abstractions => 0xe2d4a66be7fc2aa3 => 80
	i64 16454459195343277943, ; 515: System.Net.NetworkInformation => 0xe459fb756d988f77 => 219
	i64 16523284800709429098, ; 516: Microsoft.AspNetCore.DataProtection.dll => 0xe54e7ffb6ce5876a => 57
	i64 16540916324946374984, ; 517: fr\Microsoft.Data.SqlClient.resources => 0xe58d23c28fe37148 => 2
	i64 16586971685355653868, ; 518: Microsoft.AspNetCore.Mvc.RazorPages => 0xe630c2ddc5160aec => 75
	i64 16649148416072044166, ; 519: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 129
	i64 16677317093839702854, ; 520: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 165
	i64 16702652415771857902, ; 521: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 279
	i64 16765015072123548030, ; 522: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 196
	i64 16793451114543296636, ; 523: Microsoft.AspNetCore.Mvc.ViewFeatures => 0xe90e52d02b3db07c => 76
	i64 16803648858859583026, ; 524: ms\Microsoft.Maui.Controls.resources.dll => 0xe9328d9b8ab93632 => 27
	i64 16833383113903931215, ; 525: mscorlib => 0xe99c30c1484d7f4f => 288
	i64 16856067890322379635, ; 526: System.Data.Common.dll => 0xe9ecc87060889373 => 191
	i64 16890310621557459193, ; 527: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 269
	i64 16942731696432749159, ; 528: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 35
	i64 16945858842201062480, ; 529: Azure.Core => 0xeb2bc8d57f4e7c50 => 45
	i64 16998075588627545693, ; 530: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 163
	i64 17006954551347072385, ; 531: System.ClientModel => 0xec04d70ec8414d81 => 134
	i64 17008137082415910100, ; 532: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 182
	i64 17031351772568316411, ; 533: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 162
	i64 17047637518392099970, ; 534: Microsoft.AspNetCore.Antiforgery.dll => 0xec9560002f620482 => 47
	i64 17062143951396181894, ; 535: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 186
	i64 17079998892748052666, ; 536: Microsoft.AspNetCore.Components.dll => 0xed08587fce5018ba => 52
	i64 17118171214553292978, ; 537: System.Threading.Channels => 0xed8ff6060fc420b2 => 270
	i64 17126545051278881272, ; 538: Microsoft.Net.Http.Headers.dll => 0xedadb5fbdb33b1f8 => 130
	i64 17137864900836977098, ; 539: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 123
	i64 17161234552559372542, ; 540: zh-Hans\Microsoft.Data.SqlClient.resources.dll => 0xee28f3e6c47608fe => 8
	i64 17187273293601214786, ; 541: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 185
	i64 17197986060146327831, ; 542: Microsoft.Identity.Client.Extensions.Msal => 0xeeab8533ef244117 => 115
	i64 17202182880784296190, ; 543: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 259
	i64 17203614576212522419, ; 544: pl\Microsoft.Maui.Controls.resources.dll => 0xeebf844ef3e135b3 => 30
	i64 17205988430934219272, ; 545: Microsoft.Extensions.FileSystemGlobbing => 0xeec7f35113509a08 => 104
	i64 17230721278011714856, ; 546: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 233
	i64 17234219099804750107, ; 547: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 278
	i64 17260702271250283638, ; 548: System.Data.Common => 0xef8a5543bba6bc76 => 191
	i64 17310278548634113468, ; 549: hi\Microsoft.Maui.Controls.resources.dll => 0xf03a76a04e6695bc => 20
	i64 17311256152179951039, ; 550: Microsoft.AspNetCore.Mvc.Formatters.Json => 0xf03defc05e7b45bf => 72
	i64 17333249706306540043, ; 551: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 199
	i64 17338386382517543202, ; 552: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 227
	i64 17342750010158924305, ; 553: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 20
	i64 17371436720558481852, ; 554: System.Runtime.Caching => 0xf113bda8d710a1bc => 140
	i64 17470386307322966175, ; 555: System.Threading.Timer => 0xf27347c8d0d5709f => 276
	i64 17509662556995089465, ; 556: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 228
	i64 17514990004910432069, ; 557: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 18
	i64 17523946658117960076, ; 558: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 142
	i64 17558788868712318792, ; 559: es\Microsoft.Data.SqlClient.resources => 0xf3ad597215ae4748 => 1
	i64 17623389608345532001, ; 560: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 30
	i64 17627500474728259406, ; 561: System.Globalization => 0xf4a176498a351f4e => 203
	i64 17685921127322830888, ; 562: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 192
	i64 17704177640604968747, ; 563: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 161
	i64 17710060891934109755, ; 564: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 159
	i64 17712670374920797664, ; 565: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 245
	i64 17727630781806093631, ; 566: Microsoft.AspNetCore.Diagnostics.Abstractions => 0xf605324562d5253f => 59
	i64 17777860260071588075, ; 567: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 247
	i64 17790600151040787804, ; 568: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 120
	i64 17827813215687577648, ; 569: hr\Microsoft.Maui.Controls.resources.dll => 0xf7691da9f3129030 => 21
	i64 17830780619298983968, ; 570: Microsoft.AspNetCore.Razor => 0xf773a880713c5020 => 77
	i64 17838668724098252521, ; 571: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 179
	i64 17911643751311784505, ; 572: Microsoft.Net.Http.Headers => 0xf892f1178448ba39 => 130
	i64 17942426894774770628, ; 573: de\Microsoft.Maui.Controls.resources.dll => 0xf9004e329f771bc4 => 14
	i64 18017743553296241350, ; 574: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 93
	i64 18025913125965088385, ; 575: System.Threading => 0xfa28e87b91334681 => 277
	i64 18121036031235206392, ; 576: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 162
	i64 18131233042916175238, ; 577: Microsoft.IdentityModel.Clients.ActiveDirectory.Platform.dll => 0xfb9f14639ed7ed86 => 117
	i64 18146411883821974900, ; 578: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 202
	i64 18203743254473369877, ; 579: System.Security.Cryptography.Pkcs.dll => 0xfca0b00ad94c6915 => 141
	i64 18225059387460068507, ; 580: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 275
	i64 18245806341561545090, ; 581: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 180
	i64 18305135509493619199, ; 582: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 164
	i64 18324163916253801303, ; 583: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 24
	i64 18342408478508122430, ; 584: id\Microsoft.Maui.Controls.resources.dll => 0xfe8d53543697013e => 23
	i64 18358161419737137786, ; 585: he\Microsoft.Maui.Controls.resources.dll => 0xfec54a8ba8b6827a => 19
	i64 18428404840311395189, ; 586: System.Security.Cryptography.Xml.dll => 0xffbed8907bd99375 => 143
	i64 18439108438687598470 ; 587: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 238
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [588 x i32] [
	i32 92, ; 0
	i32 112, ; 1
	i32 293, ; 2
	i32 128, ; 3
	i32 105, ; 4
	i32 213, ; 5
	i32 150, ; 6
	i32 279, ; 7
	i32 167, ; 8
	i32 90, ; 9
	i32 59, ; 10
	i32 110, ; 11
	i32 239, ; 12
	i32 89, ; 13
	i32 114, ; 14
	i32 102, ; 15
	i32 274, ; 16
	i32 188, ; 17
	i32 22, ; 18
	i32 71, ; 19
	i32 155, ; 20
	i32 131, ; 21
	i32 80, ; 22
	i32 49, ; 23
	i32 239, ; 24
	i32 45, ; 25
	i32 171, ; 26
	i32 7, ; 27
	i32 201, ; 28
	i32 163, ; 29
	i32 208, ; 30
	i32 252, ; 31
	i32 220, ; 32
	i32 125, ; 33
	i32 217, ; 34
	i32 292, ; 35
	i32 274, ; 36
	i32 147, ; 37
	i32 160, ; 38
	i32 56, ; 39
	i32 132, ; 40
	i32 215, ; 41
	i32 232, ; 42
	i32 124, ; 43
	i32 146, ; 44
	i32 244, ; 45
	i32 16, ; 46
	i32 167, ; 47
	i32 87, ; 48
	i32 200, ; 49
	i32 38, ; 50
	i32 126, ; 51
	i32 89, ; 52
	i32 256, ; 53
	i32 159, ; 54
	i32 271, ; 55
	i32 210, ; 56
	i32 200, ; 57
	i32 132, ; 58
	i32 148, ; 59
	i32 155, ; 60
	i32 62, ; 61
	i32 180, ; 62
	i32 55, ; 63
	i32 209, ; 64
	i32 122, ; 65
	i32 158, ; 66
	i32 267, ; 67
	i32 242, ; 68
	i32 151, ; 69
	i32 253, ; 70
	i32 118, ; 71
	i32 145, ; 72
	i32 140, ; 73
	i32 286, ; 74
	i32 37, ; 75
	i32 123, ; 76
	i32 288, ; 77
	i32 218, ; 78
	i32 97, ; 79
	i32 12, ; 80
	i32 228, ; 81
	i32 124, ; 82
	i32 242, ; 83
	i32 119, ; 84
	i32 254, ; 85
	i32 135, ; 86
	i32 17, ; 87
	i32 2, ; 88
	i32 72, ; 89
	i32 4, ; 90
	i32 171, ; 91
	i32 51, ; 92
	i32 134, ; 93
	i32 251, ; 94
	i32 258, ; 95
	i32 105, ; 96
	i32 74, ; 97
	i32 50, ; 98
	i32 157, ; 99
	i32 229, ; 100
	i32 247, ; 101
	i32 224, ; 102
	i32 173, ; 103
	i32 100, ; 104
	i32 138, ; 105
	i32 128, ; 106
	i32 210, ; 107
	i32 95, ; 108
	i32 168, ; 109
	i32 94, ; 110
	i32 290, ; 111
	i32 32, ; 112
	i32 253, ; 113
	i32 96, ; 114
	i32 282, ; 115
	i32 95, ; 116
	i32 1, ; 117
	i32 289, ; 118
	i32 166, ; 119
	i32 54, ; 120
	i32 68, ; 121
	i32 108, ; 122
	i32 197, ; 123
	i32 103, ; 124
	i32 126, ; 125
	i32 259, ; 126
	i32 221, ; 127
	i32 215, ; 128
	i32 58, ; 129
	i32 250, ; 130
	i32 13, ; 131
	i32 234, ; 132
	i32 43, ; 133
	i32 188, ; 134
	i32 275, ; 135
	i32 255, ; 136
	i32 213, ; 137
	i32 133, ; 138
	i32 187, ; 139
	i32 48, ; 140
	i32 65, ; 141
	i32 60, ; 142
	i32 137, ; 143
	i32 38, ; 144
	i32 211, ; 145
	i32 47, ; 146
	i32 280, ; 147
	i32 136, ; 148
	i32 208, ; 149
	i32 285, ; 150
	i32 185, ; 151
	i32 145, ; 152
	i32 168, ; 153
	i32 201, ; 154
	i32 218, ; 155
	i32 246, ; 156
	i32 28, ; 157
	i32 36, ; 158
	i32 241, ; 159
	i32 241, ; 160
	i32 183, ; 161
	i32 83, ; 162
	i32 63, ; 163
	i32 183, ; 164
	i32 53, ; 165
	i32 136, ; 166
	i32 225, ; 167
	i32 246, ; 168
	i32 244, ; 169
	i32 192, ; 170
	i32 36, ; 171
	i32 190, ; 172
	i32 39, ; 173
	i32 207, ; 174
	i32 204, ; 175
	i32 262, ; 176
	i32 81, ; 177
	i32 49, ; 178
	i32 256, ; 179
	i32 170, ; 180
	i32 107, ; 181
	i32 202, ; 182
	i32 260, ; 183
	i32 85, ; 184
	i32 33, ; 185
	i32 268, ; 186
	i32 278, ; 187
	i32 231, ; 188
	i32 235, ; 189
	i32 16, ; 190
	i32 44, ; 191
	i32 158, ; 192
	i32 67, ; 193
	i32 17, ; 194
	i32 21, ; 195
	i32 148, ; 196
	i32 154, ; 197
	i32 111, ; 198
	i32 118, ; 199
	i32 264, ; 200
	i32 73, ; 201
	i32 29, ; 202
	i32 198, ; 203
	i32 283, ; 204
	i32 7, ; 205
	i32 281, ; 206
	i32 229, ; 207
	i32 61, ; 208
	i32 54, ; 209
	i32 143, ; 210
	i32 272, ; 211
	i32 233, ; 212
	i32 141, ; 213
	i32 209, ; 214
	i32 79, ; 215
	i32 214, ; 216
	i32 176, ; 217
	i32 63, ; 218
	i32 240, ; 219
	i32 139, ; 220
	i32 187, ; 221
	i32 92, ; 222
	i32 281, ; 223
	i32 230, ; 224
	i32 138, ; 225
	i32 194, ; 226
	i32 216, ; 227
	i32 290, ; 228
	i32 175, ; 229
	i32 172, ; 230
	i32 24, ; 231
	i32 206, ; 232
	i32 3, ; 233
	i32 51, ; 234
	i32 147, ; 235
	i32 6, ; 236
	i32 93, ; 237
	i32 35, ; 238
	i32 184, ; 239
	i32 4, ; 240
	i32 157, ; 241
	i32 193, ; 242
	i32 26, ; 243
	i32 237, ; 244
	i32 291, ; 245
	i32 184, ; 246
	i32 115, ; 247
	i32 129, ; 248
	i32 194, ; 249
	i32 243, ; 250
	i32 262, ; 251
	i32 41, ; 252
	i32 113, ; 253
	i32 165, ; 254
	i32 236, ; 255
	i32 144, ; 256
	i32 131, ; 257
	i32 181, ; 258
	i32 70, ; 259
	i32 232, ; 260
	i32 61, ; 261
	i32 291, ; 262
	i32 175, ; 263
	i32 164, ; 264
	i32 177, ; 265
	i32 31, ; 266
	i32 193, ; 267
	i32 283, ; 268
	i32 249, ; 269
	i32 114, ; 270
	i32 41, ; 271
	i32 121, ; 272
	i32 94, ; 273
	i32 258, ; 274
	i32 170, ; 275
	i32 146, ; 276
	i32 15, ; 277
	i32 60, ; 278
	i32 120, ; 279
	i32 284, ; 280
	i32 8, ; 281
	i32 39, ; 282
	i32 212, ; 283
	i32 269, ; 284
	i32 195, ; 285
	i32 151, ; 286
	i32 182, ; 287
	i32 11, ; 288
	i32 293, ; 289
	i32 121, ; 290
	i32 238, ; 291
	i32 56, ; 292
	i32 5, ; 293
	i32 81, ; 294
	i32 127, ; 295
	i32 133, ; 296
	i32 216, ; 297
	i32 234, ; 298
	i32 227, ; 299
	i32 206, ; 300
	i32 125, ; 301
	i32 272, ; 302
	i32 13, ; 303
	i32 29, ; 304
	i32 154, ; 305
	i32 223, ; 306
	i32 64, ; 307
	i32 236, ; 308
	i32 75, ; 309
	i32 266, ; 310
	i32 235, ; 311
	i32 173, ; 312
	i32 152, ; 313
	i32 87, ; 314
	i32 82, ; 315
	i32 11, ; 316
	i32 77, ; 317
	i32 249, ; 318
	i32 203, ; 319
	i32 284, ; 320
	i32 176, ; 321
	i32 243, ; 322
	i32 102, ; 323
	i32 43, ; 324
	i32 220, ; 325
	i32 0, ; 326
	i32 91, ; 327
	i32 62, ; 328
	i32 199, ; 329
	i32 78, ; 330
	i32 109, ; 331
	i32 127, ; 332
	i32 190, ; 333
	i32 286, ; 334
	i32 66, ; 335
	i32 101, ; 336
	i32 22, ; 337
	i32 37, ; 338
	i32 18, ; 339
	i32 169, ; 340
	i32 5, ; 341
	i32 52, ; 342
	i32 25, ; 343
	i32 111, ; 344
	i32 276, ; 345
	i32 153, ; 346
	i32 135, ; 347
	i32 285, ; 348
	i32 0, ; 349
	i32 178, ; 350
	i32 196, ; 351
	i32 245, ; 352
	i32 116, ; 353
	i32 23, ; 354
	i32 169, ; 355
	i32 108, ; 356
	i32 88, ; 357
	i32 289, ; 358
	i32 273, ; 359
	i32 40, ; 360
	i32 117, ; 361
	i32 142, ; 362
	i32 223, ; 363
	i32 103, ; 364
	i32 104, ; 365
	i32 3, ; 366
	i32 179, ; 367
	i32 237, ; 368
	i32 268, ; 369
	i32 122, ; 370
	i32 250, ; 371
	i32 174, ; 372
	i32 181, ; 373
	i32 84, ; 374
	i32 106, ; 375
	i32 119, ; 376
	i32 48, ; 377
	i32 156, ; 378
	i32 161, ; 379
	i32 44, ; 380
	i32 91, ; 381
	i32 198, ; 382
	i32 149, ; 383
	i32 205, ; 384
	i32 195, ; 385
	i32 150, ; 386
	i32 212, ; 387
	i32 265, ; 388
	i32 251, ; 389
	i32 90, ; 390
	i32 211, ; 391
	i32 112, ; 392
	i32 178, ; 393
	i32 226, ; 394
	i32 10, ; 395
	i32 88, ; 396
	i32 55, ; 397
	i32 31, ; 398
	i32 248, ; 399
	i32 67, ; 400
	i32 58, ; 401
	i32 144, ; 402
	i32 82, ; 403
	i32 292, ; 404
	i32 252, ; 405
	i32 19, ; 406
	i32 64, ; 407
	i32 225, ; 408
	i32 231, ; 409
	i32 172, ; 410
	i32 40, ; 411
	i32 100, ; 412
	i32 166, ; 413
	i32 70, ; 414
	i32 197, ; 415
	i32 254, ; 416
	i32 186, ; 417
	i32 46, ; 418
	i32 189, ; 419
	i32 83, ; 420
	i32 78, ; 421
	i32 99, ; 422
	i32 156, ; 423
	i32 68, ; 424
	i32 149, ; 425
	i32 277, ; 426
	i32 257, ; 427
	i32 265, ; 428
	i32 69, ; 429
	i32 240, ; 430
	i32 261, ; 431
	i32 85, ; 432
	i32 33, ; 433
	i32 174, ; 434
	i32 221, ; 435
	i32 34, ; 436
	i32 42, ; 437
	i32 69, ; 438
	i32 9, ; 439
	i32 267, ; 440
	i32 260, ; 441
	i32 74, ; 442
	i32 12, ; 443
	i32 248, ; 444
	i32 46, ; 445
	i32 97, ; 446
	i32 280, ; 447
	i32 26, ; 448
	i32 76, ; 449
	i32 25, ; 450
	i32 42, ; 451
	i32 86, ; 452
	i32 255, ; 453
	i32 153, ; 454
	i32 10, ; 455
	i32 263, ; 456
	i32 264, ; 457
	i32 98, ; 458
	i32 226, ; 459
	i32 205, ; 460
	i32 79, ; 461
	i32 222, ; 462
	i32 230, ; 463
	i32 9, ; 464
	i32 27, ; 465
	i32 204, ; 466
	i32 214, ; 467
	i32 116, ; 468
	i32 32, ; 469
	i32 96, ; 470
	i32 71, ; 471
	i32 107, ; 472
	i32 152, ; 473
	i32 139, ; 474
	i32 98, ; 475
	i32 53, ; 476
	i32 6, ; 477
	i32 137, ; 478
	i32 101, ; 479
	i32 266, ; 480
	i32 189, ; 481
	i32 217, ; 482
	i32 14, ; 483
	i32 261, ; 484
	i32 224, ; 485
	i32 65, ; 486
	i32 160, ; 487
	i32 50, ; 488
	i32 287, ; 489
	i32 99, ; 490
	i32 73, ; 491
	i32 282, ; 492
	i32 177, ; 493
	i32 106, ; 494
	i32 207, ; 495
	i32 15, ; 496
	i32 273, ; 497
	i32 86, ; 498
	i32 270, ; 499
	i32 66, ; 500
	i32 257, ; 501
	i32 271, ; 502
	i32 219, ; 503
	i32 57, ; 504
	i32 110, ; 505
	i32 34, ; 506
	i32 113, ; 507
	i32 287, ; 508
	i32 222, ; 509
	i32 84, ; 510
	i32 28, ; 511
	i32 109, ; 512
	i32 263, ; 513
	i32 80, ; 514
	i32 219, ; 515
	i32 57, ; 516
	i32 2, ; 517
	i32 75, ; 518
	i32 129, ; 519
	i32 165, ; 520
	i32 279, ; 521
	i32 196, ; 522
	i32 76, ; 523
	i32 27, ; 524
	i32 288, ; 525
	i32 191, ; 526
	i32 269, ; 527
	i32 35, ; 528
	i32 45, ; 529
	i32 163, ; 530
	i32 134, ; 531
	i32 182, ; 532
	i32 162, ; 533
	i32 47, ; 534
	i32 186, ; 535
	i32 52, ; 536
	i32 270, ; 537
	i32 130, ; 538
	i32 123, ; 539
	i32 8, ; 540
	i32 185, ; 541
	i32 115, ; 542
	i32 259, ; 543
	i32 30, ; 544
	i32 104, ; 545
	i32 233, ; 546
	i32 278, ; 547
	i32 191, ; 548
	i32 20, ; 549
	i32 72, ; 550
	i32 199, ; 551
	i32 227, ; 552
	i32 20, ; 553
	i32 140, ; 554
	i32 276, ; 555
	i32 228, ; 556
	i32 18, ; 557
	i32 142, ; 558
	i32 1, ; 559
	i32 30, ; 560
	i32 203, ; 561
	i32 192, ; 562
	i32 161, ; 563
	i32 159, ; 564
	i32 245, ; 565
	i32 59, ; 566
	i32 247, ; 567
	i32 120, ; 568
	i32 21, ; 569
	i32 77, ; 570
	i32 179, ; 571
	i32 130, ; 572
	i32 14, ; 573
	i32 93, ; 574
	i32 277, ; 575
	i32 162, ; 576
	i32 117, ; 577
	i32 202, ; 578
	i32 141, ; 579
	i32 275, ; 580
	i32 180, ; 581
	i32 164, ; 582
	i32 24, ; 583
	i32 23, ; 584
	i32 19, ; 585
	i32 143, ; 586
	i32 238 ; 587
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

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
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
