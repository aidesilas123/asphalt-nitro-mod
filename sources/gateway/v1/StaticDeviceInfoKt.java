package gateway.v1;

import com.google.protobuf.kotlin.DslList;
import com.json.qc;
import gateway.v1.StaticDeviceInfoOuterClass;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: gateway.v1.o0, reason: from Kotlin metadata */
/* JADX INFO: compiled from: StaticDeviceInfoKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0003\u000f\u0010\u0011B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0087\bø\u0001\u0000¢\u0006\u0002\b\nJ*\u0010\u000b\u001a\u00020\f2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0087\bø\u0001\u0000¢\u0006\u0002\b\u000e\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0012"}, d2 = {"Lgateway/v1/StaticDeviceInfoKt;", "", "()V", "android", "Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android;", "block", "Lkotlin/Function1;", "Lgateway/v1/StaticDeviceInfoKt$AndroidKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializeandroid", "ios", "Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios;", "Lgateway/v1/StaticDeviceInfoKt$IosKt$Dsl;", "-initializeios", "AndroidKt", "Dsl", "IosKt", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class StaticDeviceInfoKt {
    public static final StaticDeviceInfoKt a = new StaticDeviceInfoKt();

    /* JADX INFO: renamed from: gateway.v1.o0$a */
    /* JADX INFO: compiled from: StaticDeviceInfoKt.kt */
    @Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b*\n\u0002\u0010\u001c\n\u0002\b\f\b\u0007\u0018\u0000 \u0092\u00012\u00020\u0001:\u0004\u0092\u0001\u0093\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010Z\u001a\u00020[H\u0001J\u0006\u0010\\\u001a\u00020]J\u0006\u0010^\u001a\u00020]J\u0006\u0010_\u001a\u00020]J\u0006\u0010`\u001a\u00020]J\u0006\u0010a\u001a\u00020]J\u0006\u0010b\u001a\u00020]J\u0006\u0010c\u001a\u00020]J\u0006\u0010d\u001a\u00020]J\u0006\u0010e\u001a\u00020]J\u0006\u0010f\u001a\u00020]J\u0006\u0010g\u001a\u00020]J\u0006\u0010h\u001a\u00020]J\u0006\u0010i\u001a\u00020]J\u0006\u0010j\u001a\u00020]J\u0006\u0010k\u001a\u00020]J\u0006\u0010l\u001a\u00020]J\u0006\u0010m\u001a\u00020]J\u0006\u0010n\u001a\u00020]J\u0006\u0010o\u001a\u00020]J\u0006\u0010p\u001a\u00020]J\u0006\u0010q\u001a\u00020\fJ\u0006\u0010r\u001a\u00020\fJ\u0006\u0010s\u001a\u00020\fJ\u0006\u0010t\u001a\u00020\fJ\u0006\u0010u\u001a\u00020\fJ\u0006\u0010v\u001a\u00020\fJ\u0006\u0010w\u001a\u00020\fJ\u0006\u0010x\u001a\u00020\fJ\u0006\u0010y\u001a\u00020\fJ\u0006\u0010z\u001a\u00020\fJ\u0006\u0010{\u001a\u00020\fJ\u0006\u0010|\u001a\u00020\fJ\u0006\u0010}\u001a\u00020\fJ\u0006\u0010~\u001a\u00020\fJ\u0006\u0010\u007f\u001a\u00020\fJ\u0007\u0010\u0080\u0001\u001a\u00020\fJ\u0007\u0010\u0081\u0001\u001a\u00020\fJ\u0007\u0010\u0082\u0001\u001a\u00020\fJ\u0007\u0010\u0083\u0001\u001a\u00020\fJ'\u0010\u0084\u0001\u001a\u00020]*\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020N0M2\u0006\u0010\u0005\u001a\u00020\u0012H\u0007¢\u0006\u0003\b\u0085\u0001J/\u0010\u0086\u0001\u001a\u00020]*\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020N0M2\u000e\u0010\u0087\u0001\u001a\t\u0012\u0004\u0012\u00020\u00120\u0088\u0001H\u0007¢\u0006\u0003\b\u0089\u0001J\u001f\u0010\u008a\u0001\u001a\u00020]*\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020N0MH\u0007¢\u0006\u0003\b\u008b\u0001J(\u0010\u008c\u0001\u001a\u00020]*\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020N0M2\u0006\u0010\u0005\u001a\u00020\u0012H\u0087\n¢\u0006\u0003\b\u008d\u0001J0\u0010\u008c\u0001\u001a\u00020]*\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020N0M2\u000e\u0010\u0087\u0001\u001a\t\u0012\u0004\u0012\u00020\u00120\u0088\u0001H\u0087\n¢\u0006\u0003\b\u008e\u0001J1\u0010\u008f\u0001\u001a\u00020]*\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020N0M2\u0007\u0010\u0090\u0001\u001a\u00020=2\u0006\u0010\u0005\u001a\u00020\u0012H\u0087\u0002¢\u0006\u0003\b\u0091\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0019\u0010\u0015\"\u0004\b\u001a\u0010\u0017R$\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010!\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\"\u0010\u0015\"\u0004\b#\u0010\u0017R$\u0010$\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b%\u0010\u0015\"\u0004\b&\u0010\u0017R$\u0010'\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b(\u0010\u0015\"\u0004\b)\u0010\u0017R$\u0010*\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b+\u0010\u0015\"\u0004\b,\u0010\u0017R$\u0010.\u001a\u00020-2\u0006\u0010\u0005\u001a\u00020-8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b/\u00100\"\u0004\b1\u00102R$\u00103\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b4\u0010\u0015\"\u0004\b5\u0010\u0017R\u0011\u00106\u001a\u0002078G¢\u0006\u0006\u001a\u0004\b8\u00109R$\u0010:\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b;\u0010\u000f\"\u0004\b<\u0010\u0011R$\u0010>\u001a\u00020=2\u0006\u0010\u0005\u001a\u00020=8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR$\u0010C\u001a\u00020=2\u0006\u0010\u0005\u001a\u00020=8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bD\u0010@\"\u0004\bE\u0010BR$\u0010F\u001a\u00020=2\u0006\u0010\u0005\u001a\u00020=8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bG\u0010@\"\u0004\bH\u0010BR$\u0010I\u001a\u00020=2\u0006\u0010\u0005\u001a\u00020=8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bJ\u0010@\"\u0004\bK\u0010BR\u001d\u0010L\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020N0M8F¢\u0006\u0006\u001a\u0004\bO\u0010PR$\u0010Q\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bR\u0010\u001e\"\u0004\bS\u0010 R$\u0010T\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bU\u0010\u001e\"\u0004\bV\u0010 R$\u0010W\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bX\u0010\u0015\"\u0004\bY\u0010\u0017¨\u0006\u0094\u0001"}, d2 = {"Lgateway/v1/StaticDeviceInfoKt$Dsl;", "", "_builder", "Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;", "(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;)V", "value", "Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android;", "android", "getAndroid", "()Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android;", "setAndroid", "(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android;)V", "", "appDebuggable", "getAppDebuggable", "()Z", "setAppDebuggable", "(Z)V", "", "bundleId", "getBundleId", "()Ljava/lang/String;", "setBundleId", "(Ljava/lang/String;)V", "bundleVersion", "getBundleVersion", "setBundleVersion", "", "cpuCount", "getCpuCount", "()J", "setCpuCount", "(J)V", "cpuModel", "getCpuModel", "setCpuModel", qc.m0, "getDeviceMake", "setDeviceMake", "deviceModel", "getDeviceModel", "setDeviceModel", "gpuModel", "getGpuModel", "setGpuModel", "Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios;", "ios", "getIos", "()Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios;", "setIos", "(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios;)V", "osVersion", "getOsVersion", "setOsVersion", "platformSpecificCase", "Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$PlatformSpecificCase;", "getPlatformSpecificCase", "()Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$PlatformSpecificCase;", "rooted", "getRooted", "setRooted", "", "screenDensity", "getScreenDensity", "()I", "setScreenDensity", "(I)V", "screenHeight", "getScreenHeight", "setScreenHeight", "screenSize", "getScreenSize", "setScreenSize", "screenWidth", "getScreenWidth", "setScreenWidth", "stores", "Lcom/google/protobuf/kotlin/DslList;", "Lgateway/v1/StaticDeviceInfoKt$Dsl$StoresProxy;", "getStores", "()Lcom/google/protobuf/kotlin/DslList;", "totalDiskSpace", "getTotalDiskSpace", "setTotalDiskSpace", "totalRamMemory", "getTotalRamMemory", "setTotalRamMemory", "webviewUa", "getWebviewUa", "setWebviewUa", "_build", "Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;", "clearAndroid", "", "clearAppDebuggable", "clearBundleId", "clearBundleVersion", "clearCpuCount", "clearCpuModel", "clearDeviceMake", "clearDeviceModel", "clearGpuModel", "clearIos", "clearOsVersion", "clearPlatformSpecific", "clearRooted", "clearScreenDensity", "clearScreenHeight", "clearScreenSize", "clearScreenWidth", "clearTotalDiskSpace", "clearTotalRamMemory", "clearWebviewUa", "hasAndroid", "hasAppDebuggable", "hasBundleId", "hasBundleVersion", "hasCpuCount", "hasCpuModel", "hasDeviceMake", "hasDeviceModel", "hasGpuModel", "hasIos", "hasOsVersion", "hasRooted", "hasScreenDensity", "hasScreenHeight", "hasScreenSize", "hasScreenWidth", "hasTotalDiskSpace", "hasTotalRamMemory", "hasWebviewUa", "add", "addStores", "addAll", "values", "", "addAllStores", "clear", "clearStores", "plusAssign", "plusAssignStores", "plusAssignAllStores", "set", "index", "setStores", "Companion", "StoresProxy", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        public static final C0467a a = new C0467a(null);
        private final StaticDeviceInfoOuterClass.StaticDeviceInfo.a b;

        /* JADX INFO: renamed from: gateway.v1.o0$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: StaticDeviceInfoKt.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/StaticDeviceInfoKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/StaticDeviceInfoKt$Dsl;", "builder", "Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
        public static final class C0467a {
            private C0467a() {
            }

            public /* synthetic */ C0467a(kotlin.jvm.internal.n nVar) {
                this();
            }

            public final /* synthetic */ a a(StaticDeviceInfoOuterClass.StaticDeviceInfo.a builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new a(builder, null);
            }
        }

        private a(StaticDeviceInfoOuterClass.StaticDeviceInfo.a aVar) {
            this.b = aVar;
        }

        public /* synthetic */ a(StaticDeviceInfoOuterClass.StaticDeviceInfo.a aVar, kotlin.jvm.internal.n nVar) {
            this(aVar);
        }

        public final /* synthetic */ StaticDeviceInfoOuterClass.StaticDeviceInfo a() {
            StaticDeviceInfoOuterClass.StaticDeviceInfo staticDeviceInfoBuild = this.b.build();
            Intrinsics.checkNotNullExpressionValue(staticDeviceInfoBuild, "_builder.build()");
            return staticDeviceInfoBuild;
        }

        public final /* synthetic */ void b(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this.b.b(values);
        }

        public final DslList<String, ?> c() {
            List<String> listD = this.b.d();
            Intrinsics.checkNotNullExpressionValue(listD, "_builder.getStoresList()");
            return new DslList<>(listD);
        }

        public final void d(StaticDeviceInfoOuterClass.StaticDeviceInfo.Android value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.b.e(value);
        }

        public final void e(boolean z) {
            this.b.f(z);
        }

        public final void f(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.b.g(value);
        }

        public final void g(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.b.h(value);
        }

        public final void h(long j) {
            this.b.i(j);
        }

        public final void i(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.b.j(value);
        }

        public final void j(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.b.k(value);
        }

        public final void k(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.b.l(value);
        }

        public final void l(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.b.m(value);
        }

        public final void m(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.b.n(value);
        }

        public final void n(boolean z) {
            this.b.o(z);
        }

        public final void o(int i) {
            this.b.p(i);
        }

        public final void p(int i) {
            this.b.q(i);
        }

        public final void q(int i) {
            this.b.r(i);
        }

        public final void r(int i) {
            this.b.s(i);
        }

        public final void s(long j) {
            this.b.t(j);
        }

        public final void t(long j) {
            this.b.u(j);
        }

        public final void u(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.b.v(value);
        }
    }

    private StaticDeviceInfoKt() {
    }
}
