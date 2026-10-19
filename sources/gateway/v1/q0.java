package gateway.v1;

import gateway.v1.TestDataOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TestDataKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0007\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0012\u001a\u00020\u0013H\u0001J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0015J\u0006\u0010\u0017\u001a\u00020\u0015J\u0006\u0010\u0018\u001a\u00020\u0019J\u0006\u0010\u001a\u001a\u00020\u0019J\u0006\u0010\u001b\u001a\u00020\u0019R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR$\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000b¨\u0006\u001d"}, d2 = {"Lgateway/v1/TestDataKt$Dsl;", "", "_builder", "Lgateway/v1/TestDataOuterClass$TestData$Builder;", "(Lgateway/v1/TestDataOuterClass$TestData$Builder;)V", "value", "", "forceCampaignId", "getForceCampaignId", "()Ljava/lang/String;", "setForceCampaignId", "(Ljava/lang/String;)V", "forceCountry", "getForceCountry", "setForceCountry", "forceCountrySubdivision", "getForceCountrySubdivision", "setForceCountrySubdivision", "_build", "Lgateway/v1/TestDataOuterClass$TestData;", "clearForceCampaignId", "", "clearForceCountry", "clearForceCountrySubdivision", "hasForceCampaignId", "", "hasForceCountry", "hasForceCountrySubdivision", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class q0 {
    public static final a a = new a(null);
    private final TestDataOuterClass.TestData.a b;

    /* JADX INFO: compiled from: TestDataKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/TestDataKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/TestDataKt$Dsl;", "builder", "Lgateway/v1/TestDataOuterClass$TestData$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ q0 a(TestDataOuterClass.TestData.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new q0(builder, null);
        }
    }

    private q0(TestDataOuterClass.TestData.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ q0(TestDataOuterClass.TestData.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ TestDataOuterClass.TestData a() {
        TestDataOuterClass.TestData testDataBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(testDataBuild, "_builder.build()");
        return testDataBuild;
    }
}
