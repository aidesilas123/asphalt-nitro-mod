package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.facebook.share.internal.ShareConstants;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: compiled from: ClassDescriptorBase.java */
/* JADX INFO: loaded from: classes5.dex */
public abstract class f extends a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.descriptors.i f9144f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final d0 f9145g;
    private final boolean h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected f(kotlin.reflect.jvm.internal.impl.storage.h hVar, kotlin.reflect.jvm.internal.impl.descriptors.i iVar, Name name, d0 d0Var, boolean z) {
        super(hVar, name);
        if (hVar == null) {
            b0(0);
        }
        if (iVar == null) {
            b0(1);
        }
        if (name == null) {
            b0(2);
        }
        if (d0Var == null) {
            b0(3);
        }
        this.f9144f = iVar;
        this.f9145g = d0Var;
        this.h = z;
    }

    private static /* synthetic */ void b0(int i) {
        String str = (i == 4 || i == 5) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 4 || i == 5) ? 2 : 3];
        if (i == 1) {
            objArr[0] = "containingDeclaration";
        } else if (i == 2) {
            objArr[0] = "name";
        } else if (i == 3) {
            objArr[0] = ShareConstants.FEED_SOURCE_PARAM;
        } else if (i == 4 || i == 5) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase";
        } else {
            objArr[0] = "storageManager";
        }
        if (i == 4) {
            objArr[1] = "getContainingDeclaration";
        } else if (i != 5) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase";
        } else {
            objArr[1] = "getSource";
        }
        if (i != 4 && i != 5) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (i != 4 && i != 5) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.j, kotlin.reflect.jvm.internal.impl.descriptors.i
    public kotlin.reflect.jvm.internal.impl.descriptors.i b() {
        kotlin.reflect.jvm.internal.impl.descriptors.i iVar = this.f9144f;
        if (iVar == null) {
            b0(4);
        }
        return iVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.l
    public d0 getSource() {
        d0 d0Var = this.f9145g;
        if (d0Var == null) {
            b0(5);
        }
        return d0Var;
    }

    public boolean isExternal() {
        return this.h;
    }
}
