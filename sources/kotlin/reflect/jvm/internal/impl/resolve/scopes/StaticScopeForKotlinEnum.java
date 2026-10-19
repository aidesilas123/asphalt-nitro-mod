package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.e0;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.storage.h;

/* JADX INFO: compiled from: StaticScopeForKotlinEnum.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class StaticScopeForKotlinEnum extends f {
    static final /* synthetic */ KProperty[] b = {Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(StaticScopeForKotlinEnum.class), "functions", "getFunctions()Ljava/util/List;"))};
    private final kotlin.reflect.jvm.internal.impl.storage.e c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.descriptors.d f9768d;

    /* JADX INFO: compiled from: StaticScopeForKotlinEnum.kt */
    static final class a extends Lambda implements Function0<List<? extends c0>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<c0> invoke() {
            return CollectionsKt__CollectionsKt.listOf((Object[]) new c0[]{DescriptorFactory.createEnumValueOfMethod(StaticScopeForKotlinEnum.this.f9768d), DescriptorFactory.createEnumValuesMethod(StaticScopeForKotlinEnum.this.f9768d)});
        }
    }

    public StaticScopeForKotlinEnum(h storageManager, kotlin.reflect.jvm.internal.impl.descriptors.d containingClass) {
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        Intrinsics.checkParameterIsNotNull(containingClass, "containingClass");
        this.f9768d = containingClass;
        containingClass.getKind();
        ClassKind classKind = ClassKind.ENUM_CLASS;
        this.c = storageManager.c(new a());
    }

    private final List<c0> j() {
        return (List) StorageKt.getValue(this.c, this, (KProperty<?>) b[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.f c(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar) {
        return (kotlin.reflect.jvm.internal.impl.descriptors.f) g(name, bVar);
    }

    public Void g(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public List<c0> d(DescriptorKindFilter kindFilter, Function1<? super Name, Boolean> nameFilter) {
        Intrinsics.checkParameterIsNotNull(kindFilter, "kindFilter");
        Intrinsics.checkParameterIsNotNull(nameFilter, "nameFilter");
        return j();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public ArrayList<c0> a(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        List<c0> listJ = j();
        ArrayList<c0> arrayList = new ArrayList<>(1);
        for (Object obj : listJ) {
            if (Intrinsics.areEqual(((c0) obj).getName(), name)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }
}
