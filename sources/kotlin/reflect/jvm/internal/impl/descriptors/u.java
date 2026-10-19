package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.sequences.SequencesKt___SequencesKt;

/* JADX INFO: compiled from: PackageFragmentProviderImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class u implements t {
    private final Collection<s> a;

    /* JADX INFO: compiled from: PackageFragmentProviderImpl.kt */
    static final class a extends Lambda implements Function1<s, FqName> {
        public static final a a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final FqName invoke(s it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return it.e();
        }
    }

    /* JADX INFO: compiled from: PackageFragmentProviderImpl.kt */
    static final class b extends Lambda implements Function1<FqName, Boolean> {
        final /* synthetic */ FqName a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(FqName fqName) {
            super(1);
            this.a = fqName;
        }

        public final boolean a(FqName it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return !it.d() && Intrinsics.areEqual(it.e(), this.a);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(FqName fqName) {
            return Boolean.valueOf(a(fqName));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public u(Collection<? extends s> packageFragments) {
        Intrinsics.checkParameterIsNotNull(packageFragments, "packageFragments");
        this.a = packageFragments;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.t
    public List<s> a(FqName fqName) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        Collection<s> collection = this.a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (Intrinsics.areEqual(((s) obj).e(), fqName)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.t
    public Collection<FqName> l(FqName fqName, Function1<? super Name, Boolean> nameFilter) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        Intrinsics.checkParameterIsNotNull(nameFilter, "nameFilter");
        return SequencesKt___SequencesKt.toList(SequencesKt___SequencesKt.filter(SequencesKt___SequencesKt.map(CollectionsKt___CollectionsKt.asSequence(this.a), a.a), new b(fqName)));
    }
}
