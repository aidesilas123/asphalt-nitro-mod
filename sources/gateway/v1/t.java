package gateway.v1;

import gateway.v1.DynamicDeviceInfoOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DynamicDeviceInfoKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u001c\n\u0002\b\u0012\b\u0007\u0018\u0000 M2\u00020\u0001:\u0003MNOB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010)\u001a\u00020*H\u0001J\u0006\u0010+\u001a\u00020,J\u0006\u0010-\u001a\u00020,J\u0006\u0010.\u001a\u00020,J\u0006\u0010/\u001a\u00020,J\u0006\u00100\u001a\u00020,J\u0006\u00101\u001a\u00020,J\u0006\u00102\u001a\u000203J\u0006\u00104\u001a\u000203J\u0006\u00105\u001a\u000203J\u0006\u00106\u001a\u000203J\u0006\u00107\u001a\u000203J\u0006\u00108\u001a\u000203J%\u00109\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¢\u0006\u0002\b:J%\u00109\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u00162\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¢\u0006\u0002\b;J+\u0010<\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00170\u00162\f\u0010=\u001a\b\u0012\u0004\u0012\u00020\u00060>H\u0007¢\u0006\u0002\b?J+\u0010<\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u00162\f\u0010=\u001a\b\u0012\u0004\u0012\u00020\u00060>H\u0007¢\u0006\u0002\b@J\u001d\u0010A\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00170\u0016H\u0007¢\u0006\u0002\bBJ\u001d\u0010A\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u0016H\u0007¢\u0006\u0002\bCJ&\u0010D\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\n¢\u0006\u0002\bEJ,\u0010D\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00170\u00162\f\u0010=\u001a\b\u0012\u0004\u0012\u00020\u00060>H\u0087\n¢\u0006\u0002\bFJ&\u0010D\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u00162\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\n¢\u0006\u0002\bGJ,\u0010D\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u00162\f\u0010=\u001a\b\u0012\u0004\u0012\u00020\u00060>H\u0087\n¢\u0006\u0002\bHJ.\u0010I\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010J\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\u0002¢\u0006\u0002\bKJ.\u0010I\u001a\u00020,*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u00162\u0006\u0010J\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\u0002¢\u0006\u0002\bLR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\t\"\u0004\b\u0014\u0010\u000bR\u001d\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00170\u00168F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R$\u0010\u001a\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001b\u0010\u000f\"\u0004\b\u001c\u0010\u0011R\u001d\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u00168F¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u0019R$\u0010 \u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b!\u0010\u000f\"\u0004\b\"\u0010\u0011R$\u0010$\u001a\u00020#2\u0006\u0010\u0005\u001a\u00020#8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(¨\u0006P"}, d2 = {"Lgateway/v1/DynamicDeviceInfoKt$IosKt$Dsl;", "", "_builder", "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;", "(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;)V", "value", "", "currentRadioAccessTechnology", "getCurrentRadioAccessTechnology", "()Ljava/lang/String;", "setCurrentRadioAccessTechnology", "(Ljava/lang/String;)V", "", "currentUiTheme", "getCurrentUiTheme", "()I", "setCurrentUiTheme", "(I)V", "deviceName", "getDeviceName", "setDeviceName", "localeList", "Lcom/google/protobuf/kotlin/DslList;", "Lgateway/v1/DynamicDeviceInfoKt$IosKt$Dsl$LocaleListProxy;", "getLocaleList", "()Lcom/google/protobuf/kotlin/DslList;", "networkReachabilityFlags", "getNetworkReachabilityFlags", "setNetworkReachabilityFlags", "nwPathInterfaces", "Lgateway/v1/DynamicDeviceInfoKt$IosKt$Dsl$NwPathInterfacesProxy;", "getNwPathInterfaces", "trackingAuthStatus", "getTrackingAuthStatus", "setTrackingAuthStatus", "", "volume", "getVolume", "()D", "setVolume", "(D)V", "_build", "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios;", "clearCurrentRadioAccessTechnology", "", "clearCurrentUiTheme", "clearDeviceName", "clearNetworkReachabilityFlags", "clearTrackingAuthStatus", "clearVolume", "hasCurrentRadioAccessTechnology", "", "hasCurrentUiTheme", "hasDeviceName", "hasNetworkReachabilityFlags", "hasTrackingAuthStatus", "hasVolume", "add", "addLocaleList", "addNwPathInterfaces", "addAll", "values", "", "addAllLocaleList", "addAllNwPathInterfaces", "clear", "clearLocaleList", "clearNwPathInterfaces", "plusAssign", "plusAssignLocaleList", "plusAssignAllLocaleList", "plusAssignNwPathInterfaces", "plusAssignAllNwPathInterfaces", "set", "index", "setLocaleList", "setNwPathInterfaces", "Companion", "LocaleListProxy", "NwPathInterfacesProxy", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class t {
    public static final a a = new a(null);
    private final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios.a b;

    /* JADX INFO: compiled from: DynamicDeviceInfoKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/DynamicDeviceInfoKt$IosKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/DynamicDeviceInfoKt$IosKt$Dsl;", "builder", "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Ios$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ t a(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new t(builder, null);
        }
    }

    private t(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ t(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios a() {
        DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios iosBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(iosBuild, "_builder.build()");
        return iosBuild;
    }
}
