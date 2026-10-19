package gateway.v1;

import gateway.v1.NativeConfigurationOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RequestTimeoutPolicyKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0015\u001a\u00020\u0016H\u0001J\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010\u0019\u001a\u00020\u0018J\u0006\u0010\u001a\u001a\u00020\u0018J\u0006\u0010\u001b\u001a\u00020\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR$\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000bR$\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\t\"\u0004\b\u0014\u0010\u000b¨\u0006\u001d"}, d2 = {"Lgateway/v1/RequestTimeoutPolicyKt$Dsl;", "", "_builder", "Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$Builder;", "(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$Builder;)V", "value", "", "connectTimeoutMs", "getConnectTimeoutMs", "()I", "setConnectTimeoutMs", "(I)V", "overallTimeoutMs", "getOverallTimeoutMs", "setOverallTimeoutMs", "readTimeoutMs", "getReadTimeoutMs", "setReadTimeoutMs", "writeTimeoutMs", "getWriteTimeoutMs", "setWriteTimeoutMs", "_build", "Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;", "clearConnectTimeoutMs", "", "clearOverallTimeoutMs", "clearReadTimeoutMs", "clearWriteTimeoutMs", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class l0 {
    public static final a a = new a(null);
    private final NativeConfigurationOuterClass.RequestTimeoutPolicy.a b;

    /* JADX INFO: compiled from: RequestTimeoutPolicyKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/RequestTimeoutPolicyKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/RequestTimeoutPolicyKt$Dsl;", "builder", "Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ l0 a(NativeConfigurationOuterClass.RequestTimeoutPolicy.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new l0(builder, null);
        }
    }

    private l0(NativeConfigurationOuterClass.RequestTimeoutPolicy.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ l0(NativeConfigurationOuterClass.RequestTimeoutPolicy.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ NativeConfigurationOuterClass.RequestTimeoutPolicy a() {
        NativeConfigurationOuterClass.RequestTimeoutPolicy requestTimeoutPolicyBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(requestTimeoutPolicyBuild, "_builder.build()");
        return requestTimeoutPolicyBuild;
    }

    public final void b(int i) {
        this.b.b(i);
    }

    public final void c(int i) {
        this.b.d(i);
    }

    public final void d(int i) {
        this.b.e(i);
    }
}
