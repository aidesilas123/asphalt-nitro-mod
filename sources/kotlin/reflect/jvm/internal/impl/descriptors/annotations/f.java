package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: compiled from: Annotations.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class f implements Annotations {
    private final Annotations a;
    private final boolean b;
    private final Function1<FqName, Boolean> c;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public f(Annotations delegate, Function1<? super FqName, Boolean> fqNameFilter) {
        this(delegate, false, fqNameFilter);
        Intrinsics.checkParameterIsNotNull(delegate, "delegate");
        Intrinsics.checkParameterIsNotNull(fqNameFilter, "fqNameFilter");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public f(Annotations delegate, boolean z, Function1<? super FqName, Boolean> fqNameFilter) {
        Intrinsics.checkParameterIsNotNull(delegate, "delegate");
        Intrinsics.checkParameterIsNotNull(fqNameFilter, "fqNameFilter");
        this.a = delegate;
        this.b = z;
        this.c = fqNameFilter;
    }

    private final boolean a(AnnotationDescriptor annotationDescriptor) {
        FqName fqNameE = annotationDescriptor.e();
        return fqNameE != null && this.c.invoke(fqNameE).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public boolean N(FqName fqName) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        if (this.c.invoke(fqName).booleanValue()) {
            return this.a.N(fqName);
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public AnnotationDescriptor b(FqName fqName) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        if (this.c.invoke(fqName).booleanValue()) {
            return this.a.b(fqName);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public boolean isEmpty() {
        boolean z;
        Annotations annotations = this.a;
        if ((annotations instanceof Collection) && ((Collection) annotations).isEmpty()) {
            z = false;
        } else {
            Iterator<AnnotationDescriptor> it = annotations.iterator();
            while (it.hasNext()) {
                if (a(it.next())) {
                    z = true;
                    break;
                }
            }
            z = false;
        }
        return this.b ? !z : z;
    }

    @Override // java.lang.Iterable
    public Iterator<AnnotationDescriptor> iterator() {
        Annotations annotations = this.a;
        ArrayList arrayList = new ArrayList();
        for (AnnotationDescriptor annotationDescriptor : annotations) {
            if (a(annotationDescriptor)) {
                arrayList.add(annotationDescriptor);
            }
        }
        return arrayList.iterator();
    }
}
