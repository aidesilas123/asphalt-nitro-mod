package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.facebook.share.internal.ShareConstants;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: compiled from: DeclarationDescriptorNonRootImpl.java */
/* JADX INFO: loaded from: classes5.dex */
public abstract class i extends DeclarationDescriptorImpl implements kotlin.reflect.jvm.internal.impl.descriptors.j {
    private final kotlin.reflect.jvm.internal.impl.descriptors.i c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d0 f9146d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected i(kotlin.reflect.jvm.internal.impl.descriptors.i iVar, Annotations annotations, Name name, d0 d0Var) {
        super(annotations, name);
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
        this.c = iVar;
        this.f9146d = d0Var;
    }

    private static /* synthetic */ void u(int i) {
        String str = (i == 4 || i == 5 || i == 6) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 4 || i == 5 || i == 6) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "annotations";
                break;
            case 2:
                objArr[0] = "name";
                break;
            case 3:
                objArr[0] = ShareConstants.FEED_SOURCE_PARAM;
                break;
            case 4:
            case 5:
            case 6:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        if (i == 4) {
            objArr[1] = "getOriginal";
        } else if (i == 5) {
            objArr[1] = "getContainingDeclaration";
        } else if (i != 6) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl";
        } else {
            objArr[1] = "getSource";
        }
        if (i != 4 && i != 5 && i != 6) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (i != 4 && i != 5 && i != 6) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.i
    /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.descriptors.l a() {
        kotlin.reflect.jvm.internal.impl.descriptors.l lVar = (kotlin.reflect.jvm.internal.impl.descriptors.l) super.a();
        if (lVar == null) {
            u(4);
        }
        return lVar;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.i b() {
        kotlin.reflect.jvm.internal.impl.descriptors.i iVar = this.c;
        if (iVar == null) {
            u(5);
        }
        return iVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.l
    public d0 getSource() {
        d0 d0Var = this.f9146d;
        if (d0Var == null) {
            u(6);
        }
        return d0Var;
    }
}
