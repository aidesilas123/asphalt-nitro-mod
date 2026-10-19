package gateway.v1;

import gateway.v1.DiagnosticEventRequestOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DiagnosticTagKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u001c\n\u0002\b\f\b\u0007\u0018\u0000 82\u00020\u0001:\u000289B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u001f\u001a\u00020 H\u0001J\u0006\u0010!\u001a\u00020\"J\u0006\u0010#\u001a\u00020\"J\u0006\u0010$\u001a\u00020\"J\u0006\u0010%\u001a\u00020\"J\u0006\u0010&\u001a\u00020'J\u0006\u0010(\u001a\u00020'J\u0006\u0010)\u001a\u00020'J%\u0010*\u001a\u00020\"*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00162\u0006\u0010\u0005\u001a\u00020\u0017H\u0007¢\u0006\u0002\b+J+\u0010,\u001a\u00020\"*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00162\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00170.H\u0007¢\u0006\u0002\b/J\u001d\u00100\u001a\u00020\"*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u0016H\u0007¢\u0006\u0002\b1J&\u00102\u001a\u00020\"*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00162\u0006\u0010\u0005\u001a\u00020\u0017H\u0087\n¢\u0006\u0002\b3J,\u00102\u001a\u00020\"*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00162\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00170.H\u0087\n¢\u0006\u0002\b4J.\u00105\u001a\u00020\"*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00162\u0006\u00106\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0017H\u0087\u0002¢\u0006\u0002\b7R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\t\"\u0004\b\u0014\u0010\u000bR\u001d\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00168F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u001c8G¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e¨\u0006:"}, d2 = {"Lgateway/v1/DiagnosticTagKt$Dsl;", "", "_builder", "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;", "(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;)V", "value", "", "customTagType", "getCustomTagType", "()Ljava/lang/String;", "setCustomTagType", "(Ljava/lang/String;)V", "", "intValue", "getIntValue", "()I", "setIntValue", "(I)V", "stringValue", "getStringValue", "setStringValue", "tagType", "Lcom/google/protobuf/kotlin/DslList;", "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;", "Lgateway/v1/DiagnosticTagKt$Dsl$TagTypeProxy;", "getTagType", "()Lcom/google/protobuf/kotlin/DslList;", "valueCase", "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;", "getValueCase", "()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;", "_build", "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag;", "clearCustomTagType", "", "clearIntValue", "clearStringValue", "clearValue", "hasCustomTagType", "", "hasIntValue", "hasStringValue", "add", "addTagType", "addAll", "values", "", "addAllTagType", "clear", "clearTagType", "plusAssign", "plusAssignTagType", "plusAssignAllTagType", "set", "index", "setTagType", "Companion", "TagTypeProxy", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class q {
    public static final a a = new a(null);
    private final DiagnosticEventRequestOuterClass.DiagnosticTag.b b;

    /* JADX INFO: compiled from: DiagnosticTagKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/DiagnosticTagKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/DiagnosticTagKt$Dsl;", "builder", "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ q a(DiagnosticEventRequestOuterClass.DiagnosticTag.b builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new q(builder, null);
        }
    }

    private q(DiagnosticEventRequestOuterClass.DiagnosticTag.b bVar) {
        this.b = bVar;
    }

    public /* synthetic */ q(DiagnosticEventRequestOuterClass.DiagnosticTag.b bVar, kotlin.jvm.internal.n nVar) {
        this(bVar);
    }

    public final /* synthetic */ DiagnosticEventRequestOuterClass.DiagnosticTag a() {
        DiagnosticEventRequestOuterClass.DiagnosticTag diagnosticTagBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(diagnosticTagBuild, "_builder.build()");
        return diagnosticTagBuild;
    }
}
