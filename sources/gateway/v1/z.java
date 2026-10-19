package gateway.v1;

import com.facebook.share.internal.ShareConstants;
import com.google.protobuf.ByteString;
import com.kidoz.sdk.api.players.web_player.WebPreferenceConstants;
import com.unity3d.services.ads.gmascar.utils.ScarConstants;
import gateway.v1.ClientInfoOuterClass;
import gateway.v1.InitializationRequestOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InitializationRequestKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0012\b\u0007\u0018\u0000 G2\u00020\u0001:\u0001GB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u00103\u001a\u000204H\u0001J\u0006\u00105\u001a\u000206J\u0006\u00107\u001a\u000206J\u0006\u00108\u001a\u000206J\u0006\u00109\u001a\u000206J\u0006\u0010:\u001a\u000206J\u0006\u0010;\u001a\u000206J\u0006\u0010<\u001a\u000206J\u0006\u0010=\u001a\u000206J\u0006\u0010>\u001a\u000206J\u0006\u0010?\u001a\u000206J\u0006\u0010@\u001a\u00020$J\u0006\u0010A\u001a\u00020$J\u0006\u0010B\u001a\u00020$J\u0006\u0010C\u001a\u00020$J\u0006\u0010D\u001a\u00020$J\u0006\u0010E\u001a\u00020$J\u0006\u0010F\u001a\u00020$R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011R$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00158G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR$\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010!\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\"\u0010\t\"\u0004\b#\u0010\u000bR$\u0010%\u001a\u00020$2\u0006\u0010\u0005\u001a\u00020$8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R$\u0010*\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b+\u0010\t\"\u0004\b,\u0010\u000bR$\u0010-\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b.\u0010\u000f\"\u0004\b/\u0010\u0011R$\u00100\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b1\u0010\u000f\"\u0004\b2\u0010\u0011¨\u0006H"}, d2 = {"Lgateway/v1/InitializationRequestKt$Dsl;", "", "_builder", "Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$Builder;", "(Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$Builder;)V", "value", "", "analyticsUserId", "getAnalyticsUserId", "()Ljava/lang/String;", "setAnalyticsUserId", "(Ljava/lang/String;)V", "Lcom/google/protobuf/ByteString;", "auid", "getAuid", "()Lcom/google/protobuf/ByteString;", "setAuid", "(Lcom/google/protobuf/ByteString;)V", WebPreferenceConstants.CLEAR_CACHE_EXIT, "getCache", "setCache", "Lgateway/v1/ClientInfoOuterClass$ClientInfo;", "clientInfo", "getClientInfo", "()Lgateway/v1/ClientInfoOuterClass$ClientInfo;", "setClientInfo", "(Lgateway/v1/ClientInfoOuterClass$ClientInfo;)V", "Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;", "deviceInfo", "getDeviceInfo", "()Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;", "setDeviceInfo", "(Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;)V", ScarConstants.IDFI_KEY, "getIdfi", "setIdfi", "", "isFirstInit", "getIsFirstInit", "()Z", "setIsFirstInit", "(Z)V", "legacyFlowUserConsent", "getLegacyFlowUserConsent", "setLegacyFlowUserConsent", ShareConstants.WEB_DIALOG_PARAM_PRIVACY, "getPrivacy", "setPrivacy", "sessionId", "getSessionId", "setSessionId", "_build", "Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;", "clearAnalyticsUserId", "", "clearAuid", "clearCache", "clearClientInfo", "clearDeviceInfo", "clearIdfi", "clearIsFirstInit", "clearLegacyFlowUserConsent", "clearPrivacy", "clearSessionId", "hasAnalyticsUserId", "hasAuid", "hasCache", "hasClientInfo", "hasDeviceInfo", "hasLegacyFlowUserConsent", "hasPrivacy", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class z {
    public static final a a = new a(null);
    private final InitializationRequestOuterClass.InitializationRequest.a b;

    /* JADX INFO: compiled from: InitializationRequestKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/InitializationRequestKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/InitializationRequestKt$Dsl;", "builder", "Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ z a(InitializationRequestOuterClass.InitializationRequest.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new z(builder, null);
        }
    }

    private z(InitializationRequestOuterClass.InitializationRequest.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ z(InitializationRequestOuterClass.InitializationRequest.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ InitializationRequestOuterClass.InitializationRequest a() {
        InitializationRequestOuterClass.InitializationRequest initializationRequestBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(initializationRequestBuild, "_builder.build()");
        return initializationRequestBuild;
    }

    public final void b(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.b(value);
    }

    public final void c(ByteString value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.d(value);
    }

    public final void d(ByteString value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.e(value);
    }

    public final void e(ClientInfoOuterClass.ClientInfo value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.f(value);
    }

    public final void f(InitializationRequestOuterClass.InitializationDeviceInfo value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.g(value);
    }

    public final void g(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.h(value);
    }

    public final void h(boolean z) {
        this.b.i(z);
    }

    public final void i(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.j(value);
    }

    public final void j(ByteString value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.k(value);
    }

    public final void k(ByteString value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.l(value);
    }
}
