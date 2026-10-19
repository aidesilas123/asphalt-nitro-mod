package gateway.v1;

import gateway.v1.DynamicDeviceInfoOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: gateway.v1.s, reason: from Kotlin metadata */
/* JADX INFO: compiled from: DynamicDeviceInfoKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0003\u000f\u0010\u0011B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0087\bø\u0001\u0000¢\u0006\u0002\b\nJ*\u0010\u000b\u001a\u00020\f2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0087\bø\u0001\u0000¢\u0006\u0002\b\u000e\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0012"}, d2 = {"Lgateway/v1/DynamicDeviceInfoKt;", "", "()V", "android", "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android;", "block", "Lkotlin/Function1;", "Lgateway/v1/DynamicDeviceInfoKt$AndroidKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializeandroid", "ios", "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios;", "Lgateway/v1/DynamicDeviceInfoKt$IosKt$Dsl;", "-initializeios", "AndroidKt", "Dsl", "IosKt", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class DynamicDeviceInfoKt {
    public static final DynamicDeviceInfoKt a = new DynamicDeviceInfoKt();

    /* JADX INFO: renamed from: gateway.v1.s$a */
    /* JADX INFO: compiled from: DynamicDeviceInfoKt.kt */
    @Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\"\b\u0007\u0018\u0000 v2\u00020\u0001:\u0001vB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010R\u001a\u00020SH\u0001J\u0006\u0010T\u001a\u00020UJ\u0006\u0010V\u001a\u00020UJ\u0006\u0010W\u001a\u00020UJ\u0006\u0010X\u001a\u00020UJ\u0006\u0010Y\u001a\u00020UJ\u0006\u0010Z\u001a\u00020UJ\u0006\u0010[\u001a\u00020UJ\u0006\u0010\\\u001a\u00020UJ\u0006\u0010]\u001a\u00020UJ\u0006\u0010^\u001a\u00020UJ\u0006\u0010_\u001a\u00020UJ\u0006\u0010`\u001a\u00020UJ\u0006\u0010a\u001a\u00020UJ\u0006\u0010b\u001a\u00020UJ\u0006\u0010c\u001a\u00020UJ\u0006\u0010d\u001a\u00020UJ\u0006\u0010e\u001a\u00020UJ\u0006\u0010f\u001a\u00020\fJ\u0006\u0010g\u001a\u00020\fJ\u0006\u0010h\u001a\u00020\fJ\u0006\u0010i\u001a\u00020\fJ\u0006\u0010j\u001a\u00020\fJ\u0006\u0010k\u001a\u00020\fJ\u0006\u0010l\u001a\u00020\fJ\u0006\u0010m\u001a\u00020\fJ\u0006\u0010n\u001a\u00020\fJ\u0006\u0010o\u001a\u00020\fJ\u0006\u0010p\u001a\u00020\fJ\u0006\u0010q\u001a\u00020\fJ\u0006\u0010r\u001a\u00020\fJ\u0006\u0010s\u001a\u00020\fJ\u0006\u0010t\u001a\u00020\fJ\u0006\u0010u\u001a\u00020\fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR$\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u001e8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R$\u0010%\u001a\u00020$2\u0006\u0010\u0005\u001a\u00020$8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R$\u0010*\u001a\u00020$2\u0006\u0010\u0005\u001a\u00020$8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b+\u0010'\"\u0004\b,\u0010)R$\u0010.\u001a\u00020-2\u0006\u0010\u0005\u001a\u00020-8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b/\u00100\"\u0004\b1\u00102R$\u00104\u001a\u0002032\u0006\u0010\u0005\u001a\u0002038G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b5\u00106\"\u0004\b7\u00108R$\u00109\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b:\u0010\u000f\"\u0004\b;\u0010\u0011R$\u0010<\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b=\u0010\u000f\"\u0004\b>\u0010\u0011R$\u0010?\u001a\u0002032\u0006\u0010\u0005\u001a\u0002038G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b@\u00106\"\u0004\bA\u00108R$\u0010B\u001a\u0002032\u0006\u0010\u0005\u001a\u0002038G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bC\u00106\"\u0004\bD\u00108R\u0011\u0010E\u001a\u00020F8G¢\u0006\u0006\u001a\u0004\bG\u0010HR$\u0010I\u001a\u0002032\u0006\u0010\u0005\u001a\u0002038G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bJ\u00106\"\u0004\bK\u00108R$\u0010L\u001a\u00020$2\u0006\u0010\u0005\u001a\u00020$8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bM\u0010'\"\u0004\bN\u0010)R$\u0010O\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bP\u0010\u000f\"\u0004\bQ\u0010\u0011¨\u0006w"}, d2 = {"Lgateway/v1/DynamicDeviceInfoKt$Dsl;", "", "_builder", "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;", "(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;)V", "value", "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android;", "android", "getAndroid", "()Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android;", "setAndroid", "(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Android;)V", "", "appActive", "getAppActive", "()Z", "setAppActive", "(Z)V", "", "batteryLevel", "getBatteryLevel", "()D", "setBatteryLevel", "(D)V", "", "batteryStatus", "getBatteryStatus", "()I", "setBatteryStatus", "(I)V", "Lgateway/v1/DynamicDeviceInfoOuterClass$ConnectionType;", "connectionType", "getConnectionType", "()Lgateway/v1/DynamicDeviceInfoOuterClass$ConnectionType;", "setConnectionType", "(Lgateway/v1/DynamicDeviceInfoOuterClass$ConnectionType;)V", "", "freeDiskSpace", "getFreeDiskSpace", "()J", "setFreeDiskSpace", "(J)V", "freeRamMemory", "getFreeRamMemory", "setFreeRamMemory", "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios;", "ios", "getIos", "()Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios;", "setIos", "(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios;)V", "", "language", "getLanguage", "()Ljava/lang/String;", "setLanguage", "(Ljava/lang/String;)V", "limitedOpenAdTracking", "getLimitedOpenAdTracking", "setLimitedOpenAdTracking", "limitedTracking", "getLimitedTracking", "setLimitedTracking", "networkOperator", "getNetworkOperator", "setNetworkOperator", "networkOperatorName", "getNetworkOperatorName", "setNetworkOperatorName", "platformSpecificCase", "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$PlatformSpecificCase;", "getPlatformSpecificCase", "()Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$PlatformSpecificCase;", "timeZone", "getTimeZone", "setTimeZone", "timeZoneOffset", "getTimeZoneOffset", "setTimeZoneOffset", "wiredHeadset", "getWiredHeadset", "setWiredHeadset", "_build", "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;", "clearAndroid", "", "clearAppActive", "clearBatteryLevel", "clearBatteryStatus", "clearConnectionType", "clearFreeDiskSpace", "clearFreeRamMemory", "clearIos", "clearLanguage", "clearLimitedOpenAdTracking", "clearLimitedTracking", "clearNetworkOperator", "clearNetworkOperatorName", "clearPlatformSpecific", "clearTimeZone", "clearTimeZoneOffset", "clearWiredHeadset", "hasAndroid", "hasAppActive", "hasBatteryLevel", "hasBatteryStatus", "hasConnectionType", "hasFreeDiskSpace", "hasFreeRamMemory", "hasIos", "hasLanguage", "hasLimitedOpenAdTracking", "hasLimitedTracking", "hasNetworkOperator", "hasNetworkOperatorName", "hasTimeZone", "hasTimeZoneOffset", "hasWiredHeadset", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        public static final C0468a a = new C0468a(null);
        private final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.a b;

        /* JADX INFO: renamed from: gateway.v1.s$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: DynamicDeviceInfoKt.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/DynamicDeviceInfoKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/DynamicDeviceInfoKt$Dsl;", "builder", "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
        public static final class C0468a {
            private C0468a() {
            }

            public /* synthetic */ C0468a(kotlin.jvm.internal.n nVar) {
                this();
            }

            public final /* synthetic */ a a(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.a builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new a(builder, null);
            }
        }

        private a(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.a aVar) {
            this.b = aVar;
        }

        public /* synthetic */ a(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.a aVar, kotlin.jvm.internal.n nVar) {
            this(aVar);
        }

        public final /* synthetic */ DynamicDeviceInfoOuterClass.DynamicDeviceInfo a() {
            DynamicDeviceInfoOuterClass.DynamicDeviceInfo dynamicDeviceInfoBuild = this.b.build();
            Intrinsics.checkNotNullExpressionValue(dynamicDeviceInfoBuild, "_builder.build()");
            return dynamicDeviceInfoBuild;
        }

        public final void b(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.b.b(value);
        }

        public final void c(boolean z) {
            this.b.d(z);
        }

        public final void d(double d2) {
            this.b.e(d2);
        }

        public final void e(int i) {
            this.b.f(i);
        }

        public final void f(DynamicDeviceInfoOuterClass.ConnectionType value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.b.g(value);
        }

        public final void g(long j) {
            this.b.h(j);
        }

        public final void h(long j) {
            this.b.i(j);
        }

        public final void i(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.b.j(value);
        }

        public final void j(boolean z) {
            this.b.k(z);
        }

        public final void k(boolean z) {
            this.b.l(z);
        }

        public final void l(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.b.m(value);
        }

        public final void m(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.b.n(value);
        }

        public final void n(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.b.o(value);
        }

        public final void o(long j) {
            this.b.p(j);
        }

        public final void p(boolean z) {
            this.b.q(z);
        }
    }

    private DynamicDeviceInfoKt() {
    }
}
