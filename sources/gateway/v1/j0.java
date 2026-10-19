package gateway.v1;

import gateway.v1.NativeConfigurationOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RequestPolicyKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0012\u001a\u00020\u0013H\u0001J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0015J\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010\u0019\u001a\u00020\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u001b"}, d2 = {"Lgateway/v1/RequestPolicyKt$Dsl;", "", "_builder", "Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;", "(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;)V", "value", "Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;", "retryPolicy", "getRetryPolicy", "()Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;", "setRetryPolicy", "(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V", "Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;", "timeoutPolicy", "getTimeoutPolicy", "()Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;", "setTimeoutPolicy", "(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)V", "_build", "Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;", "clearRetryPolicy", "", "clearTimeoutPolicy", "hasRetryPolicy", "", "hasTimeoutPolicy", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class j0 {
    public static final a a = new a(null);
    private final NativeConfigurationOuterClass.RequestPolicy.a b;

    /* JADX INFO: compiled from: RequestPolicyKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/RequestPolicyKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/RequestPolicyKt$Dsl;", "builder", "Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ j0 a(NativeConfigurationOuterClass.RequestPolicy.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new j0(builder, null);
        }
    }

    private j0(NativeConfigurationOuterClass.RequestPolicy.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ j0(NativeConfigurationOuterClass.RequestPolicy.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ NativeConfigurationOuterClass.RequestPolicy a() {
        NativeConfigurationOuterClass.RequestPolicy requestPolicyBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(requestPolicyBuild, "_builder.build()");
        return requestPolicyBuild;
    }

    public final void b(NativeConfigurationOuterClass.RequestRetryPolicy value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.b(value);
    }

    public final void c(NativeConfigurationOuterClass.RequestTimeoutPolicy value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.d(value);
    }
}
