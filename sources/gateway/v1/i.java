package gateway.v1;

import com.google.protobuf.ByteString;
import com.json.o2;
import gateway.v1.CampaignStateOuterClass;
import gateway.v1.TimestampsOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CampaignKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0007\u0018\u0000 32\u00020\u0001:\u00013B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010'\u001a\u00020(H\u0001J\u0006\u0010)\u001a\u00020*J\u0006\u0010+\u001a\u00020*J\u0006\u0010,\u001a\u00020*J\u0006\u0010-\u001a\u00020*J\u0006\u0010.\u001a\u00020*J\u0006\u0010/\u001a\u00020*J\u0006\u00100\u001a\u000201J\u0006\u00102\u001a\u000201R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\t\"\u0004\b\u0014\u0010\u000bR$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00158G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR$\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010!\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00158G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\"\u0010\u0018\"\u0004\b#\u0010\u001aR\u0017\u0010$\u001a\u0004\u0018\u00010\u0015*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b%\u0010&¨\u00064"}, d2 = {"Lgateway/v1/CampaignKt$Dsl;", "", "_builder", "Lgateway/v1/CampaignStateOuterClass$Campaign$Builder;", "(Lgateway/v1/CampaignStateOuterClass$Campaign$Builder;)V", "value", "Lcom/google/protobuf/ByteString;", "data", "getData", "()Lcom/google/protobuf/ByteString;", "setData", "(Lcom/google/protobuf/ByteString;)V", "", "dataVersion", "getDataVersion", "()I", "setDataVersion", "(I)V", "impressionOpportunityId", "getImpressionOpportunityId", "setImpressionOpportunityId", "Lgateway/v1/TimestampsOuterClass$Timestamps;", "loadTimestamp", "getLoadTimestamp", "()Lgateway/v1/TimestampsOuterClass$Timestamps;", "setLoadTimestamp", "(Lgateway/v1/TimestampsOuterClass$Timestamps;)V", "", o2.i, "getPlacementId", "()Ljava/lang/String;", "setPlacementId", "(Ljava/lang/String;)V", "showTimestamp", "getShowTimestamp", "setShowTimestamp", "showTimestampOrNull", "getShowTimestampOrNull", "(Lgateway/v1/CampaignKt$Dsl;)Lgateway/v1/TimestampsOuterClass$Timestamps;", "_build", "Lgateway/v1/CampaignStateOuterClass$Campaign;", "clearData", "", "clearDataVersion", "clearImpressionOpportunityId", "clearLoadTimestamp", "clearPlacementId", "clearShowTimestamp", "hasLoadTimestamp", "", "hasShowTimestamp", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class i {
    public static final a a = new a(null);
    private final CampaignStateOuterClass.Campaign.a b;

    /* JADX INFO: compiled from: CampaignKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/CampaignKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/CampaignKt$Dsl;", "builder", "Lgateway/v1/CampaignStateOuterClass$Campaign$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ i a(CampaignStateOuterClass.Campaign.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new i(builder, null);
        }
    }

    private i(CampaignStateOuterClass.Campaign.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ i(CampaignStateOuterClass.Campaign.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ CampaignStateOuterClass.Campaign a() {
        CampaignStateOuterClass.Campaign campaignBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(campaignBuild, "_builder.build()");
        return campaignBuild;
    }

    public final void b(ByteString value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.b(value);
    }

    public final void c(int i) {
        this.b.d(i);
    }

    public final void d(ByteString value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.e(value);
    }

    public final void e(TimestampsOuterClass.Timestamps value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.f(value);
    }

    public final void f(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.g(value);
    }

    public final void g(TimestampsOuterClass.Timestamps value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.h(value);
    }
}
