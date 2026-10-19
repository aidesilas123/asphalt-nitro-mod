package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.Collection;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: KotlinTypeRefiner.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class d {

    /* JADX INFO: compiled from: KotlinTypeRefiner.kt */
    public static final class a extends d {
        public static final a a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.d
        public kotlin.reflect.jvm.internal.impl.descriptors.d a(ClassId classId) {
            Intrinsics.checkParameterIsNotNull(classId, "classId");
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.d
        public <S extends MemberScope> S b(kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor, Function0<? extends S> compute) {
            Intrinsics.checkParameterIsNotNull(classDescriptor, "classDescriptor");
            Intrinsics.checkParameterIsNotNull(compute, "compute");
            return compute.invoke();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.d
        public boolean c(ModuleDescriptor moduleDescriptor) {
            Intrinsics.checkParameterIsNotNull(moduleDescriptor, "moduleDescriptor");
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.d
        public boolean d(f0 typeConstructor) {
            Intrinsics.checkParameterIsNotNull(typeConstructor, "typeConstructor");
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.d
        public Collection<u> f(kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor) {
            Intrinsics.checkParameterIsNotNull(classDescriptor, "classDescriptor");
            f0 f0VarI = classDescriptor.i();
            Intrinsics.checkExpressionValueIsNotNull(f0VarI, "classDescriptor.typeConstructor");
            Collection<u> collectionH = f0VarI.h();
            Intrinsics.checkExpressionValueIsNotNull(collectionH, "classDescriptor.typeConstructor.supertypes");
            return collectionH;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.d
        public u g(u type) {
            Intrinsics.checkParameterIsNotNull(type, "type");
            return type;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.d
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public kotlin.reflect.jvm.internal.impl.descriptors.d e(kotlin.reflect.jvm.internal.impl.descriptors.i descriptor) {
            Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
            return null;
        }
    }

    public abstract kotlin.reflect.jvm.internal.impl.descriptors.d a(ClassId classId);

    public abstract <S extends MemberScope> S b(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, Function0<? extends S> function0);

    public abstract boolean c(ModuleDescriptor moduleDescriptor);

    public abstract boolean d(f0 f0Var);

    public abstract kotlin.reflect.jvm.internal.impl.descriptors.f e(kotlin.reflect.jvm.internal.impl.descriptors.i iVar);

    public abstract Collection<u> f(kotlin.reflect.jvm.internal.impl.descriptors.d dVar);

    public abstract u g(u uVar);
}
