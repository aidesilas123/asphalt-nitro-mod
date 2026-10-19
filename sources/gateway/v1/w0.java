package gateway.v1;

import gateway.v1.UniversalResponseOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UniversalResponseKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0007\u0018\u0000 72\u00020\u0001:\u00017B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010(\u001a\u00020)H\u0001J\u0006\u0010*\u001a\u00020+J\u0006\u0010,\u001a\u00020+J\u0006\u0010-\u001a\u00020+J\u0006\u0010.\u001a\u00020+J\u0006\u0010/\u001a\u00020+J\u0006\u00100\u001a\u00020+J\u0006\u00101\u001a\u000202J\u0006\u00103\u001a\u000202J\u0006\u00104\u001a\u000202J\u0006\u00105\u001a\u000202J\u0006\u00106\u001a\u000202R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR$\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u001e8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u0011\u0010$\u001a\u00020%8G¢\u0006\u0006\u001a\u0004\b&\u0010'¨\u00068"}, d2 = {"Lgateway/v1/UniversalResponseKt$PayloadKt$Dsl;", "", "_builder", "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;", "(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;)V", "value", "Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;", "adDataRefreshResponse", "getAdDataRefreshResponse", "()Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;", "setAdDataRefreshResponse", "(Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)V", "Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;", "adPlayerConfigResponse", "getAdPlayerConfigResponse", "()Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;", "setAdPlayerConfigResponse", "(Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)V", "Lgateway/v1/AdResponseOuterClass$AdResponse;", "adResponse", "getAdResponse", "()Lgateway/v1/AdResponseOuterClass$AdResponse;", "setAdResponse", "(Lgateway/v1/AdResponseOuterClass$AdResponse;)V", "Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;", "initializationResponse", "getInitializationResponse", "()Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;", "setInitializationResponse", "(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;)V", "Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;", "privacyUpdateResponse", "getPrivacyUpdateResponse", "()Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;", "setPrivacyUpdateResponse", "(Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)V", "valueCase", "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;", "getValueCase", "()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;", "_build", "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;", "clearAdDataRefreshResponse", "", "clearAdPlayerConfigResponse", "clearAdResponse", "clearInitializationResponse", "clearPrivacyUpdateResponse", "clearValue", "hasAdDataRefreshResponse", "", "hasAdPlayerConfigResponse", "hasAdResponse", "hasInitializationResponse", "hasPrivacyUpdateResponse", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class w0 {
    public static final a a = new a(null);
    private final UniversalResponseOuterClass.UniversalResponse.Payload.a b;

    /* JADX INFO: compiled from: UniversalResponseKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/UniversalResponseKt$PayloadKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/UniversalResponseKt$PayloadKt$Dsl;", "builder", "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ w0 a(UniversalResponseOuterClass.UniversalResponse.Payload.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new w0(builder, null);
        }
    }

    private w0(UniversalResponseOuterClass.UniversalResponse.Payload.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ w0(UniversalResponseOuterClass.UniversalResponse.Payload.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ UniversalResponseOuterClass.UniversalResponse.Payload a() {
        UniversalResponseOuterClass.UniversalResponse.Payload payloadBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(payloadBuild, "_builder.build()");
        return payloadBuild;
    }
}
