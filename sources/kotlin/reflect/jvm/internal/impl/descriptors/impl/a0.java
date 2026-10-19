package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.facebook.share.internal.ShareConstants;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: compiled from: VariableDescriptorWithInitializerImpl.java */
/* JADX INFO: loaded from: classes5.dex */
public abstract class a0 extends z {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f9136f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected kotlin.reflect.jvm.internal.impl.storage.f<kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> f9137g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a0(kotlin.reflect.jvm.internal.impl.descriptors.i iVar, Annotations annotations, Name name, kotlin.reflect.jvm.internal.impl.types.u uVar, boolean z, d0 d0Var) {
        super(iVar, annotations, name, uVar, d0Var);
        if (iVar == null) {
            u(0);
        }
        if (annotations == null) {
            u(1);
        }
        if (name == null) {
            u(2);
        }
        if (d0Var == null) {
            u(3);
        }
        this.f9136f = z;
    }

    private static /* synthetic */ void u(int i) {
        Object[] objArr = new Object[3];
        if (i == 1) {
            objArr[0] = "annotations";
        } else if (i == 2) {
            objArr[0] = "name";
        } else if (i == 3) {
            objArr[0] = ShareConstants.FEED_SOURCE_PARAM;
        } else if (i != 4) {
            objArr[0] = "containingDeclaration";
        } else {
            objArr[0] = "compileTimeInitializer";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorWithInitializerImpl";
        if (i != 4) {
            objArr[2] = "<init>";
        } else {
            objArr[2] = "setCompileTimeInitializer";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k0
    public boolean J() {
        return this.f9136f;
    }

    public void e0(kotlin.reflect.jvm.internal.impl.storage.f<kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> fVar) {
        if (fVar == null) {
            u(4);
        }
        this.f9137g = fVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k0
    public kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> i0() {
        kotlin.reflect.jvm.internal.impl.storage.f<kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> fVar = this.f9137g;
        if (fVar != null) {
            return fVar.invoke();
        }
        return null;
    }
}
