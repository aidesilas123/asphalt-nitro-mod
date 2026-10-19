package kotlin.reflect.jvm.internal.impl.load.java.descriptors;

import com.facebook.share.internal.ShareConstants;
import java.util.List;
import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ConstUtil;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.a0;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertySetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.v;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.TypeEnhancementKt;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: loaded from: classes5.dex */
public class JavaPropertyDescriptor extends PropertyDescriptorImpl implements b {
    private final boolean A;
    private final Pair<a.InterfaceC0516a<?>, ?> B;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected JavaPropertyDescriptor(i iVar, Annotations annotations, Modality modality, m0 m0Var, boolean z, Name name, d0 d0Var, y yVar, CallableMemberDescriptor.Kind kind, boolean z2, Pair<a.InterfaceC0516a<?>, ?> pair) {
        super(iVar, yVar, annotations, modality, m0Var, z, name, kind, d0Var, false, false, false, false, false, false);
        if (iVar == null) {
            u(0);
        }
        if (annotations == null) {
            u(1);
        }
        if (modality == null) {
            u(2);
        }
        if (m0Var == null) {
            u(3);
        }
        if (name == null) {
            u(4);
        }
        if (d0Var == null) {
            u(5);
        }
        if (kind == null) {
            u(6);
        }
        this.A = z2;
        this.B = pair;
    }

    public static JavaPropertyDescriptor create(i iVar, Annotations annotations, Modality modality, m0 m0Var, boolean z, Name name, d0 d0Var, boolean z2) {
        if (iVar == null) {
            u(7);
        }
        if (annotations == null) {
            u(8);
        }
        if (modality == null) {
            u(9);
        }
        if (m0Var == null) {
            u(10);
        }
        if (name == null) {
            u(11);
        }
        if (d0Var == null) {
            u(12);
        }
        return new JavaPropertyDescriptor(iVar, annotations, modality, m0Var, z, name, d0Var, null, CallableMemberDescriptor.Kind.DECLARATION, z2, null);
    }

    private static /* synthetic */ void u(int i) {
        String str = i != 21 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i != 21 ? 3 : 2];
        switch (i) {
            case 1:
            case 8:
                objArr[0] = "annotations";
                break;
            case 2:
            case 9:
                objArr[0] = "modality";
                break;
            case 3:
            case 10:
                objArr[0] = "visibility";
                break;
            case 4:
            case 11:
                objArr[0] = "name";
                break;
            case 5:
            case 12:
            case 18:
                objArr[0] = ShareConstants.FEED_SOURCE_PARAM;
                break;
            case 6:
            case 16:
                objArr[0] = "kind";
                break;
            case 7:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 13:
                objArr[0] = "newOwner";
                break;
            case 14:
                objArr[0] = "newModality";
                break;
            case 15:
                objArr[0] = "newVisibility";
                break;
            case 17:
                objArr[0] = "newName";
                break;
            case 19:
                objArr[0] = "enhancedValueParametersData";
                break;
            case 20:
                objArr[0] = "enhancedReturnType";
                break;
            case 21:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor";
                break;
        }
        if (i != 21) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor";
        } else {
            objArr[1] = "enhance";
        }
        switch (i) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                objArr[2] = "create";
                break;
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 19:
            case 20:
                objArr[2] = "enhance";
                break;
            case 21:
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i == 21) {
            throw new IllegalStateException(str2);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl
    protected PropertyDescriptorImpl B0(i iVar, Modality modality, m0 m0Var, y yVar, CallableMemberDescriptor.Kind kind, Name name, d0 d0Var) {
        if (iVar == null) {
            u(13);
        }
        if (modality == null) {
            u(14);
        }
        if (m0Var == null) {
            u(15);
        }
        if (kind == null) {
            u(16);
        }
        if (name == null) {
            u(17);
        }
        if (d0Var == null) {
            u(18);
        }
        return new JavaPropertyDescriptor(iVar, getAnnotations(), modality, m0Var, J(), name, d0Var, yVar, kind, this.A, this.B);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.descriptors.b
    public b T(u uVar, List<h> list, u uVar2, Pair<a.InterfaceC0516a<?>, ?> pair) {
        v vVar;
        PropertySetterDescriptorImpl propertySetterDescriptorImpl;
        if (list == null) {
            u(19);
        }
        if (uVar2 == null) {
            u(20);
        }
        y yVarA = a() == this ? null : a();
        JavaPropertyDescriptor javaPropertyDescriptor = new JavaPropertyDescriptor(b(), getAnnotations(), p(), getVisibility(), J(), getName(), getSource(), yVarA, getKind(), this.A, pair);
        v getter = getGetter();
        if (getter != null) {
            vVar = vVar;
            v vVar2 = new v(javaPropertyDescriptor, getter.getAnnotations(), getter.p(), getter.getVisibility(), getter.C(), getter.isExternal(), getter.isInline(), getKind(), yVarA == null ? null : yVarA.getGetter(), getter.getSource());
            vVar.B0(getter.n0());
            vVar.H0(uVar2);
        } else {
            vVar = null;
        }
        a0 setter = getSetter();
        if (setter != null) {
            PropertySetterDescriptorImpl propertySetterDescriptorImpl2 = new PropertySetterDescriptorImpl(javaPropertyDescriptor, setter.getAnnotations(), setter.p(), setter.getVisibility(), setter.C(), setter.isExternal(), setter.isInline(), getKind(), yVarA == null ? null : yVarA.getSetter(), setter.getSource());
            propertySetterDescriptorImpl2.B0(propertySetterDescriptorImpl2.n0());
            propertySetterDescriptorImpl2.H0(setter.g().get(0));
            propertySetterDescriptorImpl = propertySetterDescriptorImpl2;
        } else {
            propertySetterDescriptorImpl = null;
        }
        javaPropertyDescriptor.K0(vVar, propertySetterDescriptorImpl, r0(), L());
        javaPropertyDescriptor.O0(L0());
        kotlin.reflect.jvm.internal.impl.storage.f<kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> fVar = this.f9137g;
        if (fVar != null) {
            javaPropertyDescriptor.e0(fVar);
        }
        javaPropertyDescriptor.x0(d());
        javaPropertyDescriptor.P0(uVar2, getTypeParameters(), H(), uVar == null ? null : DescriptorFactory.createExtensionReceiverParameterForCallable(this, uVar, Annotations.e0.b()));
        return javaPropertyDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.z, kotlin.reflect.jvm.internal.impl.descriptors.a
    public boolean Y() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.k0
    public boolean isConst() {
        u type = getType();
        return this.A && ConstUtil.canBeUsedForConstVal(type) && (!TypeEnhancementKt.hasEnhancedNullability(type) || KotlinBuiltIns.isString(type));
    }
}
