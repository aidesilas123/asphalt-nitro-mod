package gateway.v1;

import gateway.v1.InitializationResponseOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PlacementKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\f\u001a\u00020\rH\u0001J\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0011"}, d2 = {"Lgateway/v1/PlacementKt$Dsl;", "", "_builder", "Lgateway/v1/InitializationResponseOuterClass$Placement$Builder;", "(Lgateway/v1/InitializationResponseOuterClass$Placement$Builder;)V", "value", "Lgateway/v1/InitializationResponseOuterClass$AdFormat;", "adFormat", "getAdFormat", "()Lgateway/v1/InitializationResponseOuterClass$AdFormat;", "setAdFormat", "(Lgateway/v1/InitializationResponseOuterClass$AdFormat;)V", "_build", "Lgateway/v1/InitializationResponseOuterClass$Placement;", "clearAdFormat", "", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class g0 {
    public static final a a = new a(null);
    private final InitializationResponseOuterClass.Placement.a b;

    /* JADX INFO: compiled from: PlacementKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/PlacementKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/PlacementKt$Dsl;", "builder", "Lgateway/v1/InitializationResponseOuterClass$Placement$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ g0 a(InitializationResponseOuterClass.Placement.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new g0(builder, null);
        }
    }

    private g0(InitializationResponseOuterClass.Placement.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ g0(InitializationResponseOuterClass.Placement.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ InitializationResponseOuterClass.Placement a() {
        InitializationResponseOuterClass.Placement placementBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(placementBuild, "_builder.build()");
        return placementBuild;
    }
}
