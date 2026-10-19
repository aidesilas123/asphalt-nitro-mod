package gateway.v1;

import gateway.v1.StaticDeviceInfoOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StaticDeviceInfoKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b0\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0007\u0018\u0000 `2\u00020\u0001:\u0001`B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010<\u001a\u00020=H\u0001J\u0006\u0010>\u001a\u00020?J\u0006\u0010@\u001a\u00020?J\u0006\u0010A\u001a\u00020?J\u0006\u0010B\u001a\u00020?J\u0006\u0010C\u001a\u00020?J\u0006\u0010D\u001a\u00020?J\u0006\u0010E\u001a\u00020?J\u0006\u0010F\u001a\u00020?J\u0006\u0010G\u001a\u00020?J\u0006\u0010H\u001a\u00020?J\u0006\u0010I\u001a\u00020?J\u0006\u0010J\u001a\u00020?J\u0006\u0010K\u001a\u00020?J\u0006\u0010L\u001a\u00020?J\u0006\u0010M\u001a\u00020?J\u0006\u0010N\u001a\u00020?J\u0006\u0010O\u001a\u00020PJ\u0006\u0010Q\u001a\u00020PJ\u0006\u0010R\u001a\u00020PJ\u0006\u0010S\u001a\u00020PJ\u0006\u0010T\u001a\u00020PJ\u0006\u0010U\u001a\u00020PJ\u0006\u0010V\u001a\u00020PJ\u0006\u0010W\u001a\u00020PJ\u0006\u0010X\u001a\u00020PJ\u0006\u0010Y\u001a\u00020PJ\u0006\u0010Z\u001a\u00020PJ\u0006\u0010[\u001a\u00020PJ\u0006\u0010\\\u001a\u00020PJ\u0006\u0010]\u001a\u00020PJ\u0006\u0010^\u001a\u00020PJ\u0006\u0010_\u001a\u00020PR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\t\"\u0004\b\u0014\u0010\u000bR$\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0016\u0010\t\"\u0004\b\u0017\u0010\u000bR$\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0019\u0010\t\"\u0004\b\u001a\u0010\u000bR$\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001c\u0010\t\"\u0004\b\u001d\u0010\u000bR$\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001f\u0010\t\"\u0004\b \u0010\u000bR$\u0010!\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\"\u0010\t\"\u0004\b#\u0010\u000bR$\u0010$\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b%\u0010\t\"\u0004\b&\u0010\u000bR$\u0010'\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b(\u0010\t\"\u0004\b)\u0010\u000bR$\u0010*\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b+\u0010\t\"\u0004\b,\u0010\u000bR$\u0010-\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b.\u0010\t\"\u0004\b/\u0010\u000bR$\u00100\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b1\u0010\t\"\u0004\b2\u0010\u000bR$\u00103\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b4\u0010\t\"\u0004\b5\u0010\u000bR$\u00106\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b7\u0010\u000f\"\u0004\b8\u0010\u0011R$\u00109\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b:\u0010\u000f\"\u0004\b;\u0010\u0011¨\u0006a"}, d2 = {"Lgateway/v1/StaticDeviceInfoKt$AndroidKt$Dsl;", "", "_builder", "Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;", "(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;)V", "value", "", "androidFingerprint", "getAndroidFingerprint", "()Ljava/lang/String;", "setAndroidFingerprint", "(Ljava/lang/String;)V", "", "apiLevel", "getApiLevel", "()I", "setApiLevel", "(I)V", "apkDeveloperSigningCertificateHash", "getApkDeveloperSigningCertificateHash", "setApkDeveloperSigningCertificateHash", "appInstaller", "getAppInstaller", "setAppInstaller", "buildBoard", "getBuildBoard", "setBuildBoard", "buildBootloader", "getBuildBootloader", "setBuildBootloader", "buildBrand", "getBuildBrand", "setBuildBrand", "buildDevice", "getBuildDevice", "setBuildDevice", "buildDisplay", "getBuildDisplay", "setBuildDisplay", "buildFingerprint", "getBuildFingerprint", "setBuildFingerprint", "buildHardware", "getBuildHardware", "setBuildHardware", "buildHost", "getBuildHost", "setBuildHost", "buildId", "getBuildId", "setBuildId", "buildProduct", "getBuildProduct", "setBuildProduct", "extensionVersion", "getExtensionVersion", "setExtensionVersion", "versionCode", "getVersionCode", "setVersionCode", "_build", "Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android;", "clearAndroidFingerprint", "", "clearApiLevel", "clearApkDeveloperSigningCertificateHash", "clearAppInstaller", "clearBuildBoard", "clearBuildBootloader", "clearBuildBrand", "clearBuildDevice", "clearBuildDisplay", "clearBuildFingerprint", "clearBuildHardware", "clearBuildHost", "clearBuildId", "clearBuildProduct", "clearExtensionVersion", "clearVersionCode", "hasAndroidFingerprint", "", "hasApiLevel", "hasApkDeveloperSigningCertificateHash", "hasAppInstaller", "hasBuildBoard", "hasBuildBootloader", "hasBuildBrand", "hasBuildDevice", "hasBuildDisplay", "hasBuildFingerprint", "hasBuildHardware", "hasBuildHost", "hasBuildId", "hasBuildProduct", "hasExtensionVersion", "hasVersionCode", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class n0 {
    public static final a a = new a(null);
    private final StaticDeviceInfoOuterClass.StaticDeviceInfo.Android.a b;

    /* JADX INFO: compiled from: StaticDeviceInfoKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/StaticDeviceInfoKt$AndroidKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/StaticDeviceInfoKt$AndroidKt$Dsl;", "builder", "Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ n0 a(StaticDeviceInfoOuterClass.StaticDeviceInfo.Android.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new n0(builder, null);
        }
    }

    private n0(StaticDeviceInfoOuterClass.StaticDeviceInfo.Android.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ n0(StaticDeviceInfoOuterClass.StaticDeviceInfo.Android.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ StaticDeviceInfoOuterClass.StaticDeviceInfo.Android a() {
        StaticDeviceInfoOuterClass.StaticDeviceInfo.Android androidBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(androidBuild, "_builder.build()");
        return androidBuild;
    }

    public final void b(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.b(value);
    }

    public final void c(int i) {
        this.b.d(i);
    }

    public final void d(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.e(value);
    }

    public final void e(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.f(value);
    }

    public final void f(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.g(value);
    }

    public final void g(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.h(value);
    }

    public final void h(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.i(value);
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

    public final void n(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.o(value);
    }

    public final void o(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.p(value);
    }

    public final void p(int i) {
        this.b.q(i);
    }

    public final void q(int i) {
        this.b.r(i);
    }
}
