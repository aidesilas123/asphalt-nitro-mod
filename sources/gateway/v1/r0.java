package gateway.v1;

import com.google.protobuf.Timestamp;
import gateway.v1.TimestampsOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TimestampsKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0007\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0012\u001a\u00020\u0013H\u0001J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0015J\u0006\u0010\u0017\u001a\u00020\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u001a"}, d2 = {"Lgateway/v1/TimestampsKt$Dsl;", "", "_builder", "Lgateway/v1/TimestampsOuterClass$Timestamps$Builder;", "(Lgateway/v1/TimestampsOuterClass$Timestamps$Builder;)V", "value", "", "sessionTimestamp", "getSessionTimestamp", "()J", "setSessionTimestamp", "(J)V", "Lcom/google/protobuf/Timestamp;", "timestamp", "getTimestamp", "()Lcom/google/protobuf/Timestamp;", "setTimestamp", "(Lcom/google/protobuf/Timestamp;)V", "_build", "Lgateway/v1/TimestampsOuterClass$Timestamps;", "clearSessionTimestamp", "", "clearTimestamp", "hasTimestamp", "", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class r0 {
    public static final a a = new a(null);
    private final TimestampsOuterClass.Timestamps.a b;

    /* JADX INFO: compiled from: TimestampsKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/TimestampsKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/TimestampsKt$Dsl;", "builder", "Lgateway/v1/TimestampsOuterClass$Timestamps$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ r0 a(TimestampsOuterClass.Timestamps.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new r0(builder, null);
        }
    }

    private r0(TimestampsOuterClass.Timestamps.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ r0(TimestampsOuterClass.Timestamps.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ TimestampsOuterClass.Timestamps a() {
        TimestampsOuterClass.Timestamps timestampsBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(timestampsBuild, "_builder.build()");
        return timestampsBuild;
    }

    public final void b(long j) {
        this.b.b(j);
    }

    public final void c(Timestamp value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.d(value);
    }
}
