package gateway.v1;

import com.google.protobuf.ByteString;
import com.json.qc;
import gateway.v1.PiiOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PiiKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0012\u001a\u00020\u0013H\u0001J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0015J\u0006\u0010\u0017\u001a\u00020\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR$\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000b¨\u0006\u0019"}, d2 = {"Lgateway/v1/PiiKt$Dsl;", "", "_builder", "Lgateway/v1/PiiOuterClass$Pii$Builder;", "(Lgateway/v1/PiiOuterClass$Pii$Builder;)V", "value", "Lcom/google/protobuf/ByteString;", qc.h1, "getAdvertisingId", "()Lcom/google/protobuf/ByteString;", "setAdvertisingId", "(Lcom/google/protobuf/ByteString;)V", "openAdvertisingTrackingId", "getOpenAdvertisingTrackingId", "setOpenAdvertisingTrackingId", "vendorId", "getVendorId", "setVendorId", "_build", "Lgateway/v1/PiiOuterClass$Pii;", "clearAdvertisingId", "", "clearOpenAdvertisingTrackingId", "clearVendorId", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class f0 {
    public static final a a = new a(null);
    private final PiiOuterClass.Pii.a b;

    /* JADX INFO: compiled from: PiiKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/PiiKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/PiiKt$Dsl;", "builder", "Lgateway/v1/PiiOuterClass$Pii$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ f0 a(PiiOuterClass.Pii.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new f0(builder, null);
        }
    }

    private f0(PiiOuterClass.Pii.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ f0(PiiOuterClass.Pii.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ PiiOuterClass.Pii a() {
        PiiOuterClass.Pii piiBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(piiBuild, "_builder.build()");
        return piiBuild;
    }

    public final void b(ByteString value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.b(value);
    }

    public final void c(ByteString value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.d(value);
    }
}
