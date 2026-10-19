package gateway.v1;

import com.google.protobuf.kotlin.DslList;
import gateway.v1.CampaignStateOuterClass;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CampaignStateKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u001c\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0006\b\u0007\u0018\u0000 '2\u00020\u0001:\u0003'()B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000e\u001a\u00020\u000fH\u0001J%\u0010\u0010\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\u0006\u0010\u0012\u001a\u00020\u0007H\u0007¢\u0006\u0002\b\u0013J%\u0010\u0010\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u00062\u0006\u0010\u0012\u001a\u00020\u0007H\u0007¢\u0006\u0002\b\u0014J+\u0010\u0015\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u0017H\u0007¢\u0006\u0002\b\u0018J+\u0010\u0015\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u00062\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u0017H\u0007¢\u0006\u0002\b\u0019J\u001d\u0010\u001a\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006H\u0007¢\u0006\u0002\b\u001bJ\u001d\u0010\u001a\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u0006H\u0007¢\u0006\u0002\b\u001cJ&\u0010\u001d\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\u0006\u0010\u0012\u001a\u00020\u0007H\u0087\n¢\u0006\u0002\b\u001eJ,\u0010\u001d\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u0017H\u0087\n¢\u0006\u0002\b\u001fJ&\u0010\u001d\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u00062\u0006\u0010\u0012\u001a\u00020\u0007H\u0087\n¢\u0006\u0002\b J,\u0010\u001d\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u00062\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u0017H\u0087\n¢\u0006\u0002\b!J.\u0010\"\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\u0006\u0010#\u001a\u00020$2\u0006\u0010\u0012\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0002\b%J.\u0010\"\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u00062\u0006\u0010#\u001a\u00020$2\u0006\u0010\u0012\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0002\b&R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00068F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u001d\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u00068F¢\u0006\u0006\u001a\u0004\b\r\u0010\n¨\u0006*"}, d2 = {"Lgateway/v1/CampaignStateKt$Dsl;", "", "_builder", "Lgateway/v1/CampaignStateOuterClass$CampaignState$Builder;", "(Lgateway/v1/CampaignStateOuterClass$CampaignState$Builder;)V", "loadedCampaigns", "Lcom/google/protobuf/kotlin/DslList;", "Lgateway/v1/CampaignStateOuterClass$Campaign;", "Lgateway/v1/CampaignStateKt$Dsl$LoadedCampaignsProxy;", "getLoadedCampaigns", "()Lcom/google/protobuf/kotlin/DslList;", "shownCampaigns", "Lgateway/v1/CampaignStateKt$Dsl$ShownCampaignsProxy;", "getShownCampaigns", "_build", "Lgateway/v1/CampaignStateOuterClass$CampaignState;", "add", "", "value", "addLoadedCampaigns", "addShownCampaigns", "addAll", "values", "", "addAllLoadedCampaigns", "addAllShownCampaigns", "clear", "clearLoadedCampaigns", "clearShownCampaigns", "plusAssign", "plusAssignLoadedCampaigns", "plusAssignAllLoadedCampaigns", "plusAssignShownCampaigns", "plusAssignAllShownCampaigns", "set", "index", "", "setLoadedCampaigns", "setShownCampaigns", "Companion", "LoadedCampaignsProxy", "ShownCampaignsProxy", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class j {
    public static final a a = new a(null);
    private final CampaignStateOuterClass.CampaignState.a b;

    /* JADX INFO: compiled from: CampaignStateKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/CampaignStateKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/CampaignStateKt$Dsl;", "builder", "Lgateway/v1/CampaignStateOuterClass$CampaignState$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ j a(CampaignStateOuterClass.CampaignState.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new j(builder, null);
        }
    }

    private j(CampaignStateOuterClass.CampaignState.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ j(CampaignStateOuterClass.CampaignState.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ CampaignStateOuterClass.CampaignState a() {
        CampaignStateOuterClass.CampaignState campaignStateBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(campaignStateBuild, "_builder.build()");
        return campaignStateBuild;
    }

    public final /* synthetic */ void b(DslList dslList, CampaignStateOuterClass.Campaign value) {
        Intrinsics.checkNotNullParameter(dslList, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.b(value);
    }

    public final /* synthetic */ void c(DslList dslList, CampaignStateOuterClass.Campaign value) {
        Intrinsics.checkNotNullParameter(dslList, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.d(value);
    }

    public final /* synthetic */ DslList d() {
        List<CampaignStateOuterClass.Campaign> listE = this.b.e();
        Intrinsics.checkNotNullExpressionValue(listE, "_builder.getLoadedCampaignsList()");
        return new DslList(listE);
    }

    public final /* synthetic */ DslList e() {
        List<CampaignStateOuterClass.Campaign> listF = this.b.f();
        Intrinsics.checkNotNullExpressionValue(listF, "_builder.getShownCampaignsList()");
        return new DslList(listF);
    }
}
