package gateway.v1;

import gateway.v1.InitializationResponseOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InitializationResponseKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000e\n\u0002\u0010$\n\u0002\b\b\b\u0007\u0018\u0000 E2\u00020\u0001:\u0002EFB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010-\u001a\u00020.H\u0001J\u0006\u0010/\u001a\u000200J\u0006\u00101\u001a\u000200J\u0006\u00102\u001a\u000200J\u0006\u00103\u001a\u000200J\u0006\u00104\u001a\u000200J\u0006\u00105\u001a\u00020\u001fJ\u0006\u00106\u001a\u00020\u001fJ\u0006\u00107\u001a\u00020\u001fJ#\u00108\u001a\u000200*\u0014\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u0019H\u0007¢\u0006\u0002\b9J3\u0010:\u001a\u000200*\u0014\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u00192\u0006\u0010;\u001a\u00020\u001a2\u0006\u0010\u0005\u001a\u00020\u001bH\u0007¢\u0006\u0002\b<J7\u0010=\u001a\u000200*\u0014\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u00192\u0012\u0010>\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0?H\u0007¢\u0006\u0002\b@J+\u0010A\u001a\u000200*\u0014\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u00192\u0006\u0010;\u001a\u00020\u001aH\u0007¢\u0006\u0002\bBJ4\u0010C\u001a\u000200*\u0014\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u00192\u0006\u0010;\u001a\u00020\u001a2\u0006\u0010\u0005\u001a\u00020\u001bH\u0087\n¢\u0006\u0002\bDR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R#\u0010\u0018\u001a\u0014\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u00198G¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR$\u0010 \u001a\u00020\u001f2\u0006\u0010\u0005\u001a\u00020\u001f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R$\u0010%\u001a\u00020\u001a2\u0006\u0010\u0005\u001a\u00020\u001a8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u0017\u0010*\u001a\u0004\u0018\u00010\f*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b+\u0010,¨\u0006G"}, d2 = {"Lgateway/v1/InitializationResponseKt$Dsl;", "", "_builder", "Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$Builder;", "(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$Builder;)V", "value", "", "countOfLastShownCampaigns", "getCountOfLastShownCampaigns", "()I", "setCountOfLastShownCampaigns", "(I)V", "Lgateway/v1/ErrorOuterClass$Error;", "error", "getError", "()Lgateway/v1/ErrorOuterClass$Error;", "setError", "(Lgateway/v1/ErrorOuterClass$Error;)V", "Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;", "nativeConfiguration", "getNativeConfiguration", "()Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;", "setNativeConfiguration", "(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)V", "scarPlacements", "Lcom/google/protobuf/kotlin/DslMap;", "", "Lgateway/v1/InitializationResponseOuterClass$Placement;", "Lgateway/v1/InitializationResponseKt$Dsl$ScarPlacementsProxy;", "getScarPlacementsMap", "()Lcom/google/protobuf/kotlin/DslMap;", "", "triggerInitializationCompletedRequest", "getTriggerInitializationCompletedRequest", "()Z", "setTriggerInitializationCompletedRequest", "(Z)V", "universalRequestUrl", "getUniversalRequestUrl", "()Ljava/lang/String;", "setUniversalRequestUrl", "(Ljava/lang/String;)V", "errorOrNull", "getErrorOrNull", "(Lgateway/v1/InitializationResponseKt$Dsl;)Lgateway/v1/ErrorOuterClass$Error;", "_build", "Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;", "clearCountOfLastShownCampaigns", "", "clearError", "clearNativeConfiguration", "clearTriggerInitializationCompletedRequest", "clearUniversalRequestUrl", "hasError", "hasNativeConfiguration", "hasUniversalRequestUrl", "clear", "clearScarPlacements", "put", "key", "putScarPlacements", "putAll", "map", "", "putAllScarPlacements", "remove", "removeScarPlacements", "set", "setScarPlacements", "Companion", "ScarPlacementsProxy", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class a0 {
    public static final a a = new a(null);
    private final InitializationResponseOuterClass.InitializationResponse.a b;

    /* JADX INFO: compiled from: InitializationResponseKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/InitializationResponseKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/InitializationResponseKt$Dsl;", "builder", "Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ a0 a(InitializationResponseOuterClass.InitializationResponse.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new a0(builder, null);
        }
    }

    private a0(InitializationResponseOuterClass.InitializationResponse.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ a0(InitializationResponseOuterClass.InitializationResponse.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ InitializationResponseOuterClass.InitializationResponse a() {
        InitializationResponseOuterClass.InitializationResponse initializationResponseBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(initializationResponseBuild, "_builder.build()");
        return initializationResponseBuild;
    }
}
