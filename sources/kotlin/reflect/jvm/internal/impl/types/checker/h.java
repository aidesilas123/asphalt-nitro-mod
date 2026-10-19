package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.m0;

/* JADX INFO: compiled from: NewKotlinTypeChecker.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class h {
    public static final h a = new h();

    private h() {
    }

    public final boolean a(m0 type) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        return kotlin.reflect.jvm.internal.impl.types.c.a.a(j.a.d0(false, true), FlexibleTypesKt.lowerIfFlexible(type), AbstractTypeCheckerContext.a.b.a);
    }
}
