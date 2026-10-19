package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: compiled from: ModuleDescriptor.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface ModuleDescriptor extends i {

    /* JADX INFO: compiled from: ModuleDescriptor.kt */
    public static final class DefaultImpls {
        public static <R, D> R accept(ModuleDescriptor moduleDescriptor, k<R, D> visitor, D d2) {
            Intrinsics.checkParameterIsNotNull(visitor, "visitor");
            return visitor.k(moduleDescriptor, d2);
        }

        public static i getContainingDeclaration(ModuleDescriptor moduleDescriptor) {
            return null;
        }
    }

    /* JADX INFO: compiled from: ModuleDescriptor.kt */
    public static final class a<T> {
        private final String a;

        public a(String name) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            this.a = name;
        }

        public String toString() {
            return this.a;
        }
    }

    boolean G(ModuleDescriptor moduleDescriptor);

    PackageViewDescriptor d0(FqName fqName);

    <T> T h0(a<T> aVar);

    KotlinBuiltIns k();

    Collection<FqName> l(FqName fqName, Function1<? super Name, Boolean> function1);

    List<ModuleDescriptor> t0();
}
