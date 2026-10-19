package gateway.v1;

import gateway.v1.NativeConfigurationOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FeatureFlagsKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000f\u001a\u00020\u0010H\u0001J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000b¨\u0006\u0015"}, d2 = {"Lgateway/v1/FeatureFlagsKt$Dsl;", "", "_builder", "Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags$Builder;", "(Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags$Builder;)V", "value", "", "openglGpuEnabled", "getOpenglGpuEnabled", "()Z", "setOpenglGpuEnabled", "(Z)V", "opportunityIdPlacementValidation", "getOpportunityIdPlacementValidation", "setOpportunityIdPlacementValidation", "_build", "Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;", "clearOpenglGpuEnabled", "", "clearOpportunityIdPlacementValidation", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class v {
    public static final a a = new a(null);
    private final NativeConfigurationOuterClass.FeatureFlags.a b;

    /* JADX INFO: compiled from: FeatureFlagsKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/FeatureFlagsKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/FeatureFlagsKt$Dsl;", "builder", "Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ v a(NativeConfigurationOuterClass.FeatureFlags.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new v(builder, null);
        }
    }

    private v(NativeConfigurationOuterClass.FeatureFlags.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ v(NativeConfigurationOuterClass.FeatureFlags.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ NativeConfigurationOuterClass.FeatureFlags a() {
        NativeConfigurationOuterClass.FeatureFlags featureFlagsBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(featureFlagsBuild, "_builder.build()");
        return featureFlagsBuild;
    }
}
