package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;

/* JADX INFO: compiled from: LazyClassReceiverParameterDescriptor.java */
/* JADX INFO: loaded from: classes5.dex */
public class m extends c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.descriptors.d f9147d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.resolve.scopes.g.c f9148e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        super(Annotations.e0.b());
        if (dVar == null) {
            u(0);
        }
        this.f9147d = dVar;
        this.f9148e = new kotlin.reflect.jvm.internal.impl.resolve.scopes.g.c(dVar, null);
    }

    private static /* synthetic */ void u(int i) {
        String str = (i == 1 || i == 2) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 1 || i == 2) ? 2 : 3];
        if (i == 1 || i == 2) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazyClassReceiverParameterDescriptor";
        } else if (i != 3) {
            objArr[0] = "descriptor";
        } else {
            objArr[0] = "newOwner";
        }
        if (i == 1) {
            objArr[1] = "getValue";
        } else if (i != 2) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazyClassReceiverParameterDescriptor";
        } else {
            objArr[1] = "getContainingDeclaration";
        }
        if (i != 1 && i != 2) {
            if (i != 3) {
                objArr[2] = "<init>";
            } else {
                objArr[2] = "copy";
            }
        }
        String str2 = String.format(str, objArr);
        if (i != 1 && i != 2) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i
    public kotlin.reflect.jvm.internal.impl.descriptors.i b() {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = this.f9147d;
        if (dVar == null) {
            u(2);
        }
        return dVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b0
    public kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d getValue() {
        kotlin.reflect.jvm.internal.impl.resolve.scopes.g.c cVar = this.f9148e;
        if (cVar == null) {
            u(1);
        }
        return cVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl
    public String toString() {
        return "class " + this.f9147d.getName() + "::this";
    }
}
