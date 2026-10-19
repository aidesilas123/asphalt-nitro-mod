package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.facebook.share.internal.ShareConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: compiled from: MutableClassDescriptor.java */
/* JADX INFO: loaded from: classes5.dex */
public class s extends f {
    private final ClassKind i;
    private final boolean j;
    private Modality k;
    private m0 l;
    private f0 m;
    private List<i0> n;
    private final Collection<kotlin.reflect.jvm.internal.impl.types.u> o;
    private final kotlin.reflect.jvm.internal.impl.storage.h p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(kotlin.reflect.jvm.internal.impl.descriptors.i iVar, ClassKind classKind, boolean z, boolean z2, Name name, d0 d0Var, kotlin.reflect.jvm.internal.impl.storage.h hVar) {
        super(hVar, iVar, name, d0Var, z2);
        if (iVar == null) {
            b0(0);
        }
        if (classKind == null) {
            b0(1);
        }
        if (name == null) {
            b0(2);
        }
        if (d0Var == null) {
            b0(3);
        }
        if (hVar == null) {
            b0(4);
        }
        this.o = new ArrayList();
        this.p = hVar;
        this.i = classKind;
        this.j = z;
    }

    private static /* synthetic */ void b0(int i) {
        String str;
        int i2;
        switch (i) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                i2 = 2;
                break;
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "kind";
                break;
            case 2:
                objArr[0] = "name";
                break;
            case 3:
                objArr[0] = ShareConstants.FEED_SOURCE_PARAM;
                break;
            case 4:
                objArr[0] = "storageManager";
                break;
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor";
                break;
            case 6:
                objArr[0] = "modality";
                break;
            case 9:
                objArr[0] = "visibility";
                break;
            case 12:
                objArr[0] = "supertype";
                break;
            case 14:
                objArr[0] = "typeParameters";
                break;
            case 16:
                objArr[0] = "kotlinTypeRefiner";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i) {
            case 5:
                objArr[1] = "getAnnotations";
                break;
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor";
                break;
            case 7:
                objArr[1] = "getModality";
                break;
            case 8:
                objArr[1] = "getKind";
                break;
            case 10:
                objArr[1] = "getVisibility";
                break;
            case 11:
                objArr[1] = "getTypeConstructor";
                break;
            case 13:
                objArr[1] = "getConstructors";
                break;
            case 15:
                objArr[1] = "getDeclaredTypeParameters";
                break;
            case 17:
                objArr[1] = "getUnsubstitutedMemberScope";
                break;
            case 18:
                objArr[1] = "getStaticScope";
                break;
            case 19:
                objArr[1] = "getSealedSubclasses";
                break;
        }
        switch (i) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                break;
            case 6:
                objArr[2] = "setModality";
                break;
            case 9:
                objArr[2] = "setVisibility";
                break;
            case 12:
                objArr[2] = "addSupertype";
                break;
            case 14:
                objArr[2] = "setTypeParameterDescriptors";
                break;
            case 16:
                objArr[2] = "getUnsubstitutedMemberScope";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                throw new IllegalStateException(str2);
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.c A() {
        return null;
    }

    public void B0(Modality modality) {
        if (modality == null) {
            b0(6);
        }
        this.k = modality;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean C0() {
        return false;
    }

    public void F0(List<i0> list) {
        if (list == null) {
            b0(14);
        }
        if (this.n == null) {
            this.n = new ArrayList(list);
            return;
        }
        throw new IllegalStateException("Type parameters are already set for " + getName());
    }

    public void G0(m0 m0Var) {
        if (m0Var == null) {
            b0(9);
        }
        this.l = m0Var;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
    public boolean R() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean U() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.p
    public MemberScope Z(kotlin.reflect.jvm.internal.impl.types.checker.d dVar) {
        if (dVar == null) {
            b0(16);
        }
        MemberScope.b bVar = MemberScope.b.b;
        if (bVar == null) {
            b0(17);
        }
        return bVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
    public boolean c0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public MemberScope f0() {
        MemberScope.b bVar = MemberScope.b.b;
        if (bVar == null) {
            b0(18);
        }
        return bVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.d g0() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public Annotations getAnnotations() {
        Annotations annotationsB = Annotations.e0.b();
        if (annotationsB == null) {
            b0(5);
        }
        return annotationsB;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public ClassKind getKind() {
        ClassKind classKind = this.i;
        if (classKind == null) {
            b0(8);
        }
        return classKind;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.m, kotlin.reflect.jvm.internal.impl.descriptors.q
    public m0 getVisibility() {
        m0 m0Var = this.l;
        if (m0Var == null) {
            b0(10);
        }
        return m0Var;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f
    public f0 i() {
        f0 f0Var = this.m;
        if (f0Var == null) {
            b0(11);
        }
        return f0Var;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isInline() {
        return false;
    }

    public void k0() {
        this.m = new kotlin.reflect.jvm.internal.impl.types.h(this, this.n, this.o, this.p);
        Iterator<kotlin.reflect.jvm.internal.impl.descriptors.c> it = f().iterator();
        while (it.hasNext()) {
            ((ClassConstructorDescriptorImpl) it.next()).U0(n());
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.g
    public List<i0> o() {
        List<i0> list = this.n;
        if (list == null) {
            b0(15);
        }
        return list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.q
    public Modality p() {
        Modality modality = this.k;
        if (modality == null) {
            b0(7);
        }
        return modality;
    }

    public String toString() {
        return DeclarationDescriptorImpl.toString(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> v() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList == null) {
            b0(19);
        }
        return listEmptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public boolean x() {
        return this.j;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    /* JADX INFO: renamed from: z0, reason: merged with bridge method [inline-methods] */
    public Set<kotlin.reflect.jvm.internal.impl.descriptors.c> f() {
        Set<kotlin.reflect.jvm.internal.impl.descriptors.c> setEmptySet = Collections.emptySet();
        if (setEmptySet == null) {
            b0(13);
        }
        return setEmptySet;
    }
}
