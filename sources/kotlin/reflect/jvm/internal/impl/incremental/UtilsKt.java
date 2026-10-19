package kotlin.reflect.jvm.internal.impl.incremental;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.incremental.components.Position;
import kotlin.reflect.jvm.internal.impl.incremental.components.ScopeKind;
import kotlin.reflect.jvm.internal.impl.incremental.components.a;
import kotlin.reflect.jvm.internal.impl.incremental.components.b;
import kotlin.reflect.jvm.internal.impl.incremental.components.c;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;

/* JADX INFO: compiled from: utils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class UtilsKt {
    public static final void record(c record, b from, d scopeOwner, Name name) {
        a location;
        Intrinsics.checkParameterIsNotNull(record, "$this$record");
        Intrinsics.checkParameterIsNotNull(from, "from");
        Intrinsics.checkParameterIsNotNull(scopeOwner, "scopeOwner");
        Intrinsics.checkParameterIsNotNull(name, "name");
        if (record == c.a.a || (location = from.getLocation()) == null) {
            return;
        }
        Position position = record.a() ? location.getPosition() : Position.b.a();
        String strA = location.a();
        String strB = DescriptorUtils.getFqName(scopeOwner).b();
        Intrinsics.checkExpressionValueIsNotNull(strB, "DescriptorUtils.getFqName(scopeOwner).asString()");
        ScopeKind scopeKind = ScopeKind.CLASSIFIER;
        String strE = name.e();
        Intrinsics.checkExpressionValueIsNotNull(strE, "name.asString()");
        record.b(strA, position, strB, scopeKind, strE);
    }

    public static final void record(c record, b from, s scopeOwner, Name name) {
        Intrinsics.checkParameterIsNotNull(record, "$this$record");
        Intrinsics.checkParameterIsNotNull(from, "from");
        Intrinsics.checkParameterIsNotNull(scopeOwner, "scopeOwner");
        Intrinsics.checkParameterIsNotNull(name, "name");
        String strB = scopeOwner.e().b();
        Intrinsics.checkExpressionValueIsNotNull(strB, "scopeOwner.fqName.asString()");
        String strE = name.e();
        Intrinsics.checkExpressionValueIsNotNull(strE, "name.asString()");
        recordPackageLookup(record, from, strB, strE);
    }

    public static final void recordPackageLookup(c recordPackageLookup, b from, String packageFqName, String name) {
        a location;
        Intrinsics.checkParameterIsNotNull(recordPackageLookup, "$this$recordPackageLookup");
        Intrinsics.checkParameterIsNotNull(from, "from");
        Intrinsics.checkParameterIsNotNull(packageFqName, "packageFqName");
        Intrinsics.checkParameterIsNotNull(name, "name");
        if (recordPackageLookup == c.a.a || (location = from.getLocation()) == null) {
            return;
        }
        recordPackageLookup.b(location.a(), recordPackageLookup.a() ? location.getPosition() : Position.b.a(), packageFqName, ScopeKind.PACKAGE, name);
    }
}
