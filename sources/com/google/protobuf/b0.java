package com.google.protobuf;

import com.google.protobuf.Int32Value;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Int32ValueKt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000b\u001a\u00020\fH\u0001J\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u0010"}, d2 = {"Lcom/google/protobuf/Int32ValueKt$Dsl;", "", "_builder", "Lcom/google/protobuf/Int32Value$Builder;", "(Lcom/google/protobuf/Int32Value$Builder;)V", "value", "", "getValue", "()I", "setValue", "(I)V", "_build", "Lcom/google/protobuf/Int32Value;", "clearValue", "", "Companion", "protobuf-kotlin-lite"}, mv = {1, 6, 0}, xi = 48)
public final class b0 {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Int32Value.b _builder;

    /* JADX INFO: renamed from: com.google.protobuf.b0$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: Int32ValueKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lcom/google/protobuf/Int32ValueKt$Dsl$Companion;", "", "()V", "_create", "Lcom/google/protobuf/Int32ValueKt$Dsl;", "builder", "Lcom/google/protobuf/Int32Value$Builder;", "protobuf-kotlin-lite"}, mv = {1, 6, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ b0 _create(Int32Value.b builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new b0(builder, null);
        }
    }

    private b0(Int32Value.b bVar) {
        this._builder = bVar;
    }

    public /* synthetic */ b0(Int32Value.b bVar, kotlin.jvm.internal.n nVar) {
        this(bVar);
    }

    public final /* synthetic */ Int32Value _build() {
        Int32Value int32ValueBuild = this._builder.build();
        Intrinsics.checkNotNullExpressionValue(int32ValueBuild, "_builder.build()");
        return int32ValueBuild;
    }

    public final void clearValue() {
        this._builder.clearValue();
    }

    public final int getValue() {
        return this._builder.getValue();
    }

    public final void setValue(int i) {
        this._builder.setValue(i);
    }
}
