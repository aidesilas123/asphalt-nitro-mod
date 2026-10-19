package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.Field;
import java.lang.reflect.Type;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.r;

/* JADX INFO: compiled from: ReflectJavaField.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class l extends n implements kotlin.reflect.jvm.internal.impl.load.java.structure.m {
    private final Field a;

    public l(Field member) {
        Intrinsics.checkParameterIsNotNull(member, "member");
        this.a = member;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.m
    public boolean C() {
        return K().isEnumConstant();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.m
    public boolean H() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.n
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public Field K() {
        return this.a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.m
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public r getType() {
        r.a aVar = r.a;
        Type genericType = K().getGenericType();
        Intrinsics.checkExpressionValueIsNotNull(genericType, "member.genericType");
        return aVar.a(genericType);
    }
}
