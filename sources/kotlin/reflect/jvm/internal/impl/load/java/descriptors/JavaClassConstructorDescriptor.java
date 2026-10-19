package kotlin.reflect.jvm.internal.impl.load.java.descriptors;

import com.facebook.share.internal.ShareConstants;
import java.util.List;
import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: loaded from: classes5.dex */
public class JavaClassConstructorDescriptor extends ClassConstructorDescriptorImpl implements b {
    private Boolean F;
    private Boolean G;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected JavaClassConstructorDescriptor(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, JavaClassConstructorDescriptor javaClassConstructorDescriptor, Annotations annotations, boolean z, CallableMemberDescriptor.Kind kind, d0 d0Var) {
        super(dVar, javaClassConstructorDescriptor, annotations, z, kind, d0Var);
        if (dVar == null) {
            u(0);
        }
        if (annotations == null) {
            u(1);
        }
        if (kind == null) {
            u(2);
        }
        if (d0Var == null) {
            u(3);
        }
        this.F = null;
        this.G = null;
    }

    public static JavaClassConstructorDescriptor createJavaConstructor(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, Annotations annotations, boolean z, d0 d0Var) {
        if (dVar == null) {
            u(4);
        }
        if (annotations == null) {
            u(5);
        }
        if (d0Var == null) {
            u(6);
        }
        return new JavaClassConstructorDescriptor(dVar, null, annotations, z, CallableMemberDescriptor.Kind.DECLARATION, d0Var);
    }

    private static /* synthetic */ void u(int i) {
        String str = (i == 11 || i == 18) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 11 || i == 18) ? 2 : 3];
        switch (i) {
            case 1:
            case 5:
            case 9:
            case 15:
                objArr[0] = "annotations";
                break;
            case 2:
            case 8:
            case 13:
                objArr[0] = "kind";
                break;
            case 3:
            case 6:
            case 10:
                objArr[0] = ShareConstants.FEED_SOURCE_PARAM;
                break;
            case 4:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 7:
            case 12:
                objArr[0] = "newOwner";
                break;
            case 11:
            case 18:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor";
                break;
            case 14:
                objArr[0] = "sourceElement";
                break;
            case 16:
                objArr[0] = "enhancedValueParametersData";
                break;
            case 17:
                objArr[0] = "enhancedReturnType";
                break;
        }
        if (i == 11) {
            objArr[1] = "createSubstitutedCopy";
        } else if (i != 18) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor";
        } else {
            objArr[1] = "enhance";
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
                objArr[2] = "createJavaConstructor";
                break;
            case 7:
            case 8:
            case 9:
            case 10:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 11:
            case 18:
                break;
            case 12:
            case 13:
            case 14:
            case 15:
                objArr[2] = "createDescriptor";
                break;
            case 16:
            case 17:
                objArr[2] = "enhance";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 11 && i != 18) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public void M0(boolean z) {
        this.F = Boolean.valueOf(z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public void N0(boolean z) {
        this.G = Boolean.valueOf(z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.a
    public boolean Y() {
        return this.G.booleanValue();
    }

    protected JavaClassConstructorDescriptor e1(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, JavaClassConstructorDescriptor javaClassConstructorDescriptor, CallableMemberDescriptor.Kind kind, d0 d0Var, Annotations annotations) {
        if (dVar == null) {
            u(12);
        }
        if (kind == null) {
            u(13);
        }
        if (d0Var == null) {
            u(14);
        }
        if (annotations == null) {
            u(15);
        }
        return new JavaClassConstructorDescriptor(dVar, javaClassConstructorDescriptor, annotations, this.E, kind, d0Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    /* JADX INFO: renamed from: f1, reason: merged with bridge method [inline-methods] */
    public JavaClassConstructorDescriptor k0(i iVar, o oVar, CallableMemberDescriptor.Kind kind, Name name, Annotations annotations, d0 d0Var) {
        if (iVar == null) {
            u(7);
        }
        if (kind == null) {
            u(8);
        }
        if (annotations == null) {
            u(9);
        }
        if (d0Var == null) {
            u(10);
        }
        if (kind == CallableMemberDescriptor.Kind.DECLARATION || kind == CallableMemberDescriptor.Kind.SYNTHESIZED) {
            JavaClassConstructorDescriptor javaClassConstructorDescriptorE1 = e1((kotlin.reflect.jvm.internal.impl.descriptors.d) iVar, (JavaClassConstructorDescriptor) oVar, kind, d0Var, annotations);
            javaClassConstructorDescriptorE1.M0(h1());
            javaClassConstructorDescriptorE1.N0(Y());
            return javaClassConstructorDescriptorE1;
        }
        throw new IllegalStateException("Attempt at creating a constructor that is not a declaration: \ncopy from: " + this + "\nnewOwner: " + iVar + "\nkind: " + kind);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.descriptors.b
    /* JADX INFO: renamed from: g1, reason: merged with bridge method [inline-methods] */
    public JavaClassConstructorDescriptor T(u uVar, List<h> list, u uVar2, Pair<a.InterfaceC0516a<?>, ?> pair) {
        if (list == null) {
            u(16);
        }
        if (uVar2 == null) {
            u(17);
        }
        JavaClassConstructorDescriptor javaClassConstructorDescriptorK0 = k0(b(), null, getKind(), null, getAnnotations(), getSource());
        javaClassConstructorDescriptorK0.F0(uVar == null ? null : DescriptorFactory.createExtensionReceiverParameterForCallable(javaClassConstructorDescriptorK0, uVar, Annotations.e0.b()), H(), getTypeParameters(), UtilKt.copyValueParameters(list, g(), javaClassConstructorDescriptorK0), uVar2, p(), getVisibility());
        if (pair != null) {
            javaClassConstructorDescriptorK0.I0(pair.f(), pair.g());
        }
        return javaClassConstructorDescriptorK0;
    }

    public boolean h1() {
        return this.F.booleanValue();
    }
}
