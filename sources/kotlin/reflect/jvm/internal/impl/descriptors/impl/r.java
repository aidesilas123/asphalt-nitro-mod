package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ModuleDescriptorImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class r implements q {
    private final List<ModuleDescriptorImpl> a;
    private final Set<ModuleDescriptorImpl> b;
    private final List<ModuleDescriptorImpl> c;

    public r(List<ModuleDescriptorImpl> allDependencies, Set<ModuleDescriptorImpl> modulesWhoseInternalsAreVisible, List<ModuleDescriptorImpl> expectedByDependencies) {
        Intrinsics.checkParameterIsNotNull(allDependencies, "allDependencies");
        Intrinsics.checkParameterIsNotNull(modulesWhoseInternalsAreVisible, "modulesWhoseInternalsAreVisible");
        Intrinsics.checkParameterIsNotNull(expectedByDependencies, "expectedByDependencies");
        this.a = allDependencies;
        this.b = modulesWhoseInternalsAreVisible;
        this.c = expectedByDependencies;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.q
    public List<ModuleDescriptorImpl> a() {
        return this.a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.q
    public List<ModuleDescriptorImpl> b() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.q
    public Set<ModuleDescriptorImpl> c() {
        return this.b;
    }
}
