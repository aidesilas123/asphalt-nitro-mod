package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: compiled from: Annotations.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface Annotations extends Iterable<AnnotationDescriptor>, KMappedMarker {
    public static final a e0 = a.b;

    /* JADX INFO: compiled from: Annotations.kt */
    public static final class DefaultImpls {
        public static AnnotationDescriptor findAnnotation(Annotations annotations, FqName fqName) {
            AnnotationDescriptor next;
            Intrinsics.checkParameterIsNotNull(fqName, "fqName");
            Iterator<AnnotationDescriptor> it = annotations.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (Intrinsics.areEqual(next.e(), fqName)) {
                    break;
                }
            }
            return next;
        }

        public static boolean hasAnnotation(Annotations annotations, FqName fqName) {
            Intrinsics.checkParameterIsNotNull(fqName, "fqName");
            return annotations.b(fqName) != null;
        }
    }

    /* JADX INFO: compiled from: Annotations.kt */
    public static final class a {
        static final /* synthetic */ a b = new a();
        private static final Annotations a = new C0517a();

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Annotations.kt */
        public static final class C0517a implements Annotations {
            C0517a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
            public boolean N(FqName fqName) {
                Intrinsics.checkParameterIsNotNull(fqName, "fqName");
                return DefaultImpls.hasAnnotation(this, fqName);
            }

            public Void a(FqName fqName) {
                Intrinsics.checkParameterIsNotNull(fqName, "fqName");
                return null;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
            public /* bridge */ /* synthetic */ AnnotationDescriptor b(FqName fqName) {
                return (AnnotationDescriptor) a(fqName);
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
            public boolean isEmpty() {
                return true;
            }

            @Override // java.lang.Iterable
            public Iterator<AnnotationDescriptor> iterator() {
                return CollectionsKt__CollectionsKt.emptyList().iterator();
            }

            public String toString() {
                return "EMPTY";
            }
        }

        private a() {
        }

        public final Annotations a(List<? extends AnnotationDescriptor> annotations) {
            Intrinsics.checkParameterIsNotNull(annotations, "annotations");
            return annotations.isEmpty() ? a : new d(annotations);
        }

        public final Annotations b() {
            return a;
        }
    }

    boolean N(FqName fqName);

    AnnotationDescriptor b(FqName fqName);

    boolean isEmpty();
}
