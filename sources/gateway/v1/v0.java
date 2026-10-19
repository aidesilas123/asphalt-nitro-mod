package gateway.v1;

import gateway.v1.ErrorOuterClass;
import gateway.v1.UniversalResponseOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UniversalResponseKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0007\u0018\u0000 (2\u00020\u0001:\u0001(B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u001e\u001a\u00020\u001fH\u0001J\u0006\u0010 \u001a\u00020!J\u0006\u0010\"\u001a\u00020!J\u0006\u0010#\u001a\u00020!J\u0006\u0010$\u001a\u00020%J\u0006\u0010&\u001a\u00020%J\u0006\u0010'\u001a\u00020%R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0017\u0010\u0018\u001a\u0004\u0018\u00010\u0006*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\u001b\u001a\u0004\u0018\u00010\f*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001d¨\u0006)"}, d2 = {"Lgateway/v1/UniversalResponseKt$Dsl;", "", "_builder", "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Builder;", "(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Builder;)V", "value", "Lgateway/v1/ErrorOuterClass$Error;", "error", "getError", "()Lgateway/v1/ErrorOuterClass$Error;", "setError", "(Lgateway/v1/ErrorOuterClass$Error;)V", "Lgateway/v1/MutableDataOuterClass$MutableData;", "mutableData", "getMutableData", "()Lgateway/v1/MutableDataOuterClass$MutableData;", "setMutableData", "(Lgateway/v1/MutableDataOuterClass$MutableData;)V", "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;", "payload", "getPayload", "()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;", "setPayload", "(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V", "errorOrNull", "getErrorOrNull", "(Lgateway/v1/UniversalResponseKt$Dsl;)Lgateway/v1/ErrorOuterClass$Error;", "mutableDataOrNull", "getMutableDataOrNull", "(Lgateway/v1/UniversalResponseKt$Dsl;)Lgateway/v1/MutableDataOuterClass$MutableData;", "_build", "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;", "clearError", "", "clearMutableData", "clearPayload", "hasError", "", "hasMutableData", "hasPayload", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class v0 {
    public static final a a = new a(null);
    private final UniversalResponseOuterClass.UniversalResponse.a b;

    /* JADX INFO: compiled from: UniversalResponseKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/UniversalResponseKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/UniversalResponseKt$Dsl;", "builder", "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ v0 a(UniversalResponseOuterClass.UniversalResponse.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new v0(builder, null);
        }
    }

    private v0(UniversalResponseOuterClass.UniversalResponse.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ v0(UniversalResponseOuterClass.UniversalResponse.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ UniversalResponseOuterClass.UniversalResponse a() {
        UniversalResponseOuterClass.UniversalResponse universalResponseBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(universalResponseBuild, "_builder.build()");
        return universalResponseBuild;
    }

    public final void b(ErrorOuterClass.Error value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.b(value);
    }
}
