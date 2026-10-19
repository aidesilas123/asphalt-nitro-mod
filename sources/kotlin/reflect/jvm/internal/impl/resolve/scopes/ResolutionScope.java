package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.Collection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: compiled from: ResolutionScope.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface ResolutionScope {

    /* JADX INFO: compiled from: ResolutionScope.kt */
    public static final class DefaultImpls {
        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Collection getContributedDescriptors$default(ResolutionScope resolutionScope, DescriptorKindFilter descriptorKindFilter, Function1 function1, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getContributedDescriptors");
            }
            if ((i & 1) != 0) {
                descriptorKindFilter = DescriptorKindFilter.l;
            }
            if ((i & 2) != 0) {
                function1 = MemberScope.a.a();
            }
            return resolutionScope.d(descriptorKindFilter, function1);
        }

        public static void recordLookup(ResolutionScope resolutionScope, Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(location, "location");
            resolutionScope.a(name, location);
        }
    }

    Collection<? extends o> a(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar);

    kotlin.reflect.jvm.internal.impl.descriptors.f c(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar);

    Collection<i> d(DescriptorKindFilter descriptorKindFilter, Function1<? super Name, Boolean> function1);
}
