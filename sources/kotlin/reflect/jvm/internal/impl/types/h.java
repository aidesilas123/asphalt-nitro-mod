package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.g0;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;

/* JADX INFO: compiled from: ClassTypeConstructorImpl.java */
/* JADX INFO: loaded from: classes5.dex */
public class h extends b implements f0 {
    private final kotlin.reflect.jvm.internal.impl.descriptors.d c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<kotlin.reflect.jvm.internal.impl.descriptors.i0> f9861d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Collection<u> f9862e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, List<? extends kotlin.reflect.jvm.internal.impl.descriptors.i0> list, Collection<u> collection, kotlin.reflect.jvm.internal.impl.storage.h hVar) {
        super(hVar);
        if (dVar == null) {
            o(0);
        }
        if (list == null) {
            o(1);
        }
        if (collection == null) {
            o(2);
        }
        if (hVar == null) {
            o(3);
        }
        this.c = dVar;
        this.f9861d = Collections.unmodifiableList(new ArrayList(list));
        this.f9862e = Collections.unmodifiableCollection(collection);
    }

    private static /* synthetic */ void o(int i) {
        String str = (i == 4 || i == 5 || i == 6 || i == 7) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 4 || i == 5 || i == 6 || i == 7) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "parameters";
                break;
            case 2:
                objArr[0] = "supertypes";
                break;
            case 3:
                objArr[0] = "storageManager";
                break;
            case 4:
            case 5:
            case 6:
            case 7:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/ClassTypeConstructorImpl";
                break;
            default:
                objArr[0] = "classDescriptor";
                break;
        }
        if (i == 4) {
            objArr[1] = "getParameters";
        } else if (i == 5) {
            objArr[1] = "getDeclarationDescriptor";
        } else if (i == 6) {
            objArr[1] = "computeSupertypes";
        } else if (i != 7) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/ClassTypeConstructorImpl";
        } else {
            objArr[1] = "getSupertypeLoopChecker";
        }
        if (i != 4 && i != 5 && i != 6 && i != 7) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (i != 4 && i != 5 && i != 6 && i != 7) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public boolean d() {
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
    protected Collection<u> f() {
        Collection<u> collection = this.f9862e;
        if (collection == null) {
            o(6);
        }
        return collection;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public List<kotlin.reflect.jvm.internal.impl.descriptors.i0> getParameters() {
        List<kotlin.reflect.jvm.internal.impl.descriptors.i0> list = this.f9861d;
        if (list == null) {
            o(4);
        }
        return list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
    protected kotlin.reflect.jvm.internal.impl.descriptors.g0 j() {
        g0.a aVar = g0.a.a;
        if (aVar == null) {
            o(7);
        }
        return aVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor, kotlin.reflect.jvm.internal.impl.types.f0
    public kotlin.reflect.jvm.internal.impl.descriptors.d q() {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = this.c;
        if (dVar == null) {
            o(5);
        }
        return dVar;
    }

    public String toString() {
        return DescriptorUtils.getFqName(this.c).b();
    }
}
