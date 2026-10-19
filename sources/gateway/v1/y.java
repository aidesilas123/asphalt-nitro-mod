package gateway.v1;

import com.json.qc;
import gateway.v1.InitializationRequestOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InitializationDeviceInfoKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0015\u001a\u00020\u0016H\u0001J\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010\u0019\u001a\u00020\u0018J\u0006\u0010\u001a\u001a\u00020\u0018J\u0006\u0010\u001b\u001a\u00020\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR$\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000bR$\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\t\"\u0004\b\u0014\u0010\u000b¨\u0006\u001d"}, d2 = {"Lgateway/v1/InitializationDeviceInfoKt$Dsl;", "", "_builder", "Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo$Builder;", "(Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo$Builder;)V", "value", "", "bundleId", "getBundleId", "()Ljava/lang/String;", "setBundleId", "(Ljava/lang/String;)V", qc.m0, "getDeviceMake", "setDeviceMake", "deviceModel", "getDeviceModel", "setDeviceModel", "osVersion", "getOsVersion", "setOsVersion", "_build", "Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;", "clearBundleId", "", "clearDeviceMake", "clearDeviceModel", "clearOsVersion", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class y {
    public static final a a = new a(null);
    private final InitializationRequestOuterClass.InitializationDeviceInfo.a b;

    /* JADX INFO: compiled from: InitializationDeviceInfoKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/InitializationDeviceInfoKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/InitializationDeviceInfoKt$Dsl;", "builder", "Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ y a(InitializationRequestOuterClass.InitializationDeviceInfo.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new y(builder, null);
        }
    }

    private y(InitializationRequestOuterClass.InitializationDeviceInfo.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ y(InitializationRequestOuterClass.InitializationDeviceInfo.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ InitializationRequestOuterClass.InitializationDeviceInfo a() {
        InitializationRequestOuterClass.InitializationDeviceInfo initializationDeviceInfoBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(initializationDeviceInfoBuild, "_builder.build()");
        return initializationDeviceInfoBuild;
    }

    public final void b(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.b(value);
    }

    public final void c(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.d(value);
    }

    public final void d(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.e(value);
    }

    public final void e(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.f(value);
    }
}
