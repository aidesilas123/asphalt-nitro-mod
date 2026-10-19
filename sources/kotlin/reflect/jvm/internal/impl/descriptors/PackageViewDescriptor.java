package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: compiled from: PackageViewDescriptor.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface PackageViewDescriptor extends i {

    /* JADX INFO: compiled from: PackageViewDescriptor.kt */
    public static final class DefaultImpls {
        public static boolean isEmpty(PackageViewDescriptor packageViewDescriptor) {
            return packageViewDescriptor.a0().isEmpty();
        }
    }

    List<s> a0();

    FqName e();

    boolean isEmpty();

    MemberScope m();

    ModuleDescriptor v0();
}
