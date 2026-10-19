package kotlin.reflect.jvm.internal.impl.resolve;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.kidoz.sdk.api.players.web_player.WebPreferenceConstants;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.e;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.a0;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.e0;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.k0;
import kotlin.reflect.jvm.internal.impl.descriptors.l;
import kotlin.reflect.jvm.internal.impl.descriptors.m;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.name.SpecialNames;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: loaded from: classes5.dex */
public class DescriptorUtils {
    public static final Name a = Name.identifier("values");
    public static final Name b = Name.identifier("valueOf");
    public static final FqName c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final FqName f9742d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final FqName f9743e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final FqName f9744f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final FqName f9745g;
    public static final FqName h;
    public static final FqName i;

    static {
        FqName fqName = new FqName("kotlin.coroutines");
        c = fqName;
        FqName fqNameC = fqName.c(Name.identifier("experimental"));
        f9742d = fqNameC;
        f9743e = fqNameC.c(Name.identifier("intrinsics"));
        f9744f = fqNameC.c(Name.identifier("Continuation"));
        f9745g = fqName.c(Name.identifier("Continuation"));
        h = new FqName("kotlin.Result");
        i = new FqName("kotlin.jvm.JvmName");
    }

    private DescriptorUtils() {
    }

    private static /* synthetic */ void a(int i2) {
        String str;
        int i3;
        switch (i2) {
            case 4:
            case 7:
            case 9:
            case 10:
            case 20:
            case 38:
            case 40:
            case 41:
            case 45:
            case 47:
            case 48:
            case 49:
            case 56:
            case 58:
            case 65:
            case 69:
            case 75:
            case 76:
            case 78:
            case 81:
            case 86:
            case 88:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i2) {
            case 4:
            case 7:
            case 9:
            case 10:
            case 20:
            case 38:
            case 40:
            case 41:
            case 45:
            case 47:
            case 48:
            case 49:
            case 56:
            case 58:
            case 65:
            case 69:
            case 75:
            case 76:
            case 78:
            case 81:
            case 86:
            case 88:
                i3 = 2;
                break;
            default:
                i3 = 3;
                break;
        }
        Object[] objArr = new Object[i3];
        switch (i2) {
            case 1:
            case 2:
            case 3:
            case 5:
            case 6:
            case 8:
            case 11:
            case 12:
            case 13:
            case 19:
            case 21:
            case 22:
            case 32:
            case 33:
            case 34:
            case 53:
            case 54:
            case 55:
            case 57:
            case 74:
            case 87:
            case 89:
                objArr[0] = "descriptor";
                break;
            case 4:
            case 7:
            case 9:
            case 10:
            case 20:
            case 38:
            case 40:
            case 41:
            case 45:
            case 47:
            case 48:
            case 49:
            case 56:
            case 58:
            case 65:
            case 69:
            case 75:
            case 76:
            case 78:
            case 81:
            case 86:
            case 88:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils";
                break;
            case 14:
                objArr[0] = "first";
                break;
            case 15:
                objArr[0] = "second";
                break;
            case 16:
            case 17:
                objArr[0] = "aClass";
                break;
            case 18:
                objArr[0] = "kotlinType";
                break;
            case 23:
                objArr[0] = "declarationDescriptor";
                break;
            case 24:
            case 26:
                objArr[0] = "subClass";
                break;
            case 25:
            case 27:
            case 31:
                objArr[0] = "superClass";
                break;
            case 28:
            case 30:
            case 43:
            case 60:
                objArr[0] = "type";
                break;
            case 29:
                objArr[0] = "other";
                break;
            case 35:
                objArr[0] = "classKind";
                break;
            case 36:
            case 37:
            case 39:
            case 42:
            case 46:
            case 50:
            case 61:
            case 62:
            case 63:
            case 70:
            case 71:
                objArr[0] = "classDescriptor";
                break;
            case 44:
                objArr[0] = "typeConstructor";
                break;
            case 51:
                objArr[0] = "innerClassName";
                break;
            case 52:
                objArr[0] = WebPreferenceConstants.LOCATION;
                break;
            case 59:
                objArr[0] = "variable";
                break;
            case 64:
                objArr[0] = InneractiveMediationDefs.GENDER_FEMALE;
                break;
            case 66:
                objArr[0] = "current";
                break;
            case 67:
                objArr[0] = "result";
                break;
            case 68:
                objArr[0] = "memberDescriptor";
                break;
            case 72:
            case 73:
                objArr[0] = "annotated";
                break;
            case 77:
            case 79:
            case 82:
            case 84:
                objArr[0] = "scope";
                break;
            case 80:
            case 83:
            case 85:
                objArr[0] = "name";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i2) {
            case 4:
                objArr[1] = "getFqNameSafe";
                break;
            case 7:
                objArr[1] = "getFqNameUnsafe";
                break;
            case 9:
            case 10:
                objArr[1] = "getFqNameFromTopLevelClass";
                break;
            case 20:
                objArr[1] = "getContainingModule";
                break;
            case 38:
                objArr[1] = "getSuperclassDescriptors";
                break;
            case 40:
            case 41:
                objArr[1] = "getSuperClassType";
                break;
            case 45:
                objArr[1] = "getClassDescriptorForTypeConstructor";
                break;
            case 47:
            case 48:
            case 49:
                objArr[1] = "getDefaultConstructorVisibility";
                break;
            case 56:
                objArr[1] = "unwrapFakeOverride";
                break;
            case 58:
                objArr[1] = "unwrapFakeOverrideToAnyDeclaration";
                break;
            case 65:
                objArr[1] = "getAllOverriddenDescriptors";
                break;
            case 69:
                objArr[1] = "getAllOverriddenDeclarations";
                break;
            case 75:
            case 76:
                objArr[1] = "getContainingSourceFile";
                break;
            case 78:
                objArr[1] = "getAllDescriptors";
                break;
            case 81:
                objArr[1] = "getFunctionByName";
                break;
            case 86:
                objArr[1] = "getPropertyByName";
                break;
            case 88:
                objArr[1] = "getDirectMember";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils";
                break;
        }
        switch (i2) {
            case 1:
                objArr[2] = "isLocal";
                break;
            case 2:
                objArr[2] = "getFqName";
                break;
            case 3:
                objArr[2] = "getFqNameSafe";
                break;
            case 4:
            case 7:
            case 9:
            case 10:
            case 20:
            case 38:
            case 40:
            case 41:
            case 45:
            case 47:
            case 48:
            case 49:
            case 56:
            case 58:
            case 65:
            case 69:
            case 75:
            case 76:
            case 78:
            case 81:
            case 86:
            case 88:
                break;
            case 5:
                objArr[2] = "getFqNameSafeIfPossible";
                break;
            case 6:
                objArr[2] = "getFqNameUnsafe";
                break;
            case 8:
                objArr[2] = "getFqNameFromTopLevelClass";
                break;
            case 11:
                objArr[2] = "isExtension";
                break;
            case 12:
                objArr[2] = "isOverride";
                break;
            case 13:
                objArr[2] = "isStaticDeclaration";
                break;
            case 14:
            case 15:
                objArr[2] = "areInSameModule";
                break;
            case 16:
            case 17:
                objArr[2] = "getParentOfType";
                break;
            case 18:
            case 21:
                objArr[2] = "getContainingModuleOrNull";
                break;
            case 19:
                objArr[2] = "getContainingModule";
                break;
            case 22:
                objArr[2] = "getContainingClass";
                break;
            case 23:
                objArr[2] = "isAncestor";
                break;
            case 24:
            case 25:
                objArr[2] = "isDirectSubclass";
                break;
            case 26:
            case 27:
                objArr[2] = "isSubclass";
                break;
            case 28:
            case 29:
                objArr[2] = "isSameClass";
                break;
            case 30:
            case 31:
                objArr[2] = "isSubtypeOfClass";
                break;
            case 32:
                objArr[2] = "isAnonymousObject";
                break;
            case 33:
                objArr[2] = "isAnonymousFunction";
                break;
            case 34:
                objArr[2] = "isEnumEntry";
                break;
            case 35:
                objArr[2] = "isKindOf";
                break;
            case 36:
                objArr[2] = "hasAbstractMembers";
                break;
            case 37:
                objArr[2] = "getSuperclassDescriptors";
                break;
            case 39:
                objArr[2] = "getSuperClassType";
                break;
            case 42:
                objArr[2] = "getSuperClassDescriptor";
                break;
            case 43:
                objArr[2] = "getClassDescriptorForType";
                break;
            case 44:
                objArr[2] = "getClassDescriptorForTypeConstructor";
                break;
            case 46:
                objArr[2] = "getDefaultConstructorVisibility";
                break;
            case 50:
            case 51:
            case 52:
                objArr[2] = "getInnerClassByName";
                break;
            case 53:
                objArr[2] = "isStaticNestedClass";
                break;
            case 54:
                objArr[2] = "isTopLevelOrInnerClass";
                break;
            case 55:
                objArr[2] = "unwrapFakeOverride";
                break;
            case 57:
                objArr[2] = "unwrapFakeOverrideToAnyDeclaration";
                break;
            case 59:
            case 60:
                objArr[2] = "shouldRecordInitializerForProperty";
                break;
            case 61:
                objArr[2] = "classCanHaveAbstractFakeOverride";
                break;
            case 62:
                objArr[2] = "classCanHaveAbstractDeclaration";
                break;
            case 63:
                objArr[2] = "classCanHaveOpenMembers";
                break;
            case 64:
                objArr[2] = "getAllOverriddenDescriptors";
                break;
            case 66:
            case 67:
                objArr[2] = "collectAllOverriddenDescriptors";
                break;
            case 68:
                objArr[2] = "getAllOverriddenDeclarations";
                break;
            case 70:
                objArr[2] = "isSingletonOrAnonymousObject";
                break;
            case 71:
                objArr[2] = "canHaveDeclaredConstructors";
                break;
            case 72:
                objArr[2] = "getJvmName";
                break;
            case 73:
                objArr[2] = "findJvmNameAnnotation";
                break;
            case 74:
                objArr[2] = "getContainingSourceFile";
                break;
            case 77:
                objArr[2] = "getAllDescriptors";
                break;
            case 79:
            case 80:
                objArr[2] = "getFunctionByName";
                break;
            case 82:
            case 83:
                objArr[2] = "getFunctionByNameOrNull";
                break;
            case 84:
            case 85:
                objArr[2] = "getPropertyByName";
                break;
            case 87:
                objArr[2] = "getDirectMember";
                break;
            case 89:
                objArr[2] = "isMethodOfAny";
                break;
            default:
                objArr[2] = "getDispatchReceiverParameterIfNeeded";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i2) {
            case 4:
            case 7:
            case 9:
            case 10:
            case 20:
            case 38:
            case 40:
            case 41:
            case 45:
            case 47:
            case 48:
            case 49:
            case 56:
            case 58:
            case 65:
            case 69:
            case 75:
            case 76:
            case 78:
            case 81:
            case 86:
            case 88:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public static boolean areInSameModule(i iVar, i iVar2) {
        if (iVar == null) {
            a(14);
        }
        if (iVar2 == null) {
            a(15);
        }
        return getContainingModule(iVar).equals(getContainingModule(iVar2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <D extends kotlin.reflect.jvm.internal.impl.descriptors.a> void b(D d2, Set<D> set) {
        if (d2 == null) {
            a(66);
        }
        if (set == 0) {
            a(67);
        }
        if (set.contains(d2)) {
            return;
        }
        Iterator<? extends kotlin.reflect.jvm.internal.impl.descriptors.a> it = d2.a().d().iterator();
        while (it.hasNext()) {
            kotlin.reflect.jvm.internal.impl.descriptors.a aVarA = it.next().a();
            b(aVarA, set);
            set.add(aVarA);
        }
    }

    private static FqName c(i iVar) {
        if (iVar == null) {
            a(5);
        }
        if ((iVar instanceof ModuleDescriptor) || ErrorUtils.isError(iVar)) {
            return FqName.a;
        }
        if (iVar instanceof PackageViewDescriptor) {
            return ((PackageViewDescriptor) iVar).e();
        }
        if (iVar instanceof s) {
            return ((s) iVar).e();
        }
        return null;
    }

    private static FqNameUnsafe d(i iVar) {
        if (iVar == null) {
            a(6);
        }
        FqNameUnsafe fqNameUnsafeC = getFqName(iVar.b()).c(iVar.getName());
        if (fqNameUnsafeC == null) {
            a(7);
        }
        return fqNameUnsafeC;
    }

    private static boolean e(i iVar, ClassKind classKind) {
        if (classKind == null) {
            a(35);
        }
        return (iVar instanceof d) && ((d) iVar).getKind() == classKind;
    }

    private static boolean f(u uVar, i iVar) {
        if (uVar == null) {
            a(28);
        }
        if (iVar == null) {
            a(29);
        }
        f fVarC = uVar.H0().q();
        if (fVarC == null) {
            return false;
        }
        i iVarA = fVarC.a();
        return (iVarA instanceof f) && (iVar instanceof f) && ((f) iVar).i().equals(((f) iVarA).i());
    }

    public static <D extends kotlin.reflect.jvm.internal.impl.descriptors.a> Set<D> getAllOverriddenDescriptors(D d2) {
        if (d2 == null) {
            a(64);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        b(d2.a(), linkedHashSet);
        return linkedHashSet;
    }

    public static d getClassDescriptorForType(u uVar) {
        if (uVar == null) {
            a(43);
        }
        return getClassDescriptorForTypeConstructor(uVar.H0());
    }

    public static d getClassDescriptorForTypeConstructor(f0 f0Var) {
        if (f0Var == null) {
            a(44);
        }
        d dVar = (d) f0Var.q();
        if (dVar == null) {
            a(45);
        }
        return dVar;
    }

    public static ModuleDescriptor getContainingModule(i iVar) {
        if (iVar == null) {
            a(19);
        }
        ModuleDescriptor containingModuleOrNull = getContainingModuleOrNull(iVar);
        if (containingModuleOrNull == null) {
            a(20);
        }
        return containingModuleOrNull;
    }

    public static ModuleDescriptor getContainingModuleOrNull(i iVar) {
        if (iVar == null) {
            a(21);
        }
        while (iVar != null) {
            if (iVar instanceof ModuleDescriptor) {
                return (ModuleDescriptor) iVar;
            }
            if (iVar instanceof PackageViewDescriptor) {
                return ((PackageViewDescriptor) iVar).v0();
            }
            iVar = iVar.b();
        }
        return null;
    }

    public static ModuleDescriptor getContainingModuleOrNull(u uVar) {
        if (uVar == null) {
            a(18);
        }
        f fVarC = uVar.H0().q();
        if (fVarC == null) {
            return null;
        }
        return getContainingModuleOrNull(fVarC);
    }

    public static e0 getContainingSourceFile(i iVar) {
        if (iVar == null) {
            a(74);
        }
        if (iVar instanceof a0) {
            iVar = ((a0) iVar).P();
        }
        if (iVar instanceof l) {
            e0 e0VarB = ((l) iVar).getSource().b();
            if (e0VarB == null) {
                a(75);
            }
            return e0VarB;
        }
        e0 e0Var = e0.a;
        if (e0Var == null) {
            a(76);
        }
        return e0Var;
    }

    public static m0 getDefaultConstructorVisibility(d dVar) {
        if (dVar == null) {
            a(46);
        }
        ClassKind kind = dVar.getKind();
        if (kind == ClassKind.ENUM_CLASS || kind.e() || isSealedClass(dVar)) {
            m0 m0Var = Visibilities.a;
            if (m0Var == null) {
                a(47);
            }
            return m0Var;
        }
        if (isAnonymousObject(dVar)) {
            m0 m0Var2 = Visibilities.l;
            if (m0Var2 == null) {
                a(48);
            }
            return m0Var2;
        }
        m0 m0Var3 = Visibilities.f9100e;
        if (m0Var3 == null) {
            a(49);
        }
        return m0Var3;
    }

    public static b0 getDispatchReceiverParameterIfNeeded(i iVar) {
        if (iVar == null) {
            a(0);
        }
        if (iVar instanceof d) {
            return ((d) iVar).E0();
        }
        return null;
    }

    public static FqNameUnsafe getFqName(i iVar) {
        if (iVar == null) {
            a(2);
        }
        FqName fqNameC = c(iVar);
        return fqNameC != null ? fqNameC.j() : d(iVar);
    }

    public static FqName getFqNameSafe(i iVar) {
        if (iVar == null) {
            a(3);
        }
        FqName fqNameC = c(iVar);
        if (fqNameC == null) {
            fqNameC = d(iVar).l();
        }
        if (fqNameC == null) {
            a(4);
        }
        return fqNameC;
    }

    public static <D extends i> D getParentOfType(i iVar, Class<D> cls) {
        if (cls == null) {
            a(16);
        }
        return (D) getParentOfType(iVar, cls, true);
    }

    public static <D extends i> D getParentOfType(i iVar, Class<D> cls, boolean z) {
        if (cls == null) {
            a(17);
        }
        if (iVar == null) {
            return null;
        }
        if (z) {
            iVar = (D) iVar.b();
        }
        while (iVar != null) {
            if (cls.isInstance(iVar)) {
                return (D) iVar;
            }
            iVar = (D) iVar.b();
        }
        return null;
    }

    public static d getSuperClassDescriptor(d dVar) {
        if (dVar == null) {
            a(42);
        }
        Iterator<u> it = dVar.i().h().iterator();
        while (it.hasNext()) {
            d classDescriptorForType = getClassDescriptorForType(it.next());
            if (classDescriptorForType.getKind() != ClassKind.INTERFACE) {
                return classDescriptorForType;
            }
        }
        return null;
    }

    public static boolean isAnnotationClass(i iVar) {
        return e(iVar, ClassKind.ANNOTATION_CLASS);
    }

    public static boolean isAnonymousObject(i iVar) {
        if (iVar == null) {
            a(32);
        }
        return isClass(iVar) && iVar.getName().equals(SpecialNames.a);
    }

    public static boolean isClass(i iVar) {
        return e(iVar, ClassKind.CLASS);
    }

    public static boolean isClassOrEnumClass(i iVar) {
        return isClass(iVar) || isEnumClass(iVar);
    }

    public static boolean isCompanionObject(i iVar) {
        return e(iVar, ClassKind.OBJECT) && ((d) iVar).U();
    }

    public static boolean isDescriptorWithLocalVisibility(i iVar) {
        return (iVar instanceof m) && ((m) iVar).getVisibility() == Visibilities.f9101f;
    }

    public static boolean isDirectSubclass(d dVar, d dVar2) {
        if (dVar == null) {
            a(24);
        }
        if (dVar2 == null) {
            a(25);
        }
        Iterator<u> it = dVar.i().h().iterator();
        while (it.hasNext()) {
            if (f(it.next(), dVar2.a())) {
                return true;
            }
        }
        return false;
    }

    public static boolean isEnumClass(i iVar) {
        return e(iVar, ClassKind.ENUM_CLASS);
    }

    public static boolean isEnumEntry(i iVar) {
        if (iVar == null) {
            a(34);
        }
        return e(iVar, ClassKind.ENUM_ENTRY);
    }

    public static boolean isInterface(i iVar) {
        return e(iVar, ClassKind.INTERFACE);
    }

    public static boolean isLocal(i iVar) {
        if (iVar == null) {
            a(1);
        }
        while (iVar != null) {
            if (isAnonymousObject(iVar) || isDescriptorWithLocalVisibility(iVar)) {
                return true;
            }
            iVar = iVar.b();
        }
        return false;
    }

    public static boolean isSealedClass(i iVar) {
        return e(iVar, ClassKind.CLASS) && ((d) iVar).p() == Modality.SEALED;
    }

    public static boolean isSubclass(d dVar, d dVar2) {
        if (dVar == null) {
            a(26);
        }
        if (dVar2 == null) {
            a(27);
        }
        return isSubtypeOfClass(dVar.n(), dVar2.a());
    }

    public static boolean isSubtypeOfClass(u uVar, i iVar) {
        if (uVar == null) {
            a(30);
        }
        if (iVar == null) {
            a(31);
        }
        if (f(uVar, iVar)) {
            return true;
        }
        Iterator<u> it = uVar.H0().h().iterator();
        while (it.hasNext()) {
            if (isSubtypeOfClass(it.next(), iVar)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isTopLevelDeclaration(i iVar) {
        return iVar != null && (iVar.b() instanceof s);
    }

    public static boolean shouldRecordInitializerForProperty(k0 k0Var, u uVar) {
        if (k0Var == null) {
            a(59);
        }
        if (uVar == null) {
            a(60);
        }
        if (k0Var.J() || KotlinTypeKt.isError(uVar)) {
            return false;
        }
        if (TypeUtils.acceptsNullable(uVar)) {
            return true;
        }
        KotlinBuiltIns builtIns = DescriptorUtilsKt.getBuiltIns(k0Var);
        if (!KotlinBuiltIns.isPrimitiveType(uVar)) {
            kotlin.reflect.jvm.internal.impl.types.checker.c cVar = kotlin.reflect.jvm.internal.impl.types.checker.c.a;
            if (!cVar.b(builtIns.T(), uVar) && !cVar.b(builtIns.K().n(), uVar) && !cVar.b(builtIns.j(), uVar) && !e.f9061e.d(uVar)) {
                return false;
            }
        }
        return true;
    }

    public static <D extends CallableMemberDescriptor> D unwrapFakeOverride(D d2) {
        if (d2 == null) {
            a(55);
        }
        while (d2.getKind() == CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
            Collection<? extends CallableMemberDescriptor> collectionD = d2.d();
            if (collectionD.isEmpty()) {
                throw new IllegalStateException("Fake override should have at least one overridden descriptor: " + d2);
            }
            d2 = (D) collectionD.iterator().next();
        }
        return d2;
    }

    public static <D extends m> D unwrapFakeOverrideToAnyDeclaration(D d2) {
        if (d2 == null) {
            a(57);
        }
        if (d2 instanceof CallableMemberDescriptor) {
            return unwrapFakeOverride((CallableMemberDescriptor) d2);
        }
        if (d2 == null) {
            a(58);
        }
        return d2;
    }
}
