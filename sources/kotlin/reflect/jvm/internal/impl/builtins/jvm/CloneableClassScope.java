package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.GivenFunctionsMemberScope;
import kotlin.reflect.jvm.internal.impl.storage.h;

/* JADX INFO: compiled from: CloneableClassScope.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class CloneableClassScope extends GivenFunctionsMemberScope {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Name f9068e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f9069f = new a(null);

    /* JADX INFO: compiled from: CloneableClassScope.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final Name a() {
            return CloneableClassScope.f9068e;
        }
    }

    static {
        Name nameIdentifier = Name.identifier("clone");
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier, "Name.identifier(\"clone\")");
        f9068e = nameIdentifier;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloneableClassScope(h storageManager, d containingClass) {
        super(storageManager, containingClass);
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        Intrinsics.checkParameterIsNotNull(containingClass, "containingClass");
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.GivenFunctionsMemberScope
    protected List<o> g() {
        SimpleFunctionDescriptorImpl simpleFunctionDescriptorImplCreate = SimpleFunctionDescriptorImpl.create(j(), Annotations.e0.b(), f9068e, CallableMemberDescriptor.Kind.DECLARATION, d0.a);
        simpleFunctionDescriptorImplCreate.F0(null, j().E0(), CollectionsKt__CollectionsKt.emptyList(), CollectionsKt__CollectionsKt.emptyList(), DescriptorUtilsKt.getBuiltIns(j()).j(), Modality.OPEN, Visibilities.c);
        return CollectionsKt__CollectionsJVMKt.listOf(simpleFunctionDescriptorImplCreate);
    }
}
