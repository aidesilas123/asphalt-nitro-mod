package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.structure.w;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: compiled from: ReflectJavaValueParameter.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class t extends j implements w {
    private final r a;
    private final Annotation[] b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f9165d;

    public t(r type, Annotation[] reflectAnnotations, String str, boolean z) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        Intrinsics.checkParameterIsNotNull(reflectAnnotations, "reflectAnnotations");
        this.a = type;
        this.b = reflectAnnotations;
        this.c = str;
        this.f9165d = z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.w
    public boolean A() {
        return this.f9165d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.w
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public r getType() {
        return this.a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.w
    public Name getName() {
        String str = this.c;
        if (str != null) {
            return Name.guessByFirstCharacter(str);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.c
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public b b(FqName fqName) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        return ReflectJavaAnnotationOwnerKt.findAnnotation(this.b, fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.c
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public List<b> getAnnotations() {
        return ReflectJavaAnnotationOwnerKt.getAnnotations(this.b);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(t.class.getName());
        sb.append(": ");
        sb.append(A() ? "vararg " : "");
        sb.append(getName());
        sb.append(": ");
        sb.append(getType());
        return sb.toString();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.c
    public boolean x() {
        return false;
    }
}
