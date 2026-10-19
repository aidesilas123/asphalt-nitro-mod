package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaAnnotationOwner;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: compiled from: ReflectJavaTypeParameter.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class s extends j implements ReflectJavaAnnotationOwner, kotlin.reflect.jvm.internal.impl.load.java.structure.u {
    private final TypeVariable<?> a;

    public s(TypeVariable<?> typeVariable) {
        Intrinsics.checkParameterIsNotNull(typeVariable, "typeVariable");
        this.a = typeVariable;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.u
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public List<h> getUpperBounds() {
        Type[] bounds = this.a.getBounds();
        Intrinsics.checkExpressionValueIsNotNull(bounds, "typeVariable.bounds");
        ArrayList arrayList = new ArrayList(bounds.length);
        for (Type type : bounds) {
            arrayList.add(new h(type));
        }
        h hVar = (h) kotlin.collections.p.singleOrNull((List) arrayList);
        return Intrinsics.areEqual(hVar != null ? hVar.K() : null, Object.class) ? CollectionsKt__CollectionsKt.emptyList() : arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaAnnotationOwner
    public AnnotatedElement c() {
        TypeVariable<?> typeVariable = this.a;
        if (!(typeVariable instanceof AnnotatedElement)) {
            typeVariable = null;
        }
        return (AnnotatedElement) typeVariable;
    }

    public boolean equals(Object obj) {
        return (obj instanceof s) && Intrinsics.areEqual(this.a, ((s) obj).a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.q
    public Name getName() {
        Name nameIdentifier = Name.identifier(this.a.getName());
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier, "Name.identifier(typeVariable.name)");
        return nameIdentifier;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.c
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public b b(FqName fqName) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        return ReflectJavaAnnotationOwner.DefaultImpls.findAnnotation(this, fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.c
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public List<b> getAnnotations() {
        return ReflectJavaAnnotationOwner.DefaultImpls.getAnnotations(this);
    }

    public String toString() {
        return s.class.getName() + ": " + this.a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.c
    public boolean x() {
        return ReflectJavaAnnotationOwner.DefaultImpls.isDeprecatedInJavaDoc(this);
    }
}
