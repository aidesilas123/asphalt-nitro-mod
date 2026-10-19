package gateway.v1;

import gateway.v1.StaticDeviceInfoOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StaticDeviceInfoKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010\u001c\n\u0002\b\f\b\u0007\u0018\u0000 <2\u00020\u0001:\u0002<=B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010#\u001a\u00020$H\u0001J\u0006\u0010%\u001a\u00020&J\u0006\u0010'\u001a\u00020&J\u0006\u0010(\u001a\u00020&J\u0006\u0010)\u001a\u00020&J\u0006\u0010*\u001a\u00020\u0012J\u0006\u0010+\u001a\u00020\u0012J\u0006\u0010,\u001a\u00020\u0012J\u0006\u0010-\u001a\u00020\u0012J%\u0010.\u001a\u00020&*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¢\u0006\u0002\b/J+\u00100\u001a\u00020&*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001a0\u00192\f\u00101\u001a\b\u0012\u0004\u0012\u00020\u000602H\u0007¢\u0006\u0002\b3J\u001d\u00104\u001a\u00020&*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001a0\u0019H\u0007¢\u0006\u0002\b5J&\u00106\u001a\u00020&*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\n¢\u0006\u0002\b7J,\u00106\u001a\u00020&*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001a0\u00192\f\u00101\u001a\b\u0012\u0004\u0012\u00020\u000602H\u0087\n¢\u0006\u0002\b8J.\u00109\u001a\u00020&*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010:\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\u0002¢\u0006\u0002\b;R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001d\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001a0\u00198F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR$\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0005\u001a\u00020\u001d8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006>"}, d2 = {"Lgateway/v1/StaticDeviceInfoKt$IosKt$Dsl;", "", "_builder", "Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;", "(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;)V", "value", "", "builtSdkVersion", "getBuiltSdkVersion", "()Ljava/lang/String;", "setBuiltSdkVersion", "(Ljava/lang/String;)V", "", "screenScale", "getScreenScale", "()I", "setScreenScale", "(I)V", "", "simulator", "getSimulator", "()Z", "setSimulator", "(Z)V", "skadnetworkId", "Lcom/google/protobuf/kotlin/DslList;", "Lgateway/v1/StaticDeviceInfoKt$IosKt$Dsl$SkadnetworkIdProxy;", "getSkadnetworkId", "()Lcom/google/protobuf/kotlin/DslList;", "", "systemBootTime", "getSystemBootTime", "()J", "setSystemBootTime", "(J)V", "_build", "Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios;", "clearBuiltSdkVersion", "", "clearScreenScale", "clearSimulator", "clearSystemBootTime", "hasBuiltSdkVersion", "hasScreenScale", "hasSimulator", "hasSystemBootTime", "add", "addSkadnetworkId", "addAll", "values", "", "addAllSkadnetworkId", "clear", "clearSkadnetworkId", "plusAssign", "plusAssignSkadnetworkId", "plusAssignAllSkadnetworkId", "set", "index", "setSkadnetworkId", "Companion", "SkadnetworkIdProxy", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class p0 {
    public static final a a = new a(null);
    private final StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios.a b;

    /* JADX INFO: compiled from: StaticDeviceInfoKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/StaticDeviceInfoKt$IosKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/StaticDeviceInfoKt$IosKt$Dsl;", "builder", "Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ p0 a(StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new p0(builder, null);
        }
    }

    private p0(StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ p0(StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios a() {
        StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios iosBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(iosBuild, "_builder.build()");
        return iosBuild;
    }
}
