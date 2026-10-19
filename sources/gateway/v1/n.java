package gateway.v1;

import com.google.protobuf.kotlin.DslMap;
import gateway.v1.DiagnosticEventRequestOuterClass;
import gateway.v1.TimestampsOuterClass;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DiagnosticEventKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010$\n\u0002\b\f\b\u0007\u0018\u0000 J2\u00020\u0001:\u0003JKLB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010,\u001a\u00020-H\u0001J\u0006\u0010.\u001a\u00020/J\u0006\u00100\u001a\u00020/J\u0006\u00101\u001a\u00020/J\u0006\u00102\u001a\u00020/J\u0006\u00103\u001a\u00020/J\u0006\u00104\u001a\u000205J\u0006\u00106\u001a\u000205J\u0006\u00107\u001a\u000205J#\u00108\u001a\u00020/*\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u001a0\u0019H\u0007¢\u0006\u0002\b9J#\u00108\u001a\u00020/*\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u0019H\u0007¢\u0006\u0002\b:J3\u0010;\u001a\u00020/*\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010<\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\fH\u0007¢\u0006\u0002\b=J3\u0010;\u001a\u00020/*\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u00192\u0006\u0010<\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¢\u0006\u0002\b>J7\u0010?\u001a\u00020/*\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u001a0\u00192\u0012\u0010@\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\f0AH\u0007¢\u0006\u0002\bBJ7\u0010?\u001a\u00020/*\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u00192\u0012\u0010@\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060AH\u0007¢\u0006\u0002\bCJ+\u0010D\u001a\u00020/*\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010<\u001a\u00020\u0006H\u0007¢\u0006\u0002\bEJ+\u0010D\u001a\u00020/*\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u00192\u0006\u0010<\u001a\u00020\u0006H\u0007¢\u0006\u0002\bFJ4\u0010G\u001a\u00020/*\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010<\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\fH\u0087\n¢\u0006\u0002\bHJ4\u0010G\u001a\u00020/*\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u00192\u0006\u0010<\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\n¢\u0006\u0002\bIR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R#\u0010\u0018\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u001a0\u00198G¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR#\u0010\u001d\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u00198G¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u001cR$\u0010!\u001a\u00020 2\u0006\u0010\u0005\u001a\u00020 8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R$\u0010'\u001a\u00020&2\u0006\u0010\u0005\u001a\u00020&8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+¨\u0006M"}, d2 = {"Lgateway/v1/DiagnosticEventKt$Dsl;", "", "_builder", "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;", "(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;)V", "value", "", "customEventType", "getCustomEventType", "()Ljava/lang/String;", "setCustomEventType", "(Ljava/lang/String;)V", "", "eventId", "getEventId", "()I", "setEventId", "(I)V", "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;", "eventType", "getEventType", "()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;", "setEventType", "(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;)V", "intTags", "Lcom/google/protobuf/kotlin/DslMap;", "Lgateway/v1/DiagnosticEventKt$Dsl$IntTagsProxy;", "getIntTagsMap", "()Lcom/google/protobuf/kotlin/DslMap;", "stringTags", "Lgateway/v1/DiagnosticEventKt$Dsl$StringTagsProxy;", "getStringTagsMap", "", "timeValue", "getTimeValue", "()D", "setTimeValue", "(D)V", "Lgateway/v1/TimestampsOuterClass$Timestamps;", "timestamps", "getTimestamps", "()Lgateway/v1/TimestampsOuterClass$Timestamps;", "setTimestamps", "(Lgateway/v1/TimestampsOuterClass$Timestamps;)V", "_build", "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;", "clearCustomEventType", "", "clearEventId", "clearEventType", "clearTimeValue", "clearTimestamps", "hasCustomEventType", "", "hasTimeValue", "hasTimestamps", "clear", "clearIntTags", "clearStringTags", "put", "key", "putIntTags", "putStringTags", "putAll", "map", "", "putAllIntTags", "putAllStringTags", "remove", "removeIntTags", "removeStringTags", "set", "setIntTags", "setStringTags", "Companion", "IntTagsProxy", "StringTagsProxy", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class n {
    public static final a a = new a(null);
    private final DiagnosticEventRequestOuterClass.DiagnosticEvent.a b;

    /* JADX INFO: compiled from: DiagnosticEventKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/DiagnosticEventKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/DiagnosticEventKt$Dsl;", "builder", "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ n a(DiagnosticEventRequestOuterClass.DiagnosticEvent.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new n(builder, null);
        }
    }

    private n(DiagnosticEventRequestOuterClass.DiagnosticEvent.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ n(DiagnosticEventRequestOuterClass.DiagnosticEvent.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ DiagnosticEventRequestOuterClass.DiagnosticEvent a() {
        DiagnosticEventRequestOuterClass.DiagnosticEvent diagnosticEventBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(diagnosticEventBuild, "_builder.build()");
        return diagnosticEventBuild;
    }

    public final /* synthetic */ DslMap b() {
        Map<String, Integer> mapB = this.b.b();
        Intrinsics.checkNotNullExpressionValue(mapB, "_builder.getIntTagsMap()");
        return new DslMap(mapB);
    }

    public final /* synthetic */ DslMap c() {
        Map<String, String> mapD = this.b.d();
        Intrinsics.checkNotNullExpressionValue(mapD, "_builder.getStringTagsMap()");
        return new DslMap(mapD);
    }

    public final /* synthetic */ void d(DslMap dslMap, Map map) {
        Intrinsics.checkNotNullParameter(dslMap, "<this>");
        Intrinsics.checkNotNullParameter(map, "map");
        this.b.e(map);
    }

    public final /* synthetic */ void e(DslMap dslMap, Map map) {
        Intrinsics.checkNotNullParameter(dslMap, "<this>");
        Intrinsics.checkNotNullParameter(map, "map");
        this.b.f(map);
    }

    public final void f(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.g(value);
    }

    public final void g(DiagnosticEventRequestOuterClass.DiagnosticEventType value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.h(value);
    }

    public final void h(double d2) {
        this.b.i(d2);
    }

    public final void i(TimestampsOuterClass.Timestamps value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.j(value);
    }
}
