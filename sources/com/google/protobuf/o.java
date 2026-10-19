package com.google.protobuf;

import com.google.protobuf.Empty;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EmptyKt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/google/protobuf/EmptyKt$Dsl;", "", "_builder", "Lcom/google/protobuf/Empty$Builder;", "(Lcom/google/protobuf/Empty$Builder;)V", "_build", "Lcom/google/protobuf/Empty;", "Companion", "protobuf-kotlin-lite"}, mv = {1, 6, 0}, xi = 48)
public final class o {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Empty.b _builder;

    /* JADX INFO: renamed from: com.google.protobuf.o$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: EmptyKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lcom/google/protobuf/EmptyKt$Dsl$Companion;", "", "()V", "_create", "Lcom/google/protobuf/EmptyKt$Dsl;", "builder", "Lcom/google/protobuf/Empty$Builder;", "protobuf-kotlin-lite"}, mv = {1, 6, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ o _create(Empty.b builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new o(builder, null);
        }
    }

    private o(Empty.b bVar) {
        this._builder = bVar;
    }

    public /* synthetic */ o(Empty.b bVar, kotlin.jvm.internal.n nVar) {
        this(bVar);
    }

    public final /* synthetic */ Empty _build() {
        Empty emptyBuild = this._builder.build();
        Intrinsics.checkNotNullExpressionValue(emptyBuild, "_builder.build()");
        return emptyBuild;
    }
}
