package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.sequences.i;

/* JADX INFO: compiled from: Annotations.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class e implements Annotations {
    private final List<Annotations> a;

    /* JADX INFO: compiled from: Annotations.kt */
    static final class a extends Lambda implements Function1<Annotations, AnnotationDescriptor> {
        final /* synthetic */ FqName a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(FqName fqName) {
            super(1);
            this.a = fqName;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AnnotationDescriptor invoke(Annotations it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return it.b(this.a);
        }
    }

    /* JADX INFO: compiled from: Annotations.kt */
    static final class b extends Lambda implements Function1<Annotations, Sequence<? extends AnnotationDescriptor>> {
        public static final b a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Sequence<AnnotationDescriptor> invoke(Annotations it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return CollectionsKt___CollectionsKt.asSequence(it);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e(List<? extends Annotations> delegates) {
        Intrinsics.checkParameterIsNotNull(delegates, "delegates");
        this.a = delegates;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public e(Annotations... delegates) {
        this((List<? extends Annotations>) ArraysKt___ArraysKt.toList(delegates));
        Intrinsics.checkParameterIsNotNull(delegates, "delegates");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public boolean N(FqName fqName) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        Iterator it = CollectionsKt___CollectionsKt.asSequence(this.a).iterator();
        while (it.hasNext()) {
            if (((Annotations) it.next()).N(fqName)) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public AnnotationDescriptor b(FqName fqName) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        return (AnnotationDescriptor) i.firstOrNull(SequencesKt___SequencesKt.mapNotNull(CollectionsKt___CollectionsKt.asSequence(this.a), new a(fqName)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public boolean isEmpty() {
        List<Annotations> list = this.a;
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (!((Annotations) it.next()).isEmpty()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.lang.Iterable
    public Iterator<AnnotationDescriptor> iterator() {
        return SequencesKt___SequencesKt.flatMap(CollectionsKt___CollectionsKt.asSequence(this.a), b.a).iterator();
    }
}
