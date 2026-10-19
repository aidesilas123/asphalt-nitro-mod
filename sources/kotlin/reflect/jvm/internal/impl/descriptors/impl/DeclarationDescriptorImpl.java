package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.json.o2;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;

/* JADX INFO: loaded from: classes5.dex */
public abstract class DeclarationDescriptorImpl extends kotlin.reflect.jvm.internal.impl.descriptors.annotations.b implements kotlin.reflect.jvm.internal.impl.descriptors.i {
    private final Name b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeclarationDescriptorImpl(Annotations annotations, Name name) {
        super(annotations);
        if (annotations == null) {
            u(0);
        }
        if (name == null) {
            u(1);
        }
        this.b = name;
    }

    public static String toString(kotlin.reflect.jvm.internal.impl.descriptors.i iVar) {
        if (iVar == null) {
            u(4);
        }
        try {
            String str = DescriptorRenderer.i.p(iVar) + o2.i.f6490d + iVar.getClass().getSimpleName() + "@" + Integer.toHexString(System.identityHashCode(iVar)) + o2.i.f6491e;
            if (str == null) {
                u(5);
            }
            return str;
        } catch (Throwable unused) {
            String str2 = iVar.getClass().getSimpleName() + " " + iVar.getName();
            if (str2 == null) {
                u(6);
            }
            return str2;
        }
    }

    private static /* synthetic */ void u(int i) {
        String str = (i == 2 || i == 3 || i == 5 || i == 6) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 2 || i == 3 || i == 5 || i == 6) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "name";
                break;
            case 2:
            case 3:
            case 5:
            case 6:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl";
                break;
            case 4:
                objArr[0] = "descriptor";
                break;
            default:
                objArr[0] = "annotations";
                break;
        }
        if (i == 2) {
            objArr[1] = "getName";
        } else if (i == 3) {
            objArr[1] = "getOriginal";
        } else if (i == 5 || i == 6) {
            objArr[1] = "toString";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl";
        }
        if (i != 2 && i != 3) {
            if (i == 4) {
                objArr[2] = "toString";
            } else if (i != 5 && i != 6) {
                objArr[2] = "<init>";
            }
        }
        String str2 = String.format(str, objArr);
        if (i != 2 && i != 3 && i != 5 && i != 6) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.i a() {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.r
    public Name getName() {
        Name name = this.b;
        if (name == null) {
            u(2);
        }
        return name;
    }

    public String toString() {
        return toString(this);
    }
}
