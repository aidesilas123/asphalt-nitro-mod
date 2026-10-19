package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefinerKt;

/* JADX INFO: compiled from: ModuleDescriptorImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ModuleDescriptorImpl extends DeclarationDescriptorImpl implements ModuleDescriptor {
    private final Map<ModuleDescriptor.a<?>, Object> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private q f9124d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private kotlin.reflect.jvm.internal.impl.descriptors.t f9125e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f9126f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.b<FqName, PackageViewDescriptor> f9127g;
    private final Lazy h;
    private final kotlin.reflect.jvm.internal.impl.storage.h i;
    private final KotlinBuiltIns j;
    private final kotlin.reflect.jvm.internal.impl.platform.a k;
    private final Name l;

    /* JADX INFO: compiled from: ModuleDescriptorImpl.kt */
    static final class a extends Lambda implements Function0<h> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final h invoke() {
            q qVar = ModuleDescriptorImpl.this.f9124d;
            if (qVar == null) {
                throw new AssertionError("Dependencies of module " + ModuleDescriptorImpl.this.b0() + " were not set before querying module content");
            }
            List<ModuleDescriptorImpl> listA = qVar.a();
            listA.contains(ModuleDescriptorImpl.this);
            Iterator<T> it = listA.iterator();
            while (it.hasNext()) {
                ((ModuleDescriptorImpl) it.next()).B0();
            }
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listA, 10));
            Iterator<T> it2 = listA.iterator();
            while (it2.hasNext()) {
                kotlin.reflect.jvm.internal.impl.descriptors.t tVar = ((ModuleDescriptorImpl) it2.next()).f9125e;
                if (tVar == null) {
                    Intrinsics.throwNpe();
                }
                arrayList.add(tVar);
            }
            return new h(arrayList);
        }
    }

    /* JADX INFO: compiled from: ModuleDescriptorImpl.kt */
    static final class b extends Lambda implements Function1<FqName, n> {
        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final n invoke(FqName fqName) {
            Intrinsics.checkParameterIsNotNull(fqName, "fqName");
            ModuleDescriptorImpl moduleDescriptorImpl = ModuleDescriptorImpl.this;
            return new n(moduleDescriptorImpl, fqName, moduleDescriptorImpl.i);
        }
    }

    public ModuleDescriptorImpl(Name name, kotlin.reflect.jvm.internal.impl.storage.h hVar, KotlinBuiltIns kotlinBuiltIns, kotlin.reflect.jvm.internal.impl.platform.a aVar) {
        this(name, hVar, kotlinBuiltIns, aVar, null, null, 48, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModuleDescriptorImpl(Name moduleName, kotlin.reflect.jvm.internal.impl.storage.h storageManager, KotlinBuiltIns builtIns, kotlin.reflect.jvm.internal.impl.platform.a aVar, Map<ModuleDescriptor.a<?>, ? extends Object> capabilities, Name name) {
        super(Annotations.e0.b(), moduleName);
        Intrinsics.checkParameterIsNotNull(moduleName, "moduleName");
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        Intrinsics.checkParameterIsNotNull(builtIns, "builtIns");
        Intrinsics.checkParameterIsNotNull(capabilities, "capabilities");
        this.i = storageManager;
        this.j = builtIns;
        this.k = aVar;
        this.l = name;
        if (!moduleName.h()) {
            throw new IllegalArgumentException("Module name must be special: " + moduleName);
        }
        Map<ModuleDescriptor.a<?>, Object> mutableMap = MapsKt__MapsKt.toMutableMap(capabilities);
        this.c = mutableMap;
        mutableMap.put(KotlinTypeRefinerKt.getREFINER_CAPABILITY(), new kotlin.reflect.jvm.internal.impl.types.checker.i(null));
        this.f9126f = true;
        this.f9127g = storageManager.h(new b());
        this.h = LazyKt__LazyJVMKt.lazy(new a());
    }

    public /* synthetic */ ModuleDescriptorImpl(Name name, kotlin.reflect.jvm.internal.impl.storage.h hVar, KotlinBuiltIns kotlinBuiltIns, kotlin.reflect.jvm.internal.impl.platform.a aVar, Map map, Name name2, int i, kotlin.jvm.internal.n nVar) {
        this(name, hVar, kotlinBuiltIns, (i & 8) != 0 ? null : aVar, (i & 16) != 0 ? MapsKt__MapsKt.emptyMap() : map, (i & 32) != 0 ? null : name2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean B0() {
        return this.f9125e != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String b0() {
        String string = getName().toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "name.toString()");
        return string;
    }

    private final h k0() {
        return (h) this.h.getValue();
    }

    public boolean F0() {
        return this.f9126f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    public boolean G(ModuleDescriptor targetModule) {
        Intrinsics.checkParameterIsNotNull(targetModule, "targetModule");
        if (Intrinsics.areEqual(this, targetModule)) {
            return true;
        }
        q qVar = this.f9124d;
        if (qVar == null) {
            Intrinsics.throwNpe();
        }
        return CollectionsKt___CollectionsKt.contains(qVar.c(), targetModule) || t0().contains(targetModule) || targetModule.t0().contains(this);
    }

    public final void G0(List<ModuleDescriptorImpl> descriptors) {
        Intrinsics.checkParameterIsNotNull(descriptors, "descriptors");
        H0(descriptors, SetsKt__SetsKt.emptySet());
    }

    public final void H0(List<ModuleDescriptorImpl> descriptors, Set<ModuleDescriptorImpl> friends) {
        Intrinsics.checkParameterIsNotNull(descriptors, "descriptors");
        Intrinsics.checkParameterIsNotNull(friends, "friends");
        I0(new r(descriptors, friends, CollectionsKt__CollectionsKt.emptyList()));
    }

    public final void I0(q dependencies) {
        Intrinsics.checkParameterIsNotNull(dependencies, "dependencies");
        q qVar = this.f9124d;
        this.f9124d = dependencies;
    }

    public final void J0(ModuleDescriptorImpl... descriptors) {
        Intrinsics.checkParameterIsNotNull(descriptors, "descriptors");
        G0(ArraysKt___ArraysKt.toList(descriptors));
    }

    public void Z() {
        if (F0()) {
            return;
        }
        throw new kotlin.reflect.jvm.internal.impl.descriptors.p("Accessing invalid module descriptor " + this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i
    public kotlin.reflect.jvm.internal.impl.descriptors.i b() {
        return ModuleDescriptor.DefaultImpls.getContainingDeclaration(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    public PackageViewDescriptor d0(FqName fqName) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        Z();
        return this.f9127g.invoke(fqName);
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.t e0() {
        Z();
        return k0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    public <T> T h0(ModuleDescriptor.a<T> capability) {
        Intrinsics.checkParameterIsNotNull(capability, "capability");
        T t = (T) this.c.get(capability);
        if (t instanceof Object) {
            return t;
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    public KotlinBuiltIns k() {
        return this.j;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    public Collection<FqName> l(FqName fqName, Function1<? super Name, Boolean> nameFilter) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        Intrinsics.checkParameterIsNotNull(nameFilter, "nameFilter");
        Z();
        return e0().l(fqName, nameFilter);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    public List<ModuleDescriptor> t0() {
        q qVar = this.f9124d;
        if (qVar != null) {
            return qVar.b();
        }
        throw new AssertionError("Dependencies of module " + b0() + " were not set");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i
    public <R, D> R w(kotlin.reflect.jvm.internal.impl.descriptors.k<R, D> visitor, D d2) {
        Intrinsics.checkParameterIsNotNull(visitor, "visitor");
        return (R) ModuleDescriptor.DefaultImpls.accept(this, visitor, d2);
    }

    public final void z0(kotlin.reflect.jvm.internal.impl.descriptors.t providerForModuleContent) {
        Intrinsics.checkParameterIsNotNull(providerForModuleContent, "providerForModuleContent");
        B0();
        this.f9125e = providerForModuleContent;
    }
}
