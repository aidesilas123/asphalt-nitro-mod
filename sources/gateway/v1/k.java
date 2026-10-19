package gateway.v1;

import com.unity3d.ads.core.domain.GetAndroidAdPlayerContext;
import gateway.v1.ClientInfoOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ClientInfoKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\b\u0007\u0018\u0000 :2\u00020\u0001:\u0001:B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010-\u001a\u00020.H\u0001J\u0006\u0010/\u001a\u000200J\u0006\u00101\u001a\u000200J\u0006\u00102\u001a\u000200J\u0006\u00103\u001a\u000200J\u0006\u00104\u001a\u000200J\u0006\u00105\u001a\u000200J\u0006\u00106\u001a\u000200J\u0006\u00107\u001a\u000200J\u0006\u00108\u001a\u00020'J\u0006\u00109\u001a\u00020'R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u000f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R$\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0016\u0010\t\"\u0004\b\u0017\u0010\u000bR$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR$\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u001e8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R$\u0010$\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b%\u0010\t\"\u0004\b&\u0010\u000bR$\u0010(\u001a\u00020'2\u0006\u0010\u0005\u001a\u00020'8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,¨\u0006;"}, d2 = {"Lgateway/v1/ClientInfoKt$Dsl;", "", "_builder", "Lgateway/v1/ClientInfoOuterClass$ClientInfo$Builder;", "(Lgateway/v1/ClientInfoOuterClass$ClientInfo$Builder;)V", "value", "", "customMediationName", "getCustomMediationName", "()Ljava/lang/String;", "setCustomMediationName", "(Ljava/lang/String;)V", GetAndroidAdPlayerContext.KEY_GAME_ID, "getGameId", "setGameId", "Lgateway/v1/ClientInfoOuterClass$MediationProvider;", "mediationProvider", "getMediationProvider", "()Lgateway/v1/ClientInfoOuterClass$MediationProvider;", "setMediationProvider", "(Lgateway/v1/ClientInfoOuterClass$MediationProvider;)V", "mediationVersion", "getMediationVersion", "setMediationVersion", "Lgateway/v1/ClientInfoOuterClass$Platform;", "platform", "getPlatform", "()Lgateway/v1/ClientInfoOuterClass$Platform;", "setPlatform", "(Lgateway/v1/ClientInfoOuterClass$Platform;)V", "", "sdkVersion", "getSdkVersion", "()I", "setSdkVersion", "(I)V", "sdkVersionName", "getSdkVersionName", "setSdkVersionName", "", "test", "getTest", "()Z", "setTest", "(Z)V", "_build", "Lgateway/v1/ClientInfoOuterClass$ClientInfo;", "clearCustomMediationName", "", "clearGameId", "clearMediationProvider", "clearMediationVersion", "clearPlatform", "clearSdkVersion", "clearSdkVersionName", "clearTest", "hasCustomMediationName", "hasMediationVersion", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class k {
    public static final a a = new a(null);
    private final ClientInfoOuterClass.ClientInfo.a b;

    /* JADX INFO: compiled from: ClientInfoKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/ClientInfoKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/ClientInfoKt$Dsl;", "builder", "Lgateway/v1/ClientInfoOuterClass$ClientInfo$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ k a(ClientInfoOuterClass.ClientInfo.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new k(builder, null);
        }
    }

    private k(ClientInfoOuterClass.ClientInfo.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ k(ClientInfoOuterClass.ClientInfo.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ ClientInfoOuterClass.ClientInfo a() {
        ClientInfoOuterClass.ClientInfo clientInfoBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(clientInfoBuild, "_builder.build()");
        return clientInfoBuild;
    }

    public final ClientInfoOuterClass.MediationProvider b() {
        ClientInfoOuterClass.MediationProvider mediationProviderB = this.b.b();
        Intrinsics.checkNotNullExpressionValue(mediationProviderB, "_builder.getMediationProvider()");
        return mediationProviderB;
    }

    public final void c(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.d(value);
    }

    public final void d(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.e(value);
    }

    public final void e(ClientInfoOuterClass.MediationProvider value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.f(value);
    }

    public final void f(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.g(value);
    }

    public final void g(ClientInfoOuterClass.Platform value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.h(value);
    }

    public final void h(int i) {
        this.b.i(i);
    }

    public final void i(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.j(value);
    }

    public final void j(boolean z) {
        this.b.k(z);
    }
}
