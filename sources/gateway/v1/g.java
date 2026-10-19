package gateway.v1;

import com.google.protobuf.ByteString;
import com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase;
import gateway.v1.AdResponseOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdResponseKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0007\u0018\u0000 >2\u00020\u0001:\u0001>B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u00100\u001a\u000201H\u0001J\u0006\u00102\u001a\u000203J\u0006\u00104\u001a\u000203J\u0006\u00105\u001a\u000203J\u0006\u00106\u001a\u000203J\u0006\u00107\u001a\u000203J\u0006\u00108\u001a\u000203J\u0006\u00109\u001a\u000203J\u0006\u0010:\u001a\u000203J\u0006\u0010;\u001a\u00020<J\u0006\u0010=\u001a\u00020<R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u000f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00158G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR$\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001c\u0010\t\"\u0004\b\u001d\u0010\u000bR$\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u000f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001f\u0010\u0012\"\u0004\b \u0010\u0014R$\u0010!\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\"\u0010\t\"\u0004\b#\u0010\u000bR$\u0010%\u001a\u00020$2\u0006\u0010\u0005\u001a\u00020$8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u0017\u0010*\u001a\u0004\u0018\u00010\u0015*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b+\u0010,R\u0017\u0010-\u001a\u0004\u0018\u00010$*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b.\u0010/¨\u0006?"}, d2 = {"Lgateway/v1/AdResponseKt$Dsl;", "", "_builder", "Lgateway/v1/AdResponseOuterClass$AdResponse$Builder;", "(Lgateway/v1/AdResponseOuterClass$AdResponse$Builder;)V", "value", "Lcom/google/protobuf/ByteString;", "adData", "getAdData", "()Lcom/google/protobuf/ByteString;", "setAdData", "(Lcom/google/protobuf/ByteString;)V", HandleAndroidInvocationsUseCase.KEY_AD_DATA_REFRESH_TOKEN, "getAdDataRefreshToken", "setAdDataRefreshToken", "", "adDataVersion", "getAdDataVersion", "()I", "setAdDataVersion", "(I)V", "Lgateway/v1/ErrorOuterClass$Error;", "error", "getError", "()Lgateway/v1/ErrorOuterClass$Error;", "setError", "(Lgateway/v1/ErrorOuterClass$Error;)V", "impressionConfiguration", "getImpressionConfiguration", "setImpressionConfiguration", "impressionConfigurationVersion", "getImpressionConfigurationVersion", "setImpressionConfigurationVersion", HandleAndroidInvocationsUseCase.KEY_TRACKING_TOKEN, "getTrackingToken", "setTrackingToken", "Lgateway/v1/WebviewConfiguration$WebViewConfiguration;", "webviewConfiguration", "getWebviewConfiguration", "()Lgateway/v1/WebviewConfiguration$WebViewConfiguration;", "setWebviewConfiguration", "(Lgateway/v1/WebviewConfiguration$WebViewConfiguration;)V", "errorOrNull", "getErrorOrNull", "(Lgateway/v1/AdResponseKt$Dsl;)Lgateway/v1/ErrorOuterClass$Error;", "webviewConfigurationOrNull", "getWebviewConfigurationOrNull", "(Lgateway/v1/AdResponseKt$Dsl;)Lgateway/v1/WebviewConfiguration$WebViewConfiguration;", "_build", "Lgateway/v1/AdResponseOuterClass$AdResponse;", "clearAdData", "", "clearAdDataRefreshToken", "clearAdDataVersion", "clearError", "clearImpressionConfiguration", "clearImpressionConfigurationVersion", "clearTrackingToken", "clearWebviewConfiguration", "hasError", "", "hasWebviewConfiguration", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class g {
    public static final a a = new a(null);
    private final AdResponseOuterClass.AdResponse.a b;

    /* JADX INFO: compiled from: AdResponseKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/AdResponseKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/AdResponseKt$Dsl;", "builder", "Lgateway/v1/AdResponseOuterClass$AdResponse$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ g a(AdResponseOuterClass.AdResponse.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new g(builder, null);
        }
    }

    private g(AdResponseOuterClass.AdResponse.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ g(AdResponseOuterClass.AdResponse.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ AdResponseOuterClass.AdResponse a() {
        AdResponseOuterClass.AdResponse adResponseBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(adResponseBuild, "_builder.build()");
        return adResponseBuild;
    }

    public final void b(ByteString value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.b(value);
    }
}
