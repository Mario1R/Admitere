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

@assembly_image_cache = dso_local local_unnamed_addr global [335 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [664 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 20734756, ; 3: UraniumUI.Dialogs.Mopups => 0x13c6324 => 211
	i32 32687329, ; 4: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 255
	i32 34715100, ; 5: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 289
	i32 34839235, ; 6: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 38948123, ; 7: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 297
	i32 39485524, ; 8: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42244203, ; 9: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 306
	i32 42639949, ; 10: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 11: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 12: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 330
	i32 68219467, ; 13: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 14: Microsoft.Maui.Graphics.dll => 0x44bb714 => 196
	i32 82292897, ; 15: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83839681, ; 16: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 314
	i32 101534019, ; 17: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 273
	i32 117431740, ; 18: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 19: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 273
	i32 122350210, ; 20: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 127863914, ; 21: UraniumUI.Material => 0x79f0c6a => 213
	i32 134690465, ; 22: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 293
	i32 136584136, ; 23: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 329
	i32 140062828, ; 24: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 322
	i32 142721839, ; 25: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 26: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 27: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 28: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 229
	i32 176265551, ; 29: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 30: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 275
	i32 184328833, ; 31: System.ValueTuple.dll => 0xafca281 => 151
	i32 205061960, ; 32: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 33: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 227
	i32 220171995, ; 34: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 35: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 249
	i32 230752869, ; 36: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 37: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 38: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 39: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 40: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 232
	i32 276479776, ; 41: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 42: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 251
	i32 280482487, ; 43: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 248
	i32 291076382, ; 44: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 45: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 46: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 327
	i32 318968648, ; 47: Xamarin.AndroidX.Activity.dll => 0x13031348 => 218
	i32 321597661, ; 48: System.Numerics => 0x132b30dd => 83
	i32 321963286, ; 49: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 305
	i32 331603304, ; 50: SixLabors.Fonts => 0x13c3dd68 => 200
	i32 342366114, ; 51: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 250
	i32 347068432, ; 52: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 207
	i32 360082299, ; 53: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 54: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 55: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 56: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 57: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 58: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 59: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 60: _Microsoft.Android.Resource.Designer => 0x17969339 => 331
	i32 403441872, ; 61: WindowsBase => 0x180c08d0 => 165
	i32 409257351, ; 62: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 325
	i32 441335492, ; 63: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 233
	i32 442565967, ; 64: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 65: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 246
	i32 451504562, ; 66: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 67: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 68: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 69: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 70: System.dll => 0x1bff388e => 164
	i32 476646585, ; 71: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 248
	i32 486930444, ; 72: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 261
	i32 489220957, ; 73: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 303
	i32 498788369, ; 74: System.ObjectModel => 0x1dbae811 => 84
	i32 513247710, ; 75: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 190
	i32 525008092, ; 76: SkiaSharp.dll => 0x1f4afcdc => 203
	i32 526420162, ; 77: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 78: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 293
	i32 530272170, ; 79: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 538707440, ; 80: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 324
	i32 539058512, ; 81: Microsoft.Extensions.Logging => 0x20216150 => 186
	i32 540030774, ; 82: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 83: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 84: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 85: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 86: Jsr305Binding => 0x213954e7 => 286
	i32 569601784, ; 87: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 284
	i32 577335427, ; 88: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 597488923, ; 89: CommunityToolkit.Maui => 0x239cf51b => 175
	i32 601371474, ; 90: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 91: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 92: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 93: Xamarin.AndroidX.CustomView => 0x2568904f => 238
	i32 627931235, ; 94: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 316
	i32 639843206, ; 95: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 244
	i32 643868501, ; 96: System.Net => 0x2660a755 => 81
	i32 662205335, ; 97: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 98: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 280
	i32 666292255, ; 99: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 225
	i32 672442732, ; 100: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 101: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 102: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 103: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 295
	i32 693804605, ; 104: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 105: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 106: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 290
	i32 700358131, ; 107: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 720511267, ; 108: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 294
	i32 722857257, ; 109: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 110: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 748832960, ; 111: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 205
	i32 752232764, ; 112: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 113: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 215
	i32 759454413, ; 114: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 115: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 116: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 117: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 322
	i32 789151979, ; 118: Microsoft.Extensions.Options => 0x2f0980eb => 189
	i32 790371945, ; 119: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 239
	i32 804715423, ; 120: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 121: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 253
	i32 823281589, ; 122: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 123: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 124: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 125: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 126: Xamarin.AndroidX.Print => 0x3246f6cd => 266
	i32 864169614, ; 127: Plainer.Maui => 0x33822e8e => 198
	i32 869139383, ; 128: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 307
	i32 873119928, ; 129: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 130: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 131: System.Net.Http.Json => 0x3463c971 => 63
	i32 880668424, ; 132: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 321
	i32 904024072, ; 133: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 134: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 918734561, ; 135: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 318
	i32 928116545, ; 136: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 289
	i32 952186615, ; 137: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 138: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 294
	i32 961460050, ; 139: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 311
	i32 966729478, ; 140: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 287
	i32 967690846, ; 141: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 250
	i32 975236339, ; 142: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 143: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 144: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 145: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 990727110, ; 146: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 320
	i32 992768348, ; 147: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 148: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 149: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 150: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 270
	i32 1019214401, ; 151: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 152: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 185
	i32 1031528504, ; 153: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 288
	i32 1035644815, ; 154: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 223
	i32 1036536393, ; 155: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1039431970, ; 156: Maui.DataGrid => 0x3df47922 => 173
	i32 1043950537, ; 157: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 301
	i32 1044663988, ; 158: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 159: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 257
	i32 1067306892, ; 160: GoogleGson => 0x3f9dcf8c => 179
	i32 1082857460, ; 161: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 162: Xamarin.Kotlin.StdLib => 0x409e66d8 => 291
	i32 1098259244, ; 163: System => 0x41761b2c => 164
	i32 1108272742, ; 164: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 323
	i32 1117529484, ; 165: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 317
	i32 1118262833, ; 166: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 313
	i32 1121599056, ; 167: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 256
	i32 1127624469, ; 168: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 188
	i32 1149092582, ; 169: Xamarin.AndroidX.Window => 0x447dc2e6 => 283
	i32 1168523401, ; 170: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 319
	i32 1170634674, ; 171: System.Web.dll => 0x45c677b2 => 153
	i32 1174494498, ; 172: Admitere => 0x46015d22 => 0
	i32 1175144683, ; 173: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 279
	i32 1178241025, ; 174: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 264
	i32 1204270330, ; 175: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 225
	i32 1208641965, ; 176: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1214827643, ; 177: CommunityToolkit.Mvvm => 0x4868cc7b => 177
	i32 1219128291, ; 178: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1236081054, ; 179: UraniumUI.Blurs => 0x49ad199e => 210
	i32 1243150071, ; 180: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 284
	i32 1253011324, ; 181: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 182: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 299
	i32 1264511973, ; 183: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 274
	i32 1267360935, ; 184: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 278
	i32 1269851834, ; 185: BouncyCastle.Crypto => 0x4bb066ba => 199
	i32 1273260888, ; 186: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 230
	i32 1275534314, ; 187: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 295
	i32 1278448581, ; 188: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 222
	i32 1292207520, ; 189: SQLitePCLRaw.core.dll => 0x4d0585a0 => 206
	i32 1293217323, ; 190: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 241
	i32 1308624726, ; 191: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 308
	i32 1309188875, ; 192: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 193: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 283
	i32 1324164729, ; 194: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 195: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1336711579, ; 196: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 328
	i32 1364015309, ; 197: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 198: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 329
	i32 1376866003, ; 199: Xamarin.AndroidX.SavedState => 0x52114ed3 => 270
	i32 1379779777, ; 200: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 201: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 202: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 234
	i32 1408764838, ; 203: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 204: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1420150253, ; 205: UraniumUI.Icons.MaterialIcons.dll => 0x54a5c5ed => 212
	i32 1422545099, ; 206: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 207: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 297
	i32 1434145427, ; 208: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 209: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 287
	i32 1439761251, ; 210: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 211: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 212: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 213: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 214: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 215: es\Microsoft.Maui.Controls.resources => 0x57152abe => 303
	i32 1461234159, ; 216: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 217: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 218: System.IO.Compression.dll => 0x57261233 => 46
	i32 1462944030, ; 219: InputKit.Maui => 0x5732c11e => 181
	i32 1469204771, ; 220: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 224
	i32 1470490898, ; 221: Microsoft.Extensions.Primitives => 0x57a5e912 => 190
	i32 1479771757, ; 222: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 223: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 224: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1488290336, ; 225: SixLabors.ImageSharp.dll => 0x58b58220 => 201
	i32 1490025113, ; 226: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 271
	i32 1502997681, ; 227: GemBox.Spreadsheet => 0x5995ecb1 => 178
	i32 1526286932, ; 228: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 327
	i32 1536373174, ; 229: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 230: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 231: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 232: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1565862583, ; 233: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 234: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 235: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 236: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 237: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 240
	i32 1592978981, ; 238: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1596753216, ; 239: BouncyCastle.Crypto.dll => 0x5f2c8540 => 199
	i32 1597949149, ; 240: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 288
	i32 1601112923, ; 241: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 242: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 243: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 244: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 260
	i32 1622358360, ; 245: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 246: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 282
	i32 1634654947, ; 247: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 176
	i32 1635184631, ; 248: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 244
	i32 1636350590, ; 249: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 237
	i32 1639515021, ; 250: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 251: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 252: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 253: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 254: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 276
	i32 1658251792, ; 255: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 285
	i32 1667453763, ; 256: Mopups.dll => 0x63635343 => 197
	i32 1670060433, ; 257: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 232
	i32 1675553242, ; 258: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 259: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 260: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 261: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 262: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 263: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 264: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 292
	i32 1701541528, ; 265: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1711441057, ; 266: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 207
	i32 1720223769, ; 267: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 253
	i32 1726116996, ; 268: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 269: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 270: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 228
	i32 1743415430, ; 271: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 298
	i32 1744735666, ; 272: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 273: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 274: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1751118296, ; 275: UraniumUI.Blurs.dll => 0x685ff1d8 => 210
	i32 1758240030, ; 276: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 277: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 278: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 279: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 275
	i32 1770582343, ; 280: Microsoft.Extensions.Logging.dll => 0x6988f147 => 186
	i32 1776026572, ; 281: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 282: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 283: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 284: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 314
	i32 1788241197, ; 285: Xamarin.AndroidX.Fragment => 0x6a96652d => 246
	i32 1793755602, ; 286: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 306
	i32 1808609942, ; 287: Xamarin.AndroidX.Loader => 0x6bcd3296 => 260
	i32 1813058853, ; 288: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 291
	i32 1813201214, ; 289: Xamarin.Google.Android.Material => 0x6c13413e => 285
	i32 1818569960, ; 290: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 265
	i32 1818787751, ; 291: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 292: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 293: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 294: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 187
	i32 1834272028, ; 295: UraniumUI.Dialogs.Mopups.dll => 0x6d54c51c => 211
	i32 1847515442, ; 296: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 215
	i32 1853025655, ; 297: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 323
	i32 1858542181, ; 298: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 299: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 300: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 305
	i32 1879696579, ; 301: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 302: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 226
	i32 1888955245, ; 303: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 304: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1893218855, ; 305: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 299
	i32 1898237753, ; 306: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 307: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 308: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 309: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1941394000, ; 310: Maui.DataGrid.dll => 0x73b75250 => 173
	i32 1953182387, ; 311: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 310
	i32 1956758971, ; 312: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 313: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 272
	i32 1968388702, ; 314: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 182
	i32 1968499395, ; 315: AsyncAwaitBestPractices => 0x7554eac3 => 174
	i32 1983156543, ; 316: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 292
	i32 1985761444, ; 317: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 217
	i32 2003115576, ; 318: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 302
	i32 2011961780, ; 319: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 320: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 257
	i32 2031763787, ; 321: Xamarin.Android.Glide => 0x791a414b => 214
	i32 2045470958, ; 322: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 323: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 252
	i32 2060060697, ; 324: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 325: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 301
	i32 2070888862, ; 326: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 327: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2089259565, ; 328: UraniumUI.dll => 0x7c87922d => 209
	i32 2090596640, ; 329: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2103459038, ; 330: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 208
	i32 2127167465, ; 331: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 332: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 333: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 334: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 335: Microsoft.Maui => 0x80bd55ad => 194
	i32 2169148018, ; 336: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 309
	i32 2181898931, ; 337: Microsoft.Extensions.Options.dll => 0x820d22b3 => 189
	i32 2192057212, ; 338: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 187
	i32 2193016926, ; 339: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 340: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 296
	i32 2201231467, ; 341: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 342: it\Microsoft.Maui.Controls.resources => 0x839595db => 311
	i32 2217644978, ; 343: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 279
	i32 2222056684, ; 344: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 345: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 261
	i32 2252106437, ; 346: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 347: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 348: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 349: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 183
	i32 2267999099, ; 350: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 216
	i32 2279755925, ; 351: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 268
	i32 2293034957, ; 352: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 353: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 354: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 355: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 315
	i32 2305521784, ; 356: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 357: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 220
	i32 2320631194, ; 358: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 359: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 360: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 361: System.Net.Primitives => 0x8c40e0db => 70
	i32 2354108832, ; 362: SixLabors.ImageSharp.Drawing => 0x8c50d9a0 => 202
	i32 2366048013, ; 363: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 309
	i32 2368005991, ; 364: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 365: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 182
	i32 2378619854, ; 366: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 367: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 368: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 310
	i32 2401565422, ; 369: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 370: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 243
	i32 2421380589, ; 371: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 372: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 230
	i32 2427813419, ; 373: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 307
	i32 2435356389, ; 374: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 375: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2439473040, ; 376: InputKit.Maui.dll => 0x91676790 => 181
	i32 2454642406, ; 377: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 378: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 379: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465273461, ; 380: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 205
	i32 2465532216, ; 381: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 233
	i32 2471841756, ; 382: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 383: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 384: Microsoft.Maui.Controls => 0x93dba8a1 => 192
	i32 2483903535, ; 385: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 386: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 387: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 388: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2503351294, ; 389: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 313
	i32 2505896520, ; 390: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 255
	i32 2522472828, ; 391: Xamarin.Android.Glide.dll => 0x9659e17c => 214
	i32 2538310050, ; 392: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 393: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 308
	i32 2562349572, ; 394: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 395: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2576534780, ; 396: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 312
	i32 2581783588, ; 397: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 256
	i32 2581819634, ; 398: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 278
	i32 2585220780, ; 399: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 400: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 401: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 402: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 317
	i32 2605712449, ; 403: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 296
	i32 2615233544, ; 404: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 247
	i32 2616218305, ; 405: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 188
	i32 2617129537, ; 406: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 407: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 408: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 237
	i32 2624644809, ; 409: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 242
	i32 2626831493, ; 410: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 312
	i32 2627185994, ; 411: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 412: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 413: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 251
	i32 2663391936, ; 414: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 216
	i32 2663698177, ; 415: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 416: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 417: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 418: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 419: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 420: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 421: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 276
	i32 2715334215, ; 422: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 423: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 424: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 425: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 426: Xamarin.AndroidX.Activity => 0xa2e0939b => 218
	i32 2735172069, ; 427: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 428: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 224
	i32 2740698338, ; 429: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 298
	i32 2740948882, ; 430: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 431: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 432: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 318
	i32 2758225723, ; 433: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 193
	i32 2764765095, ; 434: Microsoft.Maui.dll => 0xa4caf7a7 => 194
	i32 2765824710, ; 435: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2767917255, ; 436: UraniumUI.Icons.MaterialIcons => 0xa4fb10c7 => 212
	i32 2770495804, ; 437: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 290
	i32 2778768386, ; 438: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 281
	i32 2779977773, ; 439: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 269
	i32 2785988530, ; 440: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 324
	i32 2788224221, ; 441: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 247
	i32 2801831435, ; 442: Microsoft.Maui.Graphics => 0xa7008e0b => 196
	i32 2803228030, ; 443: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2810250172, ; 444: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 234
	i32 2819470561, ; 445: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 446: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 447: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 269
	i32 2824502124, ; 448: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2838993487, ; 449: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 258
	i32 2849599387, ; 450: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 451: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 281
	i32 2855708567, ; 452: Xamarin.AndroidX.Transition => 0xaa36a797 => 277
	i32 2861098320, ; 453: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 454: Microsoft.Maui.Essentials => 0xaa8a4878 => 195
	i32 2863996930, ; 455: UraniumUI.Material.dll => 0xaab52002 => 213
	i32 2868488919, ; 456: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 176
	i32 2870099610, ; 457: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 219
	i32 2875164099, ; 458: Jsr305Binding.dll => 0xab5f85c3 => 286
	i32 2875220617, ; 459: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 460: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 245
	i32 2887636118, ; 461: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 462: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900092547, ; 463: Admitere.dll => 0xacdbe683 => 0
	i32 2900621748, ; 464: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 465: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 466: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 467: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 468: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 282
	i32 2919462931, ; 469: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 470: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 221
	i32 2936416060, ; 471: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 472: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 473: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 474: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 475: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 476: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978575649, ; 477: GemBox.Spreadsheet.dll => 0xb1897521 => 178
	i32 2978675010, ; 478: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 241
	i32 2987532451, ; 479: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 272
	i32 2996846495, ; 480: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 254
	i32 3016983068, ; 481: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 274
	i32 3023353419, ; 482: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 483: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 249
	i32 3038032645, ; 484: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 331
	i32 3053864966, ; 485: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 304
	i32 3056245963, ; 486: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 271
	i32 3057625584, ; 487: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 262
	i32 3059408633, ; 488: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 489: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 490: System.Threading.Tasks => 0xb755818f => 144
	i32 3090735792, ; 491: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 492: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 493: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 494: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 495: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 496: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 497: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 498: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 499: GoogleGson.dll => 0xbba64c02 => 179
	i32 3159123045, ; 500: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 501: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 502: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 263
	i32 3178908327, ; 503: SixLabors.Fonts.dll => 0xbd7a4aa7 => 200
	i32 3192346100, ; 504: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 505: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 506: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 507: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 508: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 240
	i32 3220365878, ; 509: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 510: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 511: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 512: Xamarin.AndroidX.CardView => 0xc235e84d => 228
	i32 3265493905, ; 513: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 514: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 515: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 516: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 517: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3284441313, ; 518: SixLabors.ImageSharp => 0xc3c498e1 => 201
	i32 3286872994, ; 519: SQLite-net.dll => 0xc3e9b3a2 => 204
	i32 3290767353, ; 520: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 521: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 522: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 523: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 304
	i32 3316684772, ; 524: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 525: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 238
	i32 3317144872, ; 526: System.Data => 0xc5b79d28 => 24
	i32 3340387945, ; 527: SkiaSharp => 0xc71a4669 => 203
	i32 3340431453, ; 528: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 226
	i32 3345895724, ; 529: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 267
	i32 3346324047, ; 530: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 264
	i32 3357674450, ; 531: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 321
	i32 3358260929, ; 532: System.Text.Json => 0xc82afec1 => 137
	i32 3360279109, ; 533: SQLitePCLRaw.core => 0xc849ca45 => 206
	i32 3362336904, ; 534: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 219
	i32 3362522851, ; 535: Xamarin.AndroidX.Core => 0xc86c06e3 => 235
	i32 3366347497, ; 536: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 537: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 268
	i32 3381016424, ; 538: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 300
	i32 3395150330, ; 539: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 540: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 541: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 239
	i32 3428513518, ; 542: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 184
	i32 3429136800, ; 543: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 544: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 545: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 242
	i32 3445260447, ; 546: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 547: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 191
	i32 3458724246, ; 548: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 319
	i32 3471940407, ; 549: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 550: Mono.Android => 0xcf3163e6 => 171
	i32 3484440000, ; 551: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 320
	i32 3485117614, ; 552: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 553: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 554: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 231
	i32 3509114376, ; 555: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 556: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 557: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 558: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 559: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 560: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 561: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 328
	i32 3592228221, ; 562: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 330
	i32 3597029428, ; 563: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 217
	i32 3598340787, ; 564: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 565: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 566: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 567: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 266
	i32 3633644679, ; 568: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 221
	i32 3638274909, ; 569: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 570: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 252
	i32 3643446276, ; 571: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 325
	i32 3643854240, ; 572: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 263
	i32 3645089577, ; 573: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 574: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 183
	i32 3660523487, ; 575: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 576: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 577: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 227
	i32 3684561358, ; 578: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 231
	i32 3700866549, ; 579: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3700887674, ; 580: Plainer.Maui.dll => 0xdc97107a => 198
	i32 3706696989, ; 581: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 236
	i32 3716563718, ; 582: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 583: Xamarin.AndroidX.Annotation => 0xdda814c6 => 220
	i32 3724971120, ; 584: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 262
	i32 3732100267, ; 585: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 586: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 587: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 588: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3751619990, ; 589: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 300
	i32 3754567612, ; 590: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 208
	i32 3786282454, ; 591: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 229
	i32 3792276235, ; 592: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3792835768, ; 593: HarfBuzzSharp => 0xe21214b8 => 180
	i32 3793321889, ; 594: AsyncAwaitBestPractices.dll => 0xe2197fa1 => 174
	i32 3800979733, ; 595: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 191
	i32 3802395368, ; 596: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3817368567, ; 597: CommunityToolkit.Maui.dll => 0xe3886bf7 => 175
	i32 3819260425, ; 598: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 599: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 600: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 601: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 185
	i32 3844307129, ; 602: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 603: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 604: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 605: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 606: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3876362041, ; 607: SQLite-net => 0xe70c9739 => 204
	i32 3883462534, ; 608: SixLabors.ImageSharp.Drawing.dll => 0xe778ef86 => 202
	i32 3885497537, ; 609: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 610: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 277
	i32 3888767677, ; 611: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 267
	i32 3896106733, ; 612: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 613: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 235
	i32 3901907137, ; 614: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920221145, ; 615: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 316
	i32 3920810846, ; 616: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 617: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 280
	i32 3928044579, ; 618: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 619: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 620: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 265
	i32 3945713374, ; 621: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 622: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 623: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 223
	i32 3959773229, ; 624: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 254
	i32 4003436829, ; 625: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4003906742, ; 626: HarfBuzzSharp.dll => 0xeea6c4b6 => 180
	i32 4015948917, ; 627: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 222
	i32 4025784931, ; 628: System.Memory => 0xeff49a63 => 62
	i32 4030748638, ; 629: Mopups => 0xf04057de => 197
	i32 4046471985, ; 630: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 193
	i32 4054681211, ; 631: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 632: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 633: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4091086043, ; 634: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 302
	i32 4094352644, ; 635: Microsoft.Maui.Essentials.dll => 0xf40add04 => 195
	i32 4099507663, ; 636: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 637: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 638: Xamarin.AndroidX.Emoji2 => 0xf479582c => 243
	i32 4103439459, ; 639: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 326
	i32 4126470640, ; 640: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 184
	i32 4127667938, ; 641: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 642: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 643: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 644: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 326
	i32 4151237749, ; 645: System.Core => 0xf76edc75 => 21
	i32 4156770220, ; 646: UraniumUI => 0xf7c347ac => 209
	i32 4159265925, ; 647: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 648: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 649: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 650: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 651: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 259
	i32 4185676441, ; 652: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 653: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 654: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4249188766, ; 655: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 315
	i32 4256097574, ; 656: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 236
	i32 4258378803, ; 657: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 258
	i32 4260525087, ; 658: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 659: Microsoft.Maui.Controls.dll => 0xfea12dee => 192
	i32 4274623895, ; 660: CommunityToolkit.Mvvm.dll => 0xfec99597 => 177
	i32 4274976490, ; 661: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 662: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 259
	i32 4294763496 ; 663: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 245
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [664 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 211, ; 3
	i32 255, ; 4
	i32 289, ; 5
	i32 48, ; 6
	i32 297, ; 7
	i32 80, ; 8
	i32 306, ; 9
	i32 145, ; 10
	i32 30, ; 11
	i32 330, ; 12
	i32 124, ; 13
	i32 196, ; 14
	i32 102, ; 15
	i32 314, ; 16
	i32 273, ; 17
	i32 107, ; 18
	i32 273, ; 19
	i32 139, ; 20
	i32 213, ; 21
	i32 293, ; 22
	i32 329, ; 23
	i32 322, ; 24
	i32 77, ; 25
	i32 124, ; 26
	i32 13, ; 27
	i32 229, ; 28
	i32 132, ; 29
	i32 275, ; 30
	i32 151, ; 31
	i32 18, ; 32
	i32 227, ; 33
	i32 26, ; 34
	i32 249, ; 35
	i32 1, ; 36
	i32 59, ; 37
	i32 42, ; 38
	i32 91, ; 39
	i32 232, ; 40
	i32 147, ; 41
	i32 251, ; 42
	i32 248, ; 43
	i32 54, ; 44
	i32 69, ; 45
	i32 327, ; 46
	i32 218, ; 47
	i32 83, ; 48
	i32 305, ; 49
	i32 200, ; 50
	i32 250, ; 51
	i32 207, ; 52
	i32 131, ; 53
	i32 55, ; 54
	i32 149, ; 55
	i32 74, ; 56
	i32 145, ; 57
	i32 62, ; 58
	i32 146, ; 59
	i32 331, ; 60
	i32 165, ; 61
	i32 325, ; 62
	i32 233, ; 63
	i32 12, ; 64
	i32 246, ; 65
	i32 125, ; 66
	i32 152, ; 67
	i32 113, ; 68
	i32 166, ; 69
	i32 164, ; 70
	i32 248, ; 71
	i32 261, ; 72
	i32 303, ; 73
	i32 84, ; 74
	i32 190, ; 75
	i32 203, ; 76
	i32 150, ; 77
	i32 293, ; 78
	i32 60, ; 79
	i32 324, ; 80
	i32 186, ; 81
	i32 51, ; 82
	i32 103, ; 83
	i32 114, ; 84
	i32 40, ; 85
	i32 286, ; 86
	i32 284, ; 87
	i32 120, ; 88
	i32 175, ; 89
	i32 52, ; 90
	i32 44, ; 91
	i32 119, ; 92
	i32 238, ; 93
	i32 316, ; 94
	i32 244, ; 95
	i32 81, ; 96
	i32 136, ; 97
	i32 280, ; 98
	i32 225, ; 99
	i32 8, ; 100
	i32 73, ; 101
	i32 155, ; 102
	i32 295, ; 103
	i32 154, ; 104
	i32 92, ; 105
	i32 290, ; 106
	i32 45, ; 107
	i32 294, ; 108
	i32 109, ; 109
	i32 129, ; 110
	i32 205, ; 111
	i32 25, ; 112
	i32 215, ; 113
	i32 72, ; 114
	i32 55, ; 115
	i32 46, ; 116
	i32 322, ; 117
	i32 189, ; 118
	i32 239, ; 119
	i32 22, ; 120
	i32 253, ; 121
	i32 86, ; 122
	i32 43, ; 123
	i32 160, ; 124
	i32 71, ; 125
	i32 266, ; 126
	i32 198, ; 127
	i32 307, ; 128
	i32 3, ; 129
	i32 42, ; 130
	i32 63, ; 131
	i32 321, ; 132
	i32 16, ; 133
	i32 53, ; 134
	i32 318, ; 135
	i32 289, ; 136
	i32 105, ; 137
	i32 294, ; 138
	i32 311, ; 139
	i32 287, ; 140
	i32 250, ; 141
	i32 34, ; 142
	i32 158, ; 143
	i32 85, ; 144
	i32 32, ; 145
	i32 320, ; 146
	i32 12, ; 147
	i32 51, ; 148
	i32 56, ; 149
	i32 270, ; 150
	i32 36, ; 151
	i32 185, ; 152
	i32 288, ; 153
	i32 223, ; 154
	i32 35, ; 155
	i32 173, ; 156
	i32 301, ; 157
	i32 58, ; 158
	i32 257, ; 159
	i32 179, ; 160
	i32 17, ; 161
	i32 291, ; 162
	i32 164, ; 163
	i32 323, ; 164
	i32 317, ; 165
	i32 313, ; 166
	i32 256, ; 167
	i32 188, ; 168
	i32 283, ; 169
	i32 319, ; 170
	i32 153, ; 171
	i32 0, ; 172
	i32 279, ; 173
	i32 264, ; 174
	i32 225, ; 175
	i32 29, ; 176
	i32 177, ; 177
	i32 52, ; 178
	i32 210, ; 179
	i32 284, ; 180
	i32 5, ; 181
	i32 299, ; 182
	i32 274, ; 183
	i32 278, ; 184
	i32 199, ; 185
	i32 230, ; 186
	i32 295, ; 187
	i32 222, ; 188
	i32 206, ; 189
	i32 241, ; 190
	i32 308, ; 191
	i32 85, ; 192
	i32 283, ; 193
	i32 61, ; 194
	i32 112, ; 195
	i32 328, ; 196
	i32 57, ; 197
	i32 329, ; 198
	i32 270, ; 199
	i32 99, ; 200
	i32 19, ; 201
	i32 234, ; 202
	i32 111, ; 203
	i32 101, ; 204
	i32 212, ; 205
	i32 102, ; 206
	i32 297, ; 207
	i32 104, ; 208
	i32 287, ; 209
	i32 71, ; 210
	i32 38, ; 211
	i32 32, ; 212
	i32 103, ; 213
	i32 73, ; 214
	i32 303, ; 215
	i32 9, ; 216
	i32 123, ; 217
	i32 46, ; 218
	i32 181, ; 219
	i32 224, ; 220
	i32 190, ; 221
	i32 9, ; 222
	i32 43, ; 223
	i32 4, ; 224
	i32 201, ; 225
	i32 271, ; 226
	i32 178, ; 227
	i32 327, ; 228
	i32 31, ; 229
	i32 138, ; 230
	i32 92, ; 231
	i32 93, ; 232
	i32 49, ; 233
	i32 141, ; 234
	i32 112, ; 235
	i32 140, ; 236
	i32 240, ; 237
	i32 115, ; 238
	i32 199, ; 239
	i32 288, ; 240
	i32 157, ; 241
	i32 76, ; 242
	i32 79, ; 243
	i32 260, ; 244
	i32 37, ; 245
	i32 282, ; 246
	i32 176, ; 247
	i32 244, ; 248
	i32 237, ; 249
	i32 64, ; 250
	i32 138, ; 251
	i32 15, ; 252
	i32 116, ; 253
	i32 276, ; 254
	i32 285, ; 255
	i32 197, ; 256
	i32 232, ; 257
	i32 48, ; 258
	i32 70, ; 259
	i32 80, ; 260
	i32 126, ; 261
	i32 94, ; 262
	i32 121, ; 263
	i32 292, ; 264
	i32 26, ; 265
	i32 207, ; 266
	i32 253, ; 267
	i32 97, ; 268
	i32 28, ; 269
	i32 228, ; 270
	i32 298, ; 271
	i32 149, ; 272
	i32 169, ; 273
	i32 4, ; 274
	i32 210, ; 275
	i32 98, ; 276
	i32 33, ; 277
	i32 93, ; 278
	i32 275, ; 279
	i32 186, ; 280
	i32 21, ; 281
	i32 41, ; 282
	i32 170, ; 283
	i32 314, ; 284
	i32 246, ; 285
	i32 306, ; 286
	i32 260, ; 287
	i32 291, ; 288
	i32 285, ; 289
	i32 265, ; 290
	i32 2, ; 291
	i32 134, ; 292
	i32 111, ; 293
	i32 187, ; 294
	i32 211, ; 295
	i32 215, ; 296
	i32 323, ; 297
	i32 58, ; 298
	i32 95, ; 299
	i32 305, ; 300
	i32 39, ; 301
	i32 226, ; 302
	i32 25, ; 303
	i32 94, ; 304
	i32 299, ; 305
	i32 89, ; 306
	i32 99, ; 307
	i32 10, ; 308
	i32 87, ; 309
	i32 173, ; 310
	i32 310, ; 311
	i32 100, ; 312
	i32 272, ; 313
	i32 182, ; 314
	i32 174, ; 315
	i32 292, ; 316
	i32 217, ; 317
	i32 302, ; 318
	i32 7, ; 319
	i32 257, ; 320
	i32 214, ; 321
	i32 88, ; 322
	i32 252, ; 323
	i32 154, ; 324
	i32 301, ; 325
	i32 33, ; 326
	i32 116, ; 327
	i32 209, ; 328
	i32 82, ; 329
	i32 208, ; 330
	i32 20, ; 331
	i32 11, ; 332
	i32 162, ; 333
	i32 3, ; 334
	i32 194, ; 335
	i32 309, ; 336
	i32 189, ; 337
	i32 187, ; 338
	i32 84, ; 339
	i32 296, ; 340
	i32 64, ; 341
	i32 311, ; 342
	i32 279, ; 343
	i32 143, ; 344
	i32 261, ; 345
	i32 157, ; 346
	i32 41, ; 347
	i32 117, ; 348
	i32 183, ; 349
	i32 216, ; 350
	i32 268, ; 351
	i32 131, ; 352
	i32 75, ; 353
	i32 66, ; 354
	i32 315, ; 355
	i32 172, ; 356
	i32 220, ; 357
	i32 143, ; 358
	i32 106, ; 359
	i32 151, ; 360
	i32 70, ; 361
	i32 202, ; 362
	i32 309, ; 363
	i32 156, ; 364
	i32 182, ; 365
	i32 121, ; 366
	i32 127, ; 367
	i32 310, ; 368
	i32 152, ; 369
	i32 243, ; 370
	i32 141, ; 371
	i32 230, ; 372
	i32 307, ; 373
	i32 20, ; 374
	i32 14, ; 375
	i32 181, ; 376
	i32 135, ; 377
	i32 75, ; 378
	i32 59, ; 379
	i32 205, ; 380
	i32 233, ; 381
	i32 167, ; 382
	i32 168, ; 383
	i32 192, ; 384
	i32 15, ; 385
	i32 74, ; 386
	i32 6, ; 387
	i32 23, ; 388
	i32 313, ; 389
	i32 255, ; 390
	i32 214, ; 391
	i32 91, ; 392
	i32 308, ; 393
	i32 1, ; 394
	i32 136, ; 395
	i32 312, ; 396
	i32 256, ; 397
	i32 278, ; 398
	i32 134, ; 399
	i32 69, ; 400
	i32 146, ; 401
	i32 317, ; 402
	i32 296, ; 403
	i32 247, ; 404
	i32 188, ; 405
	i32 88, ; 406
	i32 96, ; 407
	i32 237, ; 408
	i32 242, ; 409
	i32 312, ; 410
	i32 31, ; 411
	i32 45, ; 412
	i32 251, ; 413
	i32 216, ; 414
	i32 109, ; 415
	i32 158, ; 416
	i32 35, ; 417
	i32 22, ; 418
	i32 114, ; 419
	i32 57, ; 420
	i32 276, ; 421
	i32 144, ; 422
	i32 118, ; 423
	i32 120, ; 424
	i32 110, ; 425
	i32 218, ; 426
	i32 139, ; 427
	i32 224, ; 428
	i32 298, ; 429
	i32 54, ; 430
	i32 105, ; 431
	i32 318, ; 432
	i32 193, ; 433
	i32 194, ; 434
	i32 133, ; 435
	i32 212, ; 436
	i32 290, ; 437
	i32 281, ; 438
	i32 269, ; 439
	i32 324, ; 440
	i32 247, ; 441
	i32 196, ; 442
	i32 159, ; 443
	i32 234, ; 444
	i32 163, ; 445
	i32 132, ; 446
	i32 269, ; 447
	i32 161, ; 448
	i32 258, ; 449
	i32 140, ; 450
	i32 281, ; 451
	i32 277, ; 452
	i32 169, ; 453
	i32 195, ; 454
	i32 213, ; 455
	i32 176, ; 456
	i32 219, ; 457
	i32 286, ; 458
	i32 40, ; 459
	i32 245, ; 460
	i32 81, ; 461
	i32 56, ; 462
	i32 0, ; 463
	i32 37, ; 464
	i32 97, ; 465
	i32 166, ; 466
	i32 172, ; 467
	i32 282, ; 468
	i32 82, ; 469
	i32 221, ; 470
	i32 98, ; 471
	i32 30, ; 472
	i32 159, ; 473
	i32 18, ; 474
	i32 127, ; 475
	i32 119, ; 476
	i32 178, ; 477
	i32 241, ; 478
	i32 272, ; 479
	i32 254, ; 480
	i32 274, ; 481
	i32 165, ; 482
	i32 249, ; 483
	i32 331, ; 484
	i32 304, ; 485
	i32 271, ; 486
	i32 262, ; 487
	i32 170, ; 488
	i32 16, ; 489
	i32 144, ; 490
	i32 125, ; 491
	i32 118, ; 492
	i32 38, ; 493
	i32 115, ; 494
	i32 47, ; 495
	i32 142, ; 496
	i32 117, ; 497
	i32 34, ; 498
	i32 179, ; 499
	i32 95, ; 500
	i32 53, ; 501
	i32 263, ; 502
	i32 200, ; 503
	i32 129, ; 504
	i32 153, ; 505
	i32 24, ; 506
	i32 161, ; 507
	i32 240, ; 508
	i32 148, ; 509
	i32 104, ; 510
	i32 89, ; 511
	i32 228, ; 512
	i32 60, ; 513
	i32 142, ; 514
	i32 100, ; 515
	i32 5, ; 516
	i32 13, ; 517
	i32 201, ; 518
	i32 204, ; 519
	i32 122, ; 520
	i32 135, ; 521
	i32 28, ; 522
	i32 304, ; 523
	i32 72, ; 524
	i32 238, ; 525
	i32 24, ; 526
	i32 203, ; 527
	i32 226, ; 528
	i32 267, ; 529
	i32 264, ; 530
	i32 321, ; 531
	i32 137, ; 532
	i32 206, ; 533
	i32 219, ; 534
	i32 235, ; 535
	i32 168, ; 536
	i32 268, ; 537
	i32 300, ; 538
	i32 101, ; 539
	i32 123, ; 540
	i32 239, ; 541
	i32 184, ; 542
	i32 163, ; 543
	i32 167, ; 544
	i32 242, ; 545
	i32 39, ; 546
	i32 191, ; 547
	i32 319, ; 548
	i32 17, ; 549
	i32 171, ; 550
	i32 320, ; 551
	i32 137, ; 552
	i32 150, ; 553
	i32 231, ; 554
	i32 155, ; 555
	i32 130, ; 556
	i32 19, ; 557
	i32 65, ; 558
	i32 147, ; 559
	i32 47, ; 560
	i32 328, ; 561
	i32 330, ; 562
	i32 217, ; 563
	i32 79, ; 564
	i32 61, ; 565
	i32 106, ; 566
	i32 266, ; 567
	i32 221, ; 568
	i32 49, ; 569
	i32 252, ; 570
	i32 325, ; 571
	i32 263, ; 572
	i32 14, ; 573
	i32 183, ; 574
	i32 68, ; 575
	i32 171, ; 576
	i32 227, ; 577
	i32 231, ; 578
	i32 78, ; 579
	i32 198, ; 580
	i32 236, ; 581
	i32 108, ; 582
	i32 220, ; 583
	i32 262, ; 584
	i32 67, ; 585
	i32 63, ; 586
	i32 27, ; 587
	i32 160, ; 588
	i32 300, ; 589
	i32 208, ; 590
	i32 229, ; 591
	i32 10, ; 592
	i32 180, ; 593
	i32 174, ; 594
	i32 191, ; 595
	i32 11, ; 596
	i32 175, ; 597
	i32 78, ; 598
	i32 126, ; 599
	i32 83, ; 600
	i32 185, ; 601
	i32 66, ; 602
	i32 107, ; 603
	i32 65, ; 604
	i32 128, ; 605
	i32 122, ; 606
	i32 204, ; 607
	i32 202, ; 608
	i32 77, ; 609
	i32 277, ; 610
	i32 267, ; 611
	i32 8, ; 612
	i32 235, ; 613
	i32 2, ; 614
	i32 316, ; 615
	i32 44, ; 616
	i32 280, ; 617
	i32 156, ; 618
	i32 128, ; 619
	i32 265, ; 620
	i32 23, ; 621
	i32 133, ; 622
	i32 223, ; 623
	i32 254, ; 624
	i32 29, ; 625
	i32 180, ; 626
	i32 222, ; 627
	i32 62, ; 628
	i32 197, ; 629
	i32 193, ; 630
	i32 90, ; 631
	i32 87, ; 632
	i32 148, ; 633
	i32 302, ; 634
	i32 195, ; 635
	i32 36, ; 636
	i32 86, ; 637
	i32 243, ; 638
	i32 326, ; 639
	i32 184, ; 640
	i32 50, ; 641
	i32 6, ; 642
	i32 90, ; 643
	i32 326, ; 644
	i32 21, ; 645
	i32 209, ; 646
	i32 162, ; 647
	i32 96, ; 648
	i32 50, ; 649
	i32 113, ; 650
	i32 259, ; 651
	i32 130, ; 652
	i32 76, ; 653
	i32 27, ; 654
	i32 315, ; 655
	i32 236, ; 656
	i32 258, ; 657
	i32 7, ; 658
	i32 192, ; 659
	i32 177, ; 660
	i32 110, ; 661
	i32 259, ; 662
	i32 245 ; 663
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

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
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

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

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
