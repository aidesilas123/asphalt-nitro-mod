package gateway.v1;

import gateway.v1.NativeConfigurationOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NativeConfigurationKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\b\b\u0007\u0018\u0000 92\u00020\u0001:\u00019B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010'\u001a\u00020(H\u0001J\u0006\u0010)\u001a\u00020*J\u0006\u0010+\u001a\u00020*J\u0006\u0010,\u001a\u00020*J\u0006\u0010-\u001a\u00020*J\u0006\u0010.\u001a\u00020*J\u0006\u0010/\u001a\u00020*J\u0006\u00100\u001a\u00020*J\u0006\u00101\u001a\u000202J\u0006\u00103\u001a\u000202J\u0006\u00104\u001a\u000202J\u0006\u00105\u001a\u000202J\u0006\u00106\u001a\u000202J\u0006\u00107\u001a\u000202J\u0006\u00108\u001a\u000202R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR$\u0010\u001e\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001f\u0010\u000f\"\u0004\b \u0010\u0011R$\u0010!\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\"\u0010\u000f\"\u0004\b#\u0010\u0011R$\u0010$\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b%\u0010\u000f\"\u0004\b&\u0010\u0011¨\u0006:"}, d2 = {"Lgateway/v1/NativeConfigurationKt$Dsl;", "", "_builder", "Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;", "(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;)V", "value", "Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;", "adOperations", "getAdOperations", "()Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;", "setAdOperations", "(Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V", "Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;", "adPolicy", "getAdPolicy", "()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;", "setAdPolicy", "(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V", "Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;", "diagnosticEvents", "getDiagnosticEvents", "()Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;", "setDiagnosticEvents", "(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V", "Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;", "featureFlags", "getFeatureFlags", "()Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;", "setFeatureFlags", "(Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;)V", "initPolicy", "getInitPolicy", "setInitPolicy", "operativeEventPolicy", "getOperativeEventPolicy", "setOperativeEventPolicy", "otherPolicy", "getOtherPolicy", "setOtherPolicy", "_build", "Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;", "clearAdOperations", "", "clearAdPolicy", "clearDiagnosticEvents", "clearFeatureFlags", "clearInitPolicy", "clearOperativeEventPolicy", "clearOtherPolicy", "hasAdOperations", "", "hasAdPolicy", "hasDiagnosticEvents", "hasFeatureFlags", "hasInitPolicy", "hasOperativeEventPolicy", "hasOtherPolicy", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class c0 {
    public static final a a = new a(null);
    private final NativeConfigurationOuterClass.NativeConfiguration.a b;

    /* JADX INFO: compiled from: NativeConfigurationKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/NativeConfigurationKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/NativeConfigurationKt$Dsl;", "builder", "Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ c0 a(NativeConfigurationOuterClass.NativeConfiguration.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new c0(builder, null);
        }
    }

    private c0(NativeConfigurationOuterClass.NativeConfiguration.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ c0(NativeConfigurationOuterClass.NativeConfiguration.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ NativeConfigurationOuterClass.NativeConfiguration a() {
        NativeConfigurationOuterClass.NativeConfiguration nativeConfigurationBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(nativeConfigurationBuild, "_builder.build()");
        return nativeConfigurationBuild;
    }

    public final void b(NativeConfigurationOuterClass.RequestPolicy value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.b(value);
    }

    public final void c(NativeConfigurationOuterClass.DiagnosticEventsConfiguration value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.d(value);
    }

    public final void d(NativeConfigurationOuterClass.RequestPolicy value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.e(value);
    }

    public final void e(NativeConfigurationOuterClass.RequestPolicy value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.f(value);
    }

    public final void f(NativeConfigurationOuterClass.RequestPolicy value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.g(value);
    }
}
