package com.google.protobuf;

import com.google.protobuf.StringValue;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StringValueKt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000b\u001a\u00020\fH\u0001J\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u0010"}, d2 = {"Lcom/google/protobuf/StringValueKt$Dsl;", "", "_builder", "Lcom/google/protobuf/StringValue$Builder;", "(Lcom/google/protobuf/StringValue$Builder;)V", "value", "", "getValue", "()Ljava/lang/String;", "setValue", "(Ljava/lang/String;)V", "_build", "Lcom/google/protobuf/StringValue;", "clearValue", "", "Companion", "protobuf-kotlin-lite"}, mv = {1, 6, 0}, xi = 48)
public final class p1 {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final StringValue.b _builder;

    /* JADX INFO: renamed from: com.google.protobuf.p1$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: StringValueKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lcom/google/protobuf/StringValueKt$Dsl$Companion;", "", "()V", "_create", "Lcom/google/protobuf/StringValueKt$Dsl;", "builder", "Lcom/google/protobuf/StringValue$Builder;", "protobuf-kotlin-lite"}, mv = {1, 6, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ p1 _create(StringValue.b builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new p1(builder, null);
        }
    }

    private p1(StringValue.b bVar) {
        this._builder = bVar;
    }

    public /* synthetic */ p1(StringValue.b bVar, kotlin.jvm.internal.n nVar) {
        this(bVar);
    }

    public final /* synthetic */ StringValue _build() {
        StringValue stringValueBuild = this._builder.build();
        Intrinsics.checkNotNullExpressionValue(stringValueBuild, "_builder.build()");
        return stringValueBuild;
    }

    public final void clearValue() {
        this._builder.clearValue();
    }

    public final String getValue() {
        String value = this._builder.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "_builder.getValue()");
        return value;
    }

    public final void setValue(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this._builder.setValue(value);
    }
}
