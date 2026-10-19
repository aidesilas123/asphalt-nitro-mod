package com.google.protobuf;

import com.google.protobuf.FieldMask;
import com.google.protobuf.kotlin.DslList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FieldMaskKt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u001c\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0004\b\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0002\u001e\u001fB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000b\u001a\u00020\fH\u0001J%\u0010\r\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\u0006\u0010\u000f\u001a\u00020\u0007H\u0007¢\u0006\u0002\b\u0010J+\u0010\u0011\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u0013H\u0007¢\u0006\u0002\b\u0014J\u001d\u0010\u0015\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006H\u0007¢\u0006\u0002\b\u0016J&\u0010\u0017\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\u0006\u0010\u000f\u001a\u00020\u0007H\u0087\n¢\u0006\u0002\b\u0018J,\u0010\u0017\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u0013H\u0087\n¢\u0006\u0002\b\u0019J.\u0010\u001a\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u000f\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0002\b\u001dR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00068F¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006 "}, d2 = {"Lcom/google/protobuf/FieldMaskKt$Dsl;", "", "_builder", "Lcom/google/protobuf/FieldMask$Builder;", "(Lcom/google/protobuf/FieldMask$Builder;)V", "paths", "Lcom/google/protobuf/kotlin/DslList;", "", "Lcom/google/protobuf/FieldMaskKt$Dsl$PathsProxy;", "getPaths", "()Lcom/google/protobuf/kotlin/DslList;", "_build", "Lcom/google/protobuf/FieldMask;", "add", "", "value", "addPaths", "addAll", "values", "", "addAllPaths", "clear", "clearPaths", "plusAssign", "plusAssignPaths", "plusAssignAllPaths", "set", "index", "", "setPaths", "Companion", "PathsProxy", "protobuf-kotlin-lite"}, mv = {1, 6, 0}, xi = 48)
public final class y {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final FieldMask.b _builder;

    /* JADX INFO: renamed from: com.google.protobuf.y$a, reason: from kotlin metadata */
    /* JADX INFO: compiled from: FieldMaskKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lcom/google/protobuf/FieldMaskKt$Dsl$Companion;", "", "()V", "_create", "Lcom/google/protobuf/FieldMaskKt$Dsl;", "builder", "Lcom/google/protobuf/FieldMask$Builder;", "protobuf-kotlin-lite"}, mv = {1, 6, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ y _create(FieldMask.b builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new y(builder, null);
        }
    }

    private y(FieldMask.b bVar) {
        this._builder = bVar;
    }

    public /* synthetic */ y(FieldMask.b bVar, kotlin.jvm.internal.n nVar) {
        this(bVar);
    }

    public final /* synthetic */ FieldMask _build() {
        FieldMask fieldMaskBuild = this._builder.build();
        Intrinsics.checkNotNullExpressionValue(fieldMaskBuild, "_builder.build()");
        return fieldMaskBuild;
    }

    public final /* synthetic */ void addAllPaths(DslList dslList, Iterable values) {
        Intrinsics.checkNotNullParameter(dslList, "<this>");
        Intrinsics.checkNotNullParameter(values, "values");
        this._builder.addAllPaths(values);
    }

    public final /* synthetic */ void addPaths(DslList dslList, String value) {
        Intrinsics.checkNotNullParameter(dslList, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        this._builder.addPaths(value);
    }

    public final /* synthetic */ void clearPaths(DslList dslList) {
        Intrinsics.checkNotNullParameter(dslList, "<this>");
        this._builder.clearPaths();
    }

    public final DslList<String, ?> getPaths() {
        List<String> pathsList = this._builder.getPathsList();
        Intrinsics.checkNotNullExpressionValue(pathsList, "_builder.getPathsList()");
        return new DslList<>(pathsList);
    }

    public final /* synthetic */ void plusAssignAllPaths(DslList<String, ?> dslList, Iterable<String> values) {
        Intrinsics.checkNotNullParameter(dslList, "<this>");
        Intrinsics.checkNotNullParameter(values, "values");
        addAllPaths(dslList, values);
    }

    public final /* synthetic */ void plusAssignPaths(DslList<String, ?> dslList, String value) {
        Intrinsics.checkNotNullParameter(dslList, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        addPaths(dslList, value);
    }

    public final /* synthetic */ void setPaths(DslList dslList, int i, String value) {
        Intrinsics.checkNotNullParameter(dslList, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        this._builder.setPaths(i, value);
    }
}
