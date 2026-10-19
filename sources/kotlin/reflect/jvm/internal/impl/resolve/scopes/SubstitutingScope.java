package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.f0;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructorKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.j0;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;

/* JADX INFO: compiled from: SubstitutingScope.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class SubstitutingScope implements MemberScope {
    private final TypeSubstitutor b;
    private Map<i, i> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f9769d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final MemberScope f9770e;

    /* JADX INFO: compiled from: SubstitutingScope.kt */
    static final class a extends Lambda implements Function0<Collection<? extends i>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Collection<i> invoke() {
            SubstitutingScope substitutingScope = SubstitutingScope.this;
            return substitutingScope.h(ResolutionScope.DefaultImpls.getContributedDescriptors$default(substitutingScope.f9770e, null, null, 3, null));
        }
    }

    public SubstitutingScope(MemberScope workerScope, TypeSubstitutor givenSubstitutor) {
        Intrinsics.checkParameterIsNotNull(workerScope, "workerScope");
        Intrinsics.checkParameterIsNotNull(givenSubstitutor, "givenSubstitutor");
        this.f9770e = workerScope;
        j0 j0VarE = givenSubstitutor.e();
        Intrinsics.checkExpressionValueIsNotNull(j0VarE, "givenSubstitutor.substitution");
        this.b = CapturedTypeConstructorKt.wrapWithCapturingSubstitution$default(j0VarE, false, 1, null).c();
        this.f9769d = LazyKt__LazyJVMKt.lazy(new a());
    }

    private final Collection<i> g() {
        return (Collection) this.f9769d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final <D extends i> Collection<D> h(Collection<? extends D> collection) {
        if (this.b.f() || collection.isEmpty()) {
            return collection;
        }
        LinkedHashSet linkedHashSetNewLinkedHashSetWithExpectedSize = CollectionsKt.newLinkedHashSetWithExpectedSize(collection.size());
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            linkedHashSetNewLinkedHashSetWithExpectedSize.add(i((i) it.next()));
        }
        return linkedHashSetNewLinkedHashSetWithExpectedSize;
    }

    private final <D extends i> D i(D d2) {
        if (this.b.f()) {
            return d2;
        }
        if (this.c == null) {
            this.c = new HashMap();
        }
        Map<i, i> map = this.c;
        if (map == null) {
            Intrinsics.throwNpe();
        }
        i iVarC = map.get(d2);
        if (iVarC == null) {
            if (!(d2 instanceof f0)) {
                throw new IllegalStateException(("Unknown descriptor in scope: " + d2).toString());
            }
            iVarC = ((f0) d2).c(this.b);
            if (iVarC == null) {
                throw new AssertionError("We expect that no conflict should happen while substitution is guaranteed to generate invariant projection, but " + d2 + " substitution fails");
            }
            map.put(d2, iVarC);
        }
        return (D) iVarC;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public Collection<? extends c0> a(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        return h(this.f9770e.a(name, location));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<Name> b() {
        return this.f9770e.b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public kotlin.reflect.jvm.internal.impl.descriptors.f c(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = this.f9770e.c(name, location);
        if (fVarC != null) {
            return (kotlin.reflect.jvm.internal.impl.descriptors.f) i(fVarC);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public Collection<i> d(DescriptorKindFilter kindFilter, Function1<? super Name, Boolean> nameFilter) {
        Intrinsics.checkParameterIsNotNull(kindFilter, "kindFilter");
        Intrinsics.checkParameterIsNotNull(nameFilter, "nameFilter");
        return g();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<? extends y> e(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        return h(this.f9770e.e(name, location));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<Name> f() {
        return this.f9770e.f();
    }
}
