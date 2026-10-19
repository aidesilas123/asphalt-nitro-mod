package gateway.v1;

import com.applovin.sdk.AppLovinEventTypes;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridge;
import gateway.v1.PrivacyUpdateResponseOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PrivacyUpdateResponseKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0012\u001a\u00020\u0013H\u0001J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0018"}, d2 = {"Lgateway/v1/PrivacyUpdateResponseKt$Dsl;", "", "_builder", "Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;", "(Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;)V", "value", "Lcom/google/protobuf/ByteString;", AppLovinEventTypes.USER_VIEWED_CONTENT, "getContent", "()Lcom/google/protobuf/ByteString;", "setContent", "(Lcom/google/protobuf/ByteString;)V", "", "version", MobileAdsBridge.versionMethodName, "()I", "setVersion", "(I)V", "_build", "Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;", "clearContent", "", "clearVersion", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class i0 {
    public static final a a = new a(null);
    private final PrivacyUpdateResponseOuterClass.PrivacyUpdateResponse.a b;

    /* JADX INFO: compiled from: PrivacyUpdateResponseKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/PrivacyUpdateResponseKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/PrivacyUpdateResponseKt$Dsl;", "builder", "Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ i0 a(PrivacyUpdateResponseOuterClass.PrivacyUpdateResponse.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new i0(builder, null);
        }
    }

    private i0(PrivacyUpdateResponseOuterClass.PrivacyUpdateResponse.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ i0(PrivacyUpdateResponseOuterClass.PrivacyUpdateResponse.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ PrivacyUpdateResponseOuterClass.PrivacyUpdateResponse a() {
        PrivacyUpdateResponseOuterClass.PrivacyUpdateResponse privacyUpdateResponseBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(privacyUpdateResponseBuild, "_builder.build()");
        return privacyUpdateResponseBuild;
    }
}
