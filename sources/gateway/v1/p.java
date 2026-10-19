package gateway.v1;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.json.b4;
import gateway.v1.NativeConfigurationOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DiagnosticEventsConfigurationKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\u001c\n\u0002\b\u0012\b\u0007\u0018\u0000 E2\u00020\u0001:\u0003CDEB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010'\u001a\u00020(H\u0001J\u0006\u0010)\u001a\u00020*J\u0006\u0010+\u001a\u00020*J\u0006\u0010,\u001a\u00020*J\u0006\u0010-\u001a\u00020*J\u0006\u0010.\u001a\u00020*J%\u0010/\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\u0006\u0010\u000e\u001a\u00020\u0007H\u0007¢\u0006\u0002\b0J%\u0010/\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u00062\u0006\u0010\u000e\u001a\u00020\u0007H\u0007¢\u0006\u0002\b1J+\u00102\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\f\u00103\u001a\b\u0012\u0004\u0012\u00020\u000704H\u0007¢\u0006\u0002\b5J+\u00102\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u00062\f\u00103\u001a\b\u0012\u0004\u0012\u00020\u000704H\u0007¢\u0006\u0002\b6J\u001d\u00107\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006H\u0007¢\u0006\u0002\b8J\u001d\u00107\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u0006H\u0007¢\u0006\u0002\b9J&\u0010:\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\u0006\u0010\u000e\u001a\u00020\u0007H\u0087\n¢\u0006\u0002\b;J,\u0010:\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\f\u00103\u001a\b\u0012\u0004\u0012\u00020\u000704H\u0087\n¢\u0006\u0002\b<J&\u0010:\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u00062\u0006\u0010\u000e\u001a\u00020\u0007H\u0087\n¢\u0006\u0002\b=J,\u0010:\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u00062\f\u00103\u001a\b\u0012\u0004\u0012\u00020\u000704H\u0087\n¢\u0006\u0002\b>J.\u0010?\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\u0006\u0010@\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0002\bAJ.\u0010?\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u00062\u0006\u0010@\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0002\bBR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00068F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u001d\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u00068F¢\u0006\u0006\u001a\u0004\b\r\u0010\nR$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\u00158G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR$\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\u00158G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001d\u0010\u001aR$\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u000e\u001a\u00020\u001e8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R$\u0010$\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b%\u0010\u0012\"\u0004\b&\u0010\u0014¨\u0006F"}, d2 = {"Lgateway/v1/DiagnosticEventsConfigurationKt$Dsl;", "", "_builder", "Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$Builder;", "(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$Builder;)V", "allowedEvents", "Lcom/google/protobuf/kotlin/DslList;", "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;", "Lgateway/v1/DiagnosticEventsConfigurationKt$Dsl$AllowedEventsProxy;", "getAllowedEvents", "()Lcom/google/protobuf/kotlin/DslList;", "blockedEvents", "Lgateway/v1/DiagnosticEventsConfigurationKt$Dsl$BlockedEventsProxy;", "getBlockedEvents", "value", "", b4.r, "getEnabled", "()Z", "setEnabled", "(Z)V", "", "maxBatchIntervalMs", "getMaxBatchIntervalMs", "()I", "setMaxBatchIntervalMs", "(I)V", "maxBatchSize", "getMaxBatchSize", "setMaxBatchSize", "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;", SDKConstants.PARAM_DEBUG_MESSAGE_SEVERITY, "getSeverity", "()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;", "setSeverity", "(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;)V", "ttmEnabled", "getTtmEnabled", "setTtmEnabled", "_build", "Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;", "clearEnabled", "", "clearMaxBatchIntervalMs", "clearMaxBatchSize", "clearSeverity", "clearTtmEnabled", "add", "addAllowedEvents", "addBlockedEvents", "addAll", "values", "", "addAllAllowedEvents", "addAllBlockedEvents", "clear", "clearAllowedEvents", "clearBlockedEvents", "plusAssign", "plusAssignAllowedEvents", "plusAssignAllAllowedEvents", "plusAssignBlockedEvents", "plusAssignAllBlockedEvents", "set", "index", "setAllowedEvents", "setBlockedEvents", "AllowedEventsProxy", "BlockedEventsProxy", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class p {
    public static final a a = new a(null);
    private final NativeConfigurationOuterClass.DiagnosticEventsConfiguration.c b;

    /* JADX INFO: compiled from: DiagnosticEventsConfigurationKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/DiagnosticEventsConfigurationKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/DiagnosticEventsConfigurationKt$Dsl;", "builder", "Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ p a(NativeConfigurationOuterClass.DiagnosticEventsConfiguration.c builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new p(builder, null);
        }
    }

    private p(NativeConfigurationOuterClass.DiagnosticEventsConfiguration.c cVar) {
        this.b = cVar;
    }

    public /* synthetic */ p(NativeConfigurationOuterClass.DiagnosticEventsConfiguration.c cVar, kotlin.jvm.internal.n nVar) {
        this(cVar);
    }

    public final /* synthetic */ NativeConfigurationOuterClass.DiagnosticEventsConfiguration a() {
        NativeConfigurationOuterClass.DiagnosticEventsConfiguration diagnosticEventsConfigurationBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(diagnosticEventsConfigurationBuild, "_builder.build()");
        return diagnosticEventsConfigurationBuild;
    }

    public final void b(boolean z) {
        this.b.b(z);
    }

    public final void c(int i) {
        this.b.d(i);
    }

    public final void d(int i) {
        this.b.e(i);
    }

    public final void e(boolean z) {
        this.b.f(z);
    }
}
