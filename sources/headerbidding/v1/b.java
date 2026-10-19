package headerbidding.v1;

import headerbidding.v1.HeaderBiddingTokenOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: HeaderBiddingTokenKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\t\b\u0007\u0018\u0000 \\2\u00020\u0001:\u0001\\B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010E\u001a\u00020FH\u0001J\u0006\u0010G\u001a\u00020HJ\u0006\u0010I\u001a\u00020HJ\u0006\u0010J\u001a\u00020HJ\u0006\u0010K\u001a\u00020HJ\u0006\u0010L\u001a\u00020HJ\u0006\u0010M\u001a\u00020HJ\u0006\u0010N\u001a\u00020HJ\u0006\u0010O\u001a\u00020HJ\u0006\u0010P\u001a\u00020HJ\u0006\u0010Q\u001a\u00020HJ\u0006\u0010R\u001a\u00020HJ\u0006\u0010S\u001a\u00020TJ\u0006\u0010U\u001a\u00020TJ\u0006\u0010V\u001a\u00020TJ\u0006\u0010W\u001a\u00020TJ\u0006\u0010X\u001a\u00020TJ\u0006\u0010Y\u001a\u00020TJ\u0006\u0010Z\u001a\u00020TJ\u0006\u0010[\u001a\u00020TR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR$\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u001e8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R$\u0010%\u001a\u00020$2\u0006\u0010\u0005\u001a\u00020$8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R$\u0010+\u001a\u00020*2\u0006\u0010\u0005\u001a\u00020*8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R$\u00100\u001a\u00020$2\u0006\u0010\u0005\u001a\u00020$8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b1\u0010'\"\u0004\b2\u0010)R$\u00104\u001a\u0002032\u0006\u0010\u0005\u001a\u0002038G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b5\u00106\"\u0004\b7\u00108R$\u00109\u001a\u00020$2\u0006\u0010\u0005\u001a\u00020$8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b:\u0010'\"\u0004\b;\u0010)R$\u0010=\u001a\u00020<2\u0006\u0010\u0005\u001a\u00020<8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\u0017\u0010B\u001a\u0004\u0018\u00010\u0018*\u00020\u00008F¢\u0006\u0006\u001a\u0004\bC\u0010D¨\u0006]"}, d2 = {"Lheaderbidding/v1/HeaderBiddingTokenKt$Dsl;", "", "_builder", "Lheaderbidding/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken$Builder;", "(Lheaderbidding/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken$Builder;)V", "value", "Lgateway/v1/CampaignStateOuterClass$CampaignState;", "campaignState", "getCampaignState", "()Lgateway/v1/CampaignStateOuterClass$CampaignState;", "setCampaignState", "(Lgateway/v1/CampaignStateOuterClass$CampaignState;)V", "Lgateway/v1/ClientInfoOuterClass$ClientInfo;", "clientInfo", "getClientInfo", "()Lgateway/v1/ClientInfoOuterClass$ClientInfo;", "setClientInfo", "(Lgateway/v1/ClientInfoOuterClass$ClientInfo;)V", "Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;", "dynamicDeviceInfo", "getDynamicDeviceInfo", "()Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;", "setDynamicDeviceInfo", "(Lgateway/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V", "Lgateway/v1/PiiOuterClass$Pii;", "pii", "getPii", "()Lgateway/v1/PiiOuterClass$Pii;", "setPii", "(Lgateway/v1/PiiOuterClass$Pii;)V", "Lgateway/v1/SessionCountersOuterClass$SessionCounters;", "sessionCounters", "getSessionCounters", "()Lgateway/v1/SessionCountersOuterClass$SessionCounters;", "setSessionCounters", "(Lgateway/v1/SessionCountersOuterClass$SessionCounters;)V", "Lcom/google/protobuf/ByteString;", "sessionToken", "getSessionToken", "()Lcom/google/protobuf/ByteString;", "setSessionToken", "(Lcom/google/protobuf/ByteString;)V", "Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;", "staticDeviceInfo", "getStaticDeviceInfo", "()Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;", "setStaticDeviceInfo", "(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V", "tcf", "getTcf", "setTcf", "Lgateway/v1/TimestampsOuterClass$Timestamps;", "timestamps", "getTimestamps", "()Lgateway/v1/TimestampsOuterClass$Timestamps;", "setTimestamps", "(Lgateway/v1/TimestampsOuterClass$Timestamps;)V", "tokenId", "getTokenId", "setTokenId", "", "tokenNumber", "getTokenNumber", "()I", "setTokenNumber", "(I)V", "piiOrNull", "getPiiOrNull", "(Lheaderbidding/v1/HeaderBiddingTokenKt$Dsl;)Lgateway/v1/PiiOuterClass$Pii;", "_build", "Lheaderbidding/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken;", "clearCampaignState", "", "clearClientInfo", "clearDynamicDeviceInfo", "clearPii", "clearSessionCounters", "clearSessionToken", "clearStaticDeviceInfo", "clearTcf", "clearTimestamps", "clearTokenId", "clearTokenNumber", "hasCampaignState", "", "hasClientInfo", "hasDynamicDeviceInfo", "hasPii", "hasSessionCounters", "hasStaticDeviceInfo", "hasTcf", "hasTimestamps", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class b {
    public static final a a = new a(null);
    private final HeaderBiddingTokenOuterClass.HeaderBiddingToken.a b;

    /* JADX INFO: compiled from: HeaderBiddingTokenKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lheaderbidding/v1/HeaderBiddingTokenKt$Dsl$Companion;", "", "()V", "_create", "Lheaderbidding/v1/HeaderBiddingTokenKt$Dsl;", "builder", "Lheaderbidding/v1/HeaderBiddingTokenOuterClass$HeaderBiddingToken$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final /* synthetic */ b a(HeaderBiddingTokenOuterClass.HeaderBiddingToken.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new b(builder, null);
        }
    }

    private b(HeaderBiddingTokenOuterClass.HeaderBiddingToken.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ b(HeaderBiddingTokenOuterClass.HeaderBiddingToken.a aVar, n nVar) {
        this(aVar);
    }

    public final /* synthetic */ HeaderBiddingTokenOuterClass.HeaderBiddingToken a() {
        HeaderBiddingTokenOuterClass.HeaderBiddingToken headerBiddingTokenBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(headerBiddingTokenBuild, "_builder.build()");
        return headerBiddingTokenBuild;
    }
}
