package gateway.v1;

import com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase;
import gateway.v1.AdPlayerConfigResponseOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdPlayerConfigResponseKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0007\u0018\u0000 62\u00020\u0001:\u00016B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010*\u001a\u00020+H\u0001J\u0006\u0010,\u001a\u00020-J\u0006\u0010.\u001a\u00020-J\u0006\u0010/\u001a\u00020-J\u0006\u00100\u001a\u00020-J\u0006\u00101\u001a\u00020-J\u0006\u00102\u001a\u00020-J\u0006\u00103\u001a\u000204J\u0006\u00105\u001a\u000204R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\t\"\u0004\b\u0014\u0010\u000bR$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00158G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR$\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001c\u0010\t\"\u0004\b\u001d\u0010\u000bR$\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u001e8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u0017\u0010$\u001a\u0004\u0018\u00010\f*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b%\u0010&R\u0017\u0010'\u001a\u0004\u0018\u00010\u001e*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b(\u0010)¨\u00067"}, d2 = {"Lgateway/v1/AdPlayerConfigResponseKt$Dsl;", "", "_builder", "Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse$Builder;", "(Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse$Builder;)V", "value", "Lcom/google/protobuf/ByteString;", HandleAndroidInvocationsUseCase.KEY_AD_DATA_REFRESH_TOKEN, "getAdDataRefreshToken", "()Lcom/google/protobuf/ByteString;", "setAdDataRefreshToken", "(Lcom/google/protobuf/ByteString;)V", "Lgateway/v1/ErrorOuterClass$Error;", "error", "getError", "()Lgateway/v1/ErrorOuterClass$Error;", "setError", "(Lgateway/v1/ErrorOuterClass$Error;)V", "impressionConfiguration", "getImpressionConfiguration", "setImpressionConfiguration", "", "impressionConfigurationVersion", "getImpressionConfigurationVersion", "()I", "setImpressionConfigurationVersion", "(I)V", HandleAndroidInvocationsUseCase.KEY_TRACKING_TOKEN, "getTrackingToken", "setTrackingToken", "Lgateway/v1/WebviewConfiguration$WebViewConfiguration;", "webviewConfiguration", "getWebviewConfiguration", "()Lgateway/v1/WebviewConfiguration$WebViewConfiguration;", "setWebviewConfiguration", "(Lgateway/v1/WebviewConfiguration$WebViewConfiguration;)V", "errorOrNull", "getErrorOrNull", "(Lgateway/v1/AdPlayerConfigResponseKt$Dsl;)Lgateway/v1/ErrorOuterClass$Error;", "webviewConfigurationOrNull", "getWebviewConfigurationOrNull", "(Lgateway/v1/AdPlayerConfigResponseKt$Dsl;)Lgateway/v1/WebviewConfiguration$WebViewConfiguration;", "_build", "Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;", "clearAdDataRefreshToken", "", "clearError", "clearImpressionConfiguration", "clearImpressionConfigurationVersion", "clearTrackingToken", "clearWebviewConfiguration", "hasError", "", "hasWebviewConfiguration", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class e {
    public static final a a = new a(null);
    private final AdPlayerConfigResponseOuterClass.AdPlayerConfigResponse.a b;

    /* JADX INFO: compiled from: AdPlayerConfigResponseKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/AdPlayerConfigResponseKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/AdPlayerConfigResponseKt$Dsl;", "builder", "Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ e a(AdPlayerConfigResponseOuterClass.AdPlayerConfigResponse.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new e(builder, null);
        }
    }

    private e(AdPlayerConfigResponseOuterClass.AdPlayerConfigResponse.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ e(AdPlayerConfigResponseOuterClass.AdPlayerConfigResponse.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ AdPlayerConfigResponseOuterClass.AdPlayerConfigResponse a() {
        AdPlayerConfigResponseOuterClass.AdPlayerConfigResponse adPlayerConfigResponseBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(adPlayerConfigResponseBuild, "_builder.build()");
        return adPlayerConfigResponseBuild;
    }
}
