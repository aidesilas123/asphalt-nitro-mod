package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.TypeIntersectionScope;

/* JADX INFO: compiled from: IntersectionTypeConstructor.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class t implements f0 {
    private final LinkedHashSet<u> a;
    private final int b;

    /* JADX INFO: compiled from: IntersectionTypeConstructor.kt */
    static final class a extends Lambda implements Function1<kotlin.reflect.jvm.internal.impl.types.checker.d, y> {
        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final y invoke(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
            Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
            return t.this.a(kotlinTypeRefiner).f();
        }
    }

    /* JADX INFO: compiled from: Comparisons.kt */
    public static final class b<T> implements Comparator<T> {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return ComparisonsKt__ComparisonsKt.compareValues(((u) t).toString(), ((u) t2).toString());
        }
    }

    public t(Collection<? extends u> typesToIntersect) {
        Intrinsics.checkParameterIsNotNull(typesToIntersect, "typesToIntersect");
        typesToIntersect.isEmpty();
        LinkedHashSet<u> linkedHashSet = new LinkedHashSet<>(typesToIntersect);
        this.a = linkedHashSet;
        this.b = linkedHashSet.hashCode();
    }

    private final String g(Iterable<? extends u> iterable) {
        return CollectionsKt___CollectionsKt.joinToString$default(CollectionsKt___CollectionsKt.sortedWith(iterable, new b()), " & ", "{", "}", 0, null, null, 56, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    /* JADX INFO: renamed from: c */
    public kotlin.reflect.jvm.internal.impl.descriptors.f q() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public boolean d() {
        return false;
    }

    public final MemberScope e() {
        return TypeIntersectionScope.b.a("member scope for intersection type " + this, this.a);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof t) {
            return Intrinsics.areEqual(this.a, ((t) obj).a);
        }
        return false;
    }

    public final y f() {
        return KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(Annotations.e0.b(), this, CollectionsKt__CollectionsKt.emptyList(), false, e(), new a());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public List<kotlin.reflect.jvm.internal.impl.descriptors.i0> getParameters() {
        return CollectionsKt__CollectionsKt.emptyList();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public Collection<u> h() {
        return this.a;
    }

    public int hashCode() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public t a(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        LinkedHashSet<u> linkedHashSet = this.a;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(linkedHashSet, 10));
        Iterator<T> it = linkedHashSet.iterator();
        while (it.hasNext()) {
            arrayList.add(((u) it.next()).R0(kotlinTypeRefiner));
        }
        return new t(arrayList);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public KotlinBuiltIns k() {
        KotlinBuiltIns kotlinBuiltInsK = this.a.iterator().next().H0().k();
        Intrinsics.checkExpressionValueIsNotNull(kotlinBuiltInsK, "intersectedTypes.iterato…xt().constructor.builtIns");
        return kotlinBuiltInsK;
    }

    public String toString() {
        return g(this.a);
    }
}
