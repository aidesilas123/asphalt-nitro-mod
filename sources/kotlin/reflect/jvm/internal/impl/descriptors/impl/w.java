package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;

/* JADX INFO: compiled from: ReceiverParameterDescriptorImpl.java */
/* JADX INFO: loaded from: classes5.dex */
public class w extends c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.descriptors.i f9161d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d f9162e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(kotlin.reflect.jvm.internal.impl.descriptors.i iVar, kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d dVar, Annotations annotations) {
        super(annotations);
        if (iVar == null) {
            u(0);
        }
        if (dVar == null) {
            u(1);
        }
        if (annotations == null) {
            u(2);
        }
        this.f9161d = iVar;
        this.f9162e = dVar;
    }

    private static /* synthetic */ void u(int i) {
        String str = (i == 3 || i == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 3 || i == 4) ? 2 : 3];
        if (i == 1) {
            objArr[0] = "value";
        } else if (i == 2) {
            objArr[0] = "annotations";
        } else if (i == 3 || i == 4) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl";
        } else if (i != 5) {
            objArr[0] = "containingDeclaration";
        } else {
            objArr[0] = "newOwner";
        }
        if (i == 3) {
            objArr[1] = "getValue";
        } else if (i != 4) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl";
        } else {
            objArr[1] = "getContainingDeclaration";
        }
        if (i != 3 && i != 4) {
            if (i != 5) {
                objArr[2] = "<init>";
            } else {
                objArr[2] = "copy";
            }
        }
        String str2 = String.format(str, objArr);
        if (i != 3 && i != 4) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i
    public kotlin.reflect.jvm.internal.impl.descriptors.i b() {
        kotlin.reflect.jvm.internal.impl.descriptors.i iVar = this.f9161d;
        if (iVar == null) {
            u(4);
        }
        return iVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b0
    public kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d getValue() {
        kotlin.reflect.jvm.internal.impl.resolve.scopes.g.d dVar = this.f9162e;
        if (dVar == null) {
            u(3);
        }
        return dVar;
    }
}
