package gateway.v1;

import com.json.mediationsdk.utils.IronSourceConstants;
import gateway.v1.GetTokenEventRequestOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GetTokenEventRequestKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000f\u001a\u00020\u0010H\u0001J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0012J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000b¨\u0006\u0018"}, d2 = {"Lgateway/v1/GetTokenEventRequestKt$Dsl;", "", "_builder", "Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$Builder;", "(Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$Builder;)V", "value", "Lcom/google/protobuf/ByteString;", IronSourceConstants.AD_UNIT_IS_MEDIATION_STATE, "getInterstitial", "()Lcom/google/protobuf/ByteString;", "setInterstitial", "(Lcom/google/protobuf/ByteString;)V", "rewarded", "getRewarded", "setRewarded", "_build", "Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;", "clearInterstitial", "", "clearRewarded", "hasInterstitial", "", "hasRewarded", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class w {
    public static final a a = new a(null);
    private final GetTokenEventRequestOuterClass.GetTokenEventRequest.a b;

    /* JADX INFO: compiled from: GetTokenEventRequestKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/GetTokenEventRequestKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/GetTokenEventRequestKt$Dsl;", "builder", "Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ w a(GetTokenEventRequestOuterClass.GetTokenEventRequest.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new w(builder, null);
        }
    }

    private w(GetTokenEventRequestOuterClass.GetTokenEventRequest.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ w(GetTokenEventRequestOuterClass.GetTokenEventRequest.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ GetTokenEventRequestOuterClass.GetTokenEventRequest a() {
        GetTokenEventRequestOuterClass.GetTokenEventRequest getTokenEventRequestBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(getTokenEventRequestBuild, "_builder.build()");
        return getTokenEventRequestBuild;
    }
}
