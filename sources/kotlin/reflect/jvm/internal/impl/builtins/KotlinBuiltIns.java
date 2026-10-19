package kotlin.reflect.jvm.internal.impl.builtins;

import com.json.mediationsdk.utils.IronSourceConstants;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.builtins.functions.BuiltInFictitiousFunctionClassFactory;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a0;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.a;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.c;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.storage.h;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.i0;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.types.y;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;

/* JADX INFO: loaded from: classes5.dex */
public abstract class KotlinBuiltIns {
    public static final Name a;
    public static final FqName b;
    private static final FqName c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final FqName f9037d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final FqName f9038e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final FqName f9039f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Set<FqName> f9040g;
    public static final e h;
    public static final Name i;
    private ModuleDescriptorImpl j;
    private final kotlin.reflect.jvm.internal.impl.storage.e<f> k;
    private final kotlin.reflect.jvm.internal.impl.storage.e<Collection<PackageViewDescriptor>> l;
    private final kotlin.reflect.jvm.internal.impl.storage.b<Name, kotlin.reflect.jvm.internal.impl.descriptors.d> m;
    private final h n;

    class a implements Function0<Collection<PackageViewDescriptor>> {
        a() {
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Collection<PackageViewDescriptor> invoke() {
            return Arrays.asList(KotlinBuiltIns.this.j.d0(KotlinBuiltIns.b), KotlinBuiltIns.this.j.d0(KotlinBuiltIns.f9037d), KotlinBuiltIns.this.j.d0(KotlinBuiltIns.f9038e), KotlinBuiltIns.this.j.d0(KotlinBuiltIns.c));
        }
    }

    class b implements Function0<f> {
        b() {
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public f invoke() {
            EnumMap enumMap = new EnumMap(PrimitiveType.class);
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            for (PrimitiveType primitiveType : PrimitiveType.values()) {
                y yVarQ = KotlinBuiltIns.this.q(primitiveType.h().e());
                y yVarQ2 = KotlinBuiltIns.this.q(primitiveType.f().e());
                enumMap.put(primitiveType, yVarQ2);
                map.put(yVarQ, yVarQ2);
                map2.put(yVarQ2, yVarQ);
            }
            return new f(enumMap, map, map2, null);
        }
    }

    class c implements Function1<Name, kotlin.reflect.jvm.internal.impl.descriptors.d> {
        c() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public kotlin.reflect.jvm.internal.impl.descriptors.d invoke(Name name) {
            kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = KotlinBuiltIns.this.s().c(name, NoLookupLocation.FROM_BUILTINS);
            if (fVarC == null) {
                throw new AssertionError("Built-in class " + KotlinBuiltIns.b.c(name) + " is not found");
            }
            if (fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
                return (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC;
            }
            throw new AssertionError("Must be a class descriptor " + name + ", but was " + fVarC);
        }
    }

    class d implements Function0<Void> {
        final /* synthetic */ ModuleDescriptorImpl a;

        d(ModuleDescriptorImpl moduleDescriptorImpl) {
            this.a = moduleDescriptorImpl;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void invoke() {
            if (KotlinBuiltIns.this.j == null) {
                KotlinBuiltIns.this.j = this.a;
                return null;
            }
            throw new AssertionError("Built-ins module is already set: " + KotlinBuiltIns.this.j + " (attempting to reset to " + this.a + ")");
        }
    }

    public static class e {
        public final FqName R;
        public final FqName S;
        public final FqName T;
        public final FqName U;
        public final FqName V;
        public final FqName W;
        public final FqName X;
        public final FqName Y;
        public final FqName Z;
        public final FqName a0;
        public final FqNameUnsafe b0;
        public final FqNameUnsafe c0;
        public final FqNameUnsafe d0;
        public final FqNameUnsafe e0;
        public final FqNameUnsafe f0;
        public final FqNameUnsafe g0;
        public final FqNameUnsafe h0;
        public final FqNameUnsafe i0;
        public final FqNameUnsafe j0;
        public final FqNameUnsafe k0;
        public final ClassId l0;
        public final FqNameUnsafe m0;
        public final FqName n0;
        public final FqName o0;
        public final FqName p0;
        public final FqName q0;
        public final ClassId r0;
        public final ClassId s0;
        public final ClassId t0;
        public final ClassId u0;
        public final Set<Name> v0;
        public final Set<Name> w0;
        public final Map<FqNameUnsafe, PrimitiveType> x0;
        public final Map<FqNameUnsafe, PrimitiveType> y0;
        public final FqNameUnsafe a = e("Any");
        public final FqNameUnsafe b = e("Nothing");
        public final FqNameUnsafe c = e("Cloneable");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final FqName f9041d = d("Suppress");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final FqNameUnsafe f9042e = e("Unit");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final FqNameUnsafe f9043f = e("CharSequence");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final FqNameUnsafe f9044g = e("String");
        public final FqNameUnsafe h = e("Array");
        public final FqNameUnsafe i = e("Boolean");
        public final FqNameUnsafe j = e("Char");
        public final FqNameUnsafe k = e("Byte");
        public final FqNameUnsafe l = e("Short");
        public final FqNameUnsafe m = e("Int");
        public final FqNameUnsafe n = e("Long");
        public final FqNameUnsafe o = e("Float");
        public final FqNameUnsafe p = e("Double");
        public final FqNameUnsafe q = e("Number");
        public final FqNameUnsafe r = e("Enum");
        public final FqNameUnsafe s = e("Function");
        public final FqName t = d("Throwable");
        public final FqName u = d("Comparable");
        public final FqNameUnsafe v = f("IntRange");
        public final FqNameUnsafe w = f("LongRange");
        public final FqName x = d("Deprecated");
        public final FqName y = d("DeprecationLevel");
        public final FqName z = d("ReplaceWith");
        public final FqName A = d("ExtensionFunctionType");
        public final FqName B = d("ParameterName");
        public final FqName C = d("Annotation");
        public final FqName D = b("Target");
        public final FqName E = b("AnnotationTarget");
        public final FqName F = b("AnnotationRetention");
        public final FqName G = b("Retention");
        public final FqName H = b("Repeatable");
        public final FqName I = b("MustBeDocumented");
        public final FqName J = d("UnsafeVariance");
        public final FqName K = d("PublishedApi");
        public final FqName L = c("Iterator");
        public final FqName M = c("Iterable");
        public final FqName N = c("Collection");
        public final FqName O = c("List");
        public final FqName P = c("ListIterator");
        public final FqName Q = c("Set");

        public e() {
            FqName fqNameC = c("Map");
            this.R = fqNameC;
            this.S = fqNameC.c(Name.identifier("Entry"));
            this.T = c("MutableIterator");
            this.U = c("MutableIterable");
            this.V = c("MutableCollection");
            this.W = c("MutableList");
            this.X = c("MutableListIterator");
            this.Y = c("MutableSet");
            FqName fqNameC2 = c("MutableMap");
            this.Z = fqNameC2;
            this.a0 = fqNameC2.c(Name.identifier("MutableEntry"));
            this.b0 = g("KClass");
            this.c0 = g("KCallable");
            this.d0 = g("KProperty0");
            this.e0 = g("KProperty1");
            this.f0 = g("KProperty2");
            this.g0 = g("KMutableProperty0");
            this.h0 = g("KMutableProperty1");
            this.i0 = g("KMutableProperty2");
            FqNameUnsafe fqNameUnsafeG = g("KProperty");
            this.j0 = fqNameUnsafeG;
            this.k0 = g("KMutableProperty");
            this.l0 = ClassId.topLevel(fqNameUnsafeG.l());
            this.m0 = g("KDeclarationContainer");
            FqName fqNameD = d("UByte");
            this.n0 = fqNameD;
            FqName fqNameD2 = d("UShort");
            this.o0 = fqNameD2;
            FqName fqNameD3 = d("UInt");
            this.p0 = fqNameD3;
            FqName fqNameD4 = d("ULong");
            this.q0 = fqNameD4;
            this.r0 = ClassId.topLevel(fqNameD);
            this.s0 = ClassId.topLevel(fqNameD2);
            this.t0 = ClassId.topLevel(fqNameD3);
            this.u0 = ClassId.topLevel(fqNameD4);
            this.v0 = CollectionsKt.newHashSetWithExpectedSize(PrimitiveType.values().length);
            this.w0 = CollectionsKt.newHashSetWithExpectedSize(PrimitiveType.values().length);
            this.x0 = CollectionsKt.newHashMapWithExpectedSize(PrimitiveType.values().length);
            this.y0 = CollectionsKt.newHashMapWithExpectedSize(PrimitiveType.values().length);
            for (PrimitiveType primitiveType : PrimitiveType.values()) {
                this.v0.add(primitiveType.h());
                this.w0.add(primitiveType.f());
                this.x0.put(e(primitiveType.h().e()), primitiveType);
                this.y0.put(e(primitiveType.f().e()), primitiveType);
            }
        }

        private static /* synthetic */ void a(int i) {
            String str = (i == 1 || i == 3 || i == 5 || i == 7 || i == 9 || i == 11) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 1 || i == 3 || i == 5 || i == 7 || i == 9 || i == 11) ? 2 : 3];
            if (i == 1 || i == 3 || i == 5 || i == 7 || i == 9 || i == 11) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns$FqNames";
            } else {
                objArr[0] = "simpleName";
            }
            if (i == 1) {
                objArr[1] = "fqNameUnsafe";
            } else if (i == 3) {
                objArr[1] = "fqName";
            } else if (i == 5) {
                objArr[1] = "collectionsFqName";
            } else if (i == 7) {
                objArr[1] = "rangesFqName";
            } else if (i == 9) {
                objArr[1] = "reflect";
            } else if (i != 11) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns$FqNames";
            } else {
                objArr[1] = "annotationName";
            }
            switch (i) {
                case 1:
                case 3:
                case 5:
                case 7:
                case 9:
                case 11:
                    break;
                case 2:
                    objArr[2] = "fqName";
                    break;
                case 4:
                    objArr[2] = "collectionsFqName";
                    break;
                case 6:
                    objArr[2] = "rangesFqName";
                    break;
                case 8:
                    objArr[2] = "reflect";
                    break;
                case 10:
                    objArr[2] = "annotationName";
                    break;
                default:
                    objArr[2] = "fqNameUnsafe";
                    break;
            }
            String str2 = String.format(str, objArr);
            if (i != 1 && i != 3 && i != 5 && i != 7 && i != 9 && i != 11) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        private static FqName b(String str) {
            if (str == null) {
                a(10);
            }
            FqName fqNameC = KotlinBuiltIns.c.c(Name.identifier(str));
            if (fqNameC == null) {
                a(11);
            }
            return fqNameC;
        }

        private static FqName c(String str) {
            if (str == null) {
                a(4);
            }
            FqName fqNameC = KotlinBuiltIns.f9037d.c(Name.identifier(str));
            if (fqNameC == null) {
                a(5);
            }
            return fqNameC;
        }

        private static FqName d(String str) {
            if (str == null) {
                a(2);
            }
            FqName fqNameC = KotlinBuiltIns.b.c(Name.identifier(str));
            if (fqNameC == null) {
                a(3);
            }
            return fqNameC;
        }

        private static FqNameUnsafe e(String str) {
            if (str == null) {
                a(0);
            }
            FqNameUnsafe fqNameUnsafeJ = d(str).j();
            if (fqNameUnsafeJ == null) {
                a(1);
            }
            return fqNameUnsafeJ;
        }

        private static FqNameUnsafe f(String str) {
            if (str == null) {
                a(6);
            }
            FqNameUnsafe fqNameUnsafeJ = KotlinBuiltIns.f9038e.c(Name.identifier(str)).j();
            if (fqNameUnsafeJ == null) {
                a(7);
            }
            return fqNameUnsafeJ;
        }

        private static FqNameUnsafe g(String str) {
            if (str == null) {
                a(8);
            }
            FqNameUnsafe fqNameUnsafeJ = ReflectionTypesKt.getKOTLIN_REFLECT_FQ_NAME().c(Name.identifier(str)).j();
            if (fqNameUnsafeJ == null) {
                a(9);
            }
            return fqNameUnsafeJ;
        }
    }

    private static class f {
        public final Map<PrimitiveType, y> a;
        public final Map<u, y> b;
        public final Map<y, y> c;

        private f(Map<PrimitiveType, y> map, Map<u, y> map2, Map<y, y> map3) {
            if (map == null) {
                a(0);
            }
            if (map2 == null) {
                a(1);
            }
            if (map3 == null) {
                a(2);
            }
            this.a = map;
            this.b = map2;
            this.c = map3;
        }

        /* synthetic */ f(Map map, Map map2, Map map3, a aVar) {
            this(map, map2, map3);
        }

        private static /* synthetic */ void a(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "primitiveKotlinTypeToKotlinArrayType";
            } else if (i != 2) {
                objArr[0] = "primitiveTypeToArrayKotlinType";
            } else {
                objArr[0] = "kotlinArrayTypeToPrimitiveKotlinType";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns$Primitives";
            objArr[2] = "<init>";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }
    }

    static {
        Name nameIdentifier = Name.identifier("kotlin");
        a = nameIdentifier;
        FqName fqName = FqName.topLevel(nameIdentifier);
        b = fqName;
        FqName fqNameC = fqName.c(Name.identifier("annotation"));
        c = fqNameC;
        FqName fqNameC2 = fqName.c(Name.identifier("collections"));
        f9037d = fqNameC2;
        FqName fqNameC3 = fqName.c(Name.identifier("ranges"));
        f9038e = fqNameC3;
        f9039f = fqName.c(Name.identifier("text"));
        f9040g = SetsKt__SetsKt.setOf((Object[]) new FqName[]{fqName, fqNameC2, fqNameC3, fqNameC, ReflectionTypesKt.getKOTLIN_REFLECT_FQ_NAME(), fqName.c(Name.identifier("internal")), DescriptorUtils.c});
        h = new e();
        i = Name.special("<built-ins module>");
    }

    protected KotlinBuiltIns(h hVar) {
        if (hVar == null) {
            a(0);
        }
        this.n = hVar;
        this.l = hVar.c(new a());
        this.k = hVar.c(new b());
        this.m = hVar.h(new c());
    }

    private static u A(u uVar, ModuleDescriptor moduleDescriptor) {
        ClassId classId;
        ClassId classIdA;
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarFindClassAcrossModuleDependencies;
        if (uVar == null) {
            a(70);
        }
        if (moduleDescriptor == null) {
            a(71);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = uVar.H0().q();
        if (fVarC == null) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.builtins.e eVar = kotlin.reflect.jvm.internal.impl.builtins.e.f9061e;
        if (!eVar.b(fVarC.getName()) || (classId = DescriptorUtilsKt.getClassId(fVarC)) == null || (classIdA = eVar.a(classId)) == null || (dVarFindClassAcrossModuleDependencies = FindClassInModuleKt.findClassAcrossModuleDependencies(moduleDescriptor, classIdA)) == null) {
            return null;
        }
        return dVarFindClassAcrossModuleDependencies.n();
    }

    private kotlin.reflect.jvm.internal.impl.descriptors.d O(PrimitiveType primitiveType) {
        if (primitiveType == null) {
            a(15);
        }
        return p(primitiveType.h().e());
    }

    private static boolean X(u uVar, FqNameUnsafe fqNameUnsafe) {
        if (uVar == null) {
            a(93);
        }
        if (fqNameUnsafe == null) {
            a(94);
        }
        return isTypeConstructorForGivenClass(uVar.H0(), fqNameUnsafe);
    }

    private static boolean Y(u uVar, FqNameUnsafe fqNameUnsafe) {
        if (uVar == null) {
            a(125);
        }
        if (fqNameUnsafe == null) {
            a(126);
        }
        return X(uVar, fqNameUnsafe) && !uVar.I0();
    }

    private static boolean Z(u uVar, FqNameUnsafe fqNameUnsafe) {
        if (uVar == null) {
            a(101);
        }
        if (fqNameUnsafe == null) {
            a(102);
        }
        return !uVar.I0() && X(uVar, fqNameUnsafe);
    }

    private static /* synthetic */ void a(int i2) {
        String str;
        int i3;
        switch (i2) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 10:
            case 12:
            case 14:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 67:
            case 68:
            case 69:
            case 73:
            case 80:
            case 82:
            case 83:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 8:
            case 9:
            case 11:
            case 13:
            case 15:
            case 16:
            case 45:
            case 52:
            case 66:
            case 70:
            case 71:
            case 72:
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 81:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i2) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 10:
            case 12:
            case 14:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 67:
            case 68:
            case 69:
            case 73:
            case 80:
            case 82:
            case 83:
                i3 = 2;
                break;
            case 8:
            case 9:
            case 11:
            case 13:
            case 15:
            case 16:
            case 45:
            case 52:
            case 66:
            case 70:
            case 71:
            case 72:
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 81:
            default:
                i3 = 3;
                break;
        }
        Object[] objArr = new Object[i3];
        switch (i2) {
            case 1:
            case 71:
                objArr[0] = "module";
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 10:
            case 12:
            case 14:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 67:
            case 68:
            case 69:
            case 73:
            case 80:
            case 82:
            case 83:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns";
                break;
            case 8:
            case 9:
            case 76:
            case 77:
            case 85:
            case 92:
            case 99:
            case 103:
            case 104:
            case 136:
            case 137:
            case 139:
            case 147:
            case 148:
            case 149:
                objArr[0] = "descriptor";
                break;
            case 11:
            case 94:
            case 96:
            case 98:
            case 100:
            case 102:
            case 126:
                objArr[0] = "fqName";
                break;
            case 13:
                objArr[0] = "simpleName";
                break;
            case 15:
            case 16:
            case 52:
            case 84:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
            case 93:
            case 95:
            case 101:
            case 105:
            case 106:
            case 107:
            case 109:
            case 110:
            case 111:
            case 112:
            case 113:
            case 114:
            case 115:
            case 116:
            case 117:
            case 118:
            case 119:
            case 120:
            case 121:
            case 122:
            case 123:
            case 124:
            case 125:
            case 127:
            case 128:
            case 129:
            case 130:
            case 131:
            case 132:
            case 133:
            case 134:
            case 135:
            case 138:
            case IronSourceConstants.USING_CACHE_FOR_INIT_EVENT /* 140 */:
            case 141:
            case 142:
            case 143:
            case 144:
            case 145:
            case 146:
            case 151:
                objArr[0] = "type";
                break;
            case 45:
                objArr[0] = "classSimpleName";
                break;
            case 66:
                objArr[0] = "arrayType";
                break;
            case 70:
                objArr[0] = "notNullArrayType";
                break;
            case 72:
            case 152:
                objArr[0] = "primitiveType";
                break;
            case 74:
                objArr[0] = "kotlinType";
                break;
            case 75:
                objArr[0] = "arrayFqName";
                break;
            case 78:
                objArr[0] = "projectionType";
                break;
            case 79:
            case 81:
                objArr[0] = "argument";
                break;
            case 97:
                objArr[0] = "typeConstructor";
                break;
            case 108:
                objArr[0] = "classDescriptor";
                break;
            case 150:
                objArr[0] = "declarationDescriptor";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        switch (i2) {
            case 2:
                objArr[1] = "getAdditionalClassPartsProvider";
                break;
            case 3:
                objArr[1] = "getPlatformDependentDeclarationFilter";
                break;
            case 4:
                objArr[1] = "getClassDescriptorFactories";
                break;
            case 5:
                objArr[1] = "getStorageManager";
                break;
            case 6:
                objArr[1] = "getBuiltInsModule";
                break;
            case 7:
                objArr[1] = "getBuiltInPackagesImportedByDefault";
                break;
            case 8:
            case 9:
            case 11:
            case 13:
            case 15:
            case 16:
            case 45:
            case 52:
            case 66:
            case 70:
            case 71:
            case 72:
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 81:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns";
                break;
            case 10:
                objArr[1] = "getBuiltInsPackageScope";
                break;
            case 12:
                objArr[1] = "getBuiltInClassByFqName";
                break;
            case 14:
                objArr[1] = "getBuiltInClassByName";
                break;
            case 17:
                objArr[1] = "getFunctionName";
                break;
            case 18:
                objArr[1] = "getSuspendFunction";
                break;
            case 19:
                objArr[1] = "getKClass";
                break;
            case 20:
                objArr[1] = "getKDeclarationContainer";
                break;
            case 21:
                objArr[1] = "getKCallable";
                break;
            case 22:
                objArr[1] = "getKProperty";
                break;
            case 23:
                objArr[1] = "getKProperty0";
                break;
            case 24:
                objArr[1] = "getKProperty1";
                break;
            case 25:
                objArr[1] = "getKProperty2";
                break;
            case 26:
                objArr[1] = "getKMutableProperty0";
                break;
            case 27:
                objArr[1] = "getKMutableProperty1";
                break;
            case 28:
                objArr[1] = "getKMutableProperty2";
                break;
            case 29:
                objArr[1] = "getIterator";
                break;
            case 30:
                objArr[1] = "getIterable";
                break;
            case 31:
                objArr[1] = "getMutableIterable";
                break;
            case 32:
                objArr[1] = "getMutableIterator";
                break;
            case 33:
                objArr[1] = "getCollection";
                break;
            case 34:
                objArr[1] = "getMutableCollection";
                break;
            case 35:
                objArr[1] = "getList";
                break;
            case 36:
                objArr[1] = "getMutableList";
                break;
            case 37:
                objArr[1] = "getSet";
                break;
            case 38:
                objArr[1] = "getMutableSet";
                break;
            case 39:
                objArr[1] = "getMap";
                break;
            case 40:
                objArr[1] = "getMutableMap";
                break;
            case 41:
                objArr[1] = "getMapEntry";
                break;
            case 42:
                objArr[1] = "getMutableMapEntry";
                break;
            case 43:
                objArr[1] = "getListIterator";
                break;
            case 44:
                objArr[1] = "getMutableListIterator";
                break;
            case 46:
                objArr[1] = "getBuiltInTypeByClassName";
                break;
            case 47:
                objArr[1] = "getNothingType";
                break;
            case 48:
                objArr[1] = "getNullableNothingType";
                break;
            case 49:
                objArr[1] = "getAnyType";
                break;
            case 50:
                objArr[1] = "getNullableAnyType";
                break;
            case 51:
                objArr[1] = "getDefaultBound";
                break;
            case 53:
                objArr[1] = "getPrimitiveKotlinType";
                break;
            case 54:
                objArr[1] = "getNumberType";
                break;
            case 55:
                objArr[1] = "getByteType";
                break;
            case 56:
                objArr[1] = "getShortType";
                break;
            case 57:
                objArr[1] = "getIntType";
                break;
            case 58:
                objArr[1] = "getLongType";
                break;
            case 59:
                objArr[1] = "getFloatType";
                break;
            case 60:
                objArr[1] = "getDoubleType";
                break;
            case 61:
                objArr[1] = "getCharType";
                break;
            case 62:
                objArr[1] = "getBooleanType";
                break;
            case 63:
                objArr[1] = "getUnitType";
                break;
            case 64:
                objArr[1] = "getStringType";
                break;
            case 65:
                objArr[1] = "getIterableType";
                break;
            case 67:
            case 68:
            case 69:
                objArr[1] = "getArrayElementType";
                break;
            case 73:
                objArr[1] = "getPrimitiveArrayKotlinType";
                break;
            case 80:
                objArr[1] = "getArrayType";
                break;
            case 82:
                objArr[1] = "getEnumType";
                break;
            case 83:
                objArr[1] = "getAnnotationType";
                break;
        }
        switch (i2) {
            case 1:
                objArr[2] = "setBuiltInsModule";
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 10:
            case 12:
            case 14:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 67:
            case 68:
            case 69:
            case 73:
            case 80:
            case 82:
            case 83:
                break;
            case 8:
                objArr[2] = "isBuiltIn";
                break;
            case 9:
                objArr[2] = "isUnderKotlinPackage";
                break;
            case 11:
                objArr[2] = "getBuiltInClassByFqName";
                break;
            case 13:
                objArr[2] = "getBuiltInClassByName";
                break;
            case 15:
                objArr[2] = "getPrimitiveClassDescriptor";
                break;
            case 16:
                objArr[2] = "getPrimitiveArrayClassDescriptor";
                break;
            case 45:
                objArr[2] = "getBuiltInTypeByClassName";
                break;
            case 52:
                objArr[2] = "getPrimitiveKotlinType";
                break;
            case 66:
                objArr[2] = "getArrayElementType";
                break;
            case 70:
            case 71:
                objArr[2] = "getElementTypeForUnsignedArray";
                break;
            case 72:
                objArr[2] = "getPrimitiveArrayKotlinType";
                break;
            case 74:
                objArr[2] = "getPrimitiveArrayKotlinTypeByPrimitiveKotlinType";
                break;
            case 75:
            case 87:
                objArr[2] = "isPrimitiveArray";
                break;
            case 76:
            case 89:
                objArr[2] = "getPrimitiveType";
                break;
            case 77:
                objArr[2] = "getPrimitiveArrayType";
                break;
            case 78:
            case 79:
                objArr[2] = "getArrayType";
                break;
            case 81:
                objArr[2] = "getEnumType";
                break;
            case 84:
                objArr[2] = "isArray";
                break;
            case 85:
            case 86:
                objArr[2] = "isArrayOrPrimitiveArray";
                break;
            case 88:
                objArr[2] = "getPrimitiveArrayElementType";
                break;
            case 90:
                objArr[2] = "isPrimitiveType";
                break;
            case 91:
                objArr[2] = "isPrimitiveTypeOrNullablePrimitiveType";
                break;
            case 92:
                objArr[2] = "isPrimitiveClass";
                break;
            case 93:
            case 94:
            case 95:
            case 96:
                objArr[2] = "isConstructedFromGivenClass";
                break;
            case 97:
            case 98:
                objArr[2] = "isTypeConstructorForGivenClass";
                break;
            case 99:
            case 100:
                objArr[2] = "classFqNameEquals";
                break;
            case 101:
            case 102:
                objArr[2] = "isNotNullConstructedFromGivenClass";
                break;
            case 103:
                objArr[2] = "isSpecialClassWithNoSupertypes";
                break;
            case 104:
            case 105:
                objArr[2] = "isAny";
                break;
            case 106:
            case 108:
                objArr[2] = "isBoolean";
                break;
            case 107:
                objArr[2] = "isBooleanOrNullableBoolean";
                break;
            case 109:
                objArr[2] = "isNumber";
                break;
            case 110:
                objArr[2] = "isChar";
                break;
            case 111:
                objArr[2] = "isCharOrNullableChar";
                break;
            case 112:
                objArr[2] = "isInt";
                break;
            case 113:
                objArr[2] = "isByte";
                break;
            case 114:
                objArr[2] = "isLong";
                break;
            case 115:
                objArr[2] = "isLongOrNullableLong";
                break;
            case 116:
                objArr[2] = "isShort";
                break;
            case 117:
                objArr[2] = "isFloat";
                break;
            case 118:
                objArr[2] = "isFloatOrNullableFloat";
                break;
            case 119:
                objArr[2] = "isDouble";
                break;
            case 120:
                objArr[2] = "isUByte";
                break;
            case 121:
                objArr[2] = "isUShort";
                break;
            case 122:
                objArr[2] = "isUInt";
                break;
            case 123:
                objArr[2] = "isULong";
                break;
            case 124:
                objArr[2] = "isDoubleOrNullableDouble";
                break;
            case 125:
            case 126:
                objArr[2] = "isConstructedFromGivenClassAndNotNullable";
                break;
            case 127:
                objArr[2] = "isNothing";
                break;
            case 128:
                objArr[2] = "isNullableNothing";
                break;
            case 129:
                objArr[2] = "isNothingOrNullableNothing";
                break;
            case 130:
                objArr[2] = "isAnyOrNullableAny";
                break;
            case 131:
                objArr[2] = "isNullableAny";
                break;
            case 132:
                objArr[2] = "isDefaultBound";
                break;
            case 133:
                objArr[2] = "isUnit";
                break;
            case 134:
                objArr[2] = "isUnitOrNullableUnit";
                break;
            case 135:
                objArr[2] = "isBooleanOrSubtype";
                break;
            case 136:
                objArr[2] = "isMemberOfAny";
                break;
            case 137:
            case 138:
                objArr[2] = "isEnum";
                break;
            case 139:
            case IronSourceConstants.USING_CACHE_FOR_INIT_EVENT /* 140 */:
                objArr[2] = "isComparable";
                break;
            case 141:
                objArr[2] = "isCollectionOrNullableCollection";
                break;
            case 142:
                objArr[2] = "isListOrNullableList";
                break;
            case 143:
                objArr[2] = "isSetOrNullableSet";
                break;
            case 144:
                objArr[2] = "isMapOrNullableMap";
                break;
            case 145:
                objArr[2] = "isIterableOrNullableIterable";
                break;
            case 146:
                objArr[2] = "isThrowableOrNullableThrowable";
                break;
            case 147:
                objArr[2] = "isKClass";
                break;
            case 148:
                objArr[2] = "isNonPrimitiveArray";
                break;
            case 149:
                objArr[2] = "isCloneable";
                break;
            case 150:
                objArr[2] = "isDeprecated";
                break;
            case 151:
                objArr[2] = "isNotNullOrNullableFunctionSupertype";
                break;
            case 152:
                objArr[2] = "getPrimitiveFqName";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i2) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 10:
            case 12:
            case 14:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 67:
            case 68:
            case 69:
            case 73:
            case 80:
            case 82:
            case 83:
                throw new IllegalStateException(str2);
            case 8:
            case 9:
            case 11:
            case 13:
            case 15:
            case 16:
            case 45:
            case 52:
            case 66:
            case 70:
            case 71:
            case 72:
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 81:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    private static boolean f(kotlin.reflect.jvm.internal.impl.descriptors.f fVar, FqNameUnsafe fqNameUnsafe) {
        if (fVar == null) {
            a(99);
        }
        if (fqNameUnsafe == null) {
            a(100);
        }
        return fVar.getName().equals(fqNameUnsafe.i()) && fqNameUnsafe.equals(DescriptorUtils.getFqName(fVar));
    }

    public static ClassId getFunctionClassId(int i2) {
        return new ClassId(b, Name.identifier(getFunctionName(i2)));
    }

    public static String getFunctionName(int i2) {
        String str = "Function" + i2;
        if (str == null) {
            a(17);
        }
        return str;
    }

    public static PrimitiveType getPrimitiveArrayType(i iVar) {
        if (iVar == null) {
            a(77);
        }
        e eVar = h;
        if (eVar.w0.contains(iVar.getName())) {
            return eVar.y0.get(DescriptorUtils.getFqName(iVar));
        }
        return null;
    }

    public static FqName getPrimitiveFqName(PrimitiveType primitiveType) {
        if (primitiveType == null) {
            a(152);
        }
        return b.c(primitiveType.h());
    }

    public static PrimitiveType getPrimitiveType(i iVar) {
        if (iVar == null) {
            a(76);
        }
        e eVar = h;
        if (eVar.v0.contains(iVar.getName())) {
            return eVar.x0.get(DescriptorUtils.getFqName(iVar));
        }
        return null;
    }

    public static boolean isAny(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (dVar == null) {
            a(104);
        }
        return f(dVar, h.a);
    }

    public static boolean isAnyOrNullableAny(u uVar) {
        if (uVar == null) {
            a(130);
        }
        return X(uVar, h.a);
    }

    public static boolean isArray(u uVar) {
        if (uVar == null) {
            a(84);
        }
        return X(uVar, h.h);
    }

    public static boolean isArrayOrPrimitiveArray(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (dVar == null) {
            a(85);
        }
        return f(dVar, h.h) || getPrimitiveArrayType(dVar) != null;
    }

    public static boolean isBoolean(u uVar) {
        if (uVar == null) {
            a(106);
        }
        return Y(uVar, h.i);
    }

    public static boolean isBuiltIn(i iVar) {
        if (iVar == null) {
            a(8);
        }
        return DescriptorUtils.getParentOfType(iVar, kotlin.reflect.jvm.internal.impl.builtins.b.class, false) != null;
    }

    public static boolean isByte(u uVar) {
        if (uVar == null) {
            a(113);
        }
        return Y(uVar, h.k);
    }

    public static boolean isChar(u uVar) {
        if (uVar == null) {
            a(110);
        }
        return Y(uVar, h.j);
    }

    public static boolean isDefaultBound(u uVar) {
        if (uVar == null) {
            a(132);
        }
        return isNullableAny(uVar);
    }

    public static boolean isDeprecated(i iVar) {
        if (iVar == null) {
            a(150);
        }
        if (iVar.a().getAnnotations().N(h.x)) {
            return true;
        }
        if (!(iVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.y)) {
            return false;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.y yVar = (kotlin.reflect.jvm.internal.impl.descriptors.y) iVar;
        boolean zJ = yVar.J();
        z getter = yVar.getGetter();
        a0 setter = yVar.getSetter();
        if (getter != null && isDeprecated(getter)) {
            if (!zJ) {
                return true;
            }
            if (setter != null && isDeprecated(setter)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isDouble(u uVar) {
        if (uVar == null) {
            a(119);
        }
        return isDoubleOrNullableDouble(uVar) && !uVar.I0();
    }

    public static boolean isDoubleOrNullableDouble(u uVar) {
        if (uVar == null) {
            a(124);
        }
        return X(uVar, h.p);
    }

    public static boolean isFloat(u uVar) {
        if (uVar == null) {
            a(117);
        }
        return isFloatOrNullableFloat(uVar) && !uVar.I0();
    }

    public static boolean isFloatOrNullableFloat(u uVar) {
        if (uVar == null) {
            a(118);
        }
        return X(uVar, h.o);
    }

    public static boolean isInt(u uVar) {
        if (uVar == null) {
            a(112);
        }
        return Y(uVar, h.m);
    }

    public static boolean isKClass(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (dVar == null) {
            a(147);
        }
        return f(dVar, h.b0);
    }

    public static boolean isLong(u uVar) {
        if (uVar == null) {
            a(114);
        }
        return Y(uVar, h.n);
    }

    public static boolean isNothing(u uVar) {
        if (uVar == null) {
            a(127);
        }
        return isNothingOrNullableNothing(uVar) && !TypeUtils.isNullableType(uVar);
    }

    public static boolean isNothingOrNullableNothing(u uVar) {
        if (uVar == null) {
            a(129);
        }
        return X(uVar, h.b);
    }

    public static boolean isNullableAny(u uVar) {
        if (uVar == null) {
            a(131);
        }
        return isAnyOrNullableAny(uVar) && uVar.I0();
    }

    public static boolean isPrimitiveArray(FqNameUnsafe fqNameUnsafe) {
        if (fqNameUnsafe == null) {
            a(75);
        }
        return h.y0.get(fqNameUnsafe) != null;
    }

    public static boolean isPrimitiveArray(u uVar) {
        if (uVar == null) {
            a(87);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = uVar.H0().q();
        return (fVarC == null || getPrimitiveArrayType(fVarC) == null) ? false : true;
    }

    public static boolean isPrimitiveClass(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (dVar == null) {
            a(92);
        }
        return getPrimitiveType(dVar) != null;
    }

    public static boolean isPrimitiveType(u uVar) {
        if (uVar == null) {
            a(90);
        }
        return !uVar.I0() && isPrimitiveTypeOrNullablePrimitiveType(uVar);
    }

    public static boolean isPrimitiveTypeOrNullablePrimitiveType(u uVar) {
        if (uVar == null) {
            a(91);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = uVar.H0().q();
        return (fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) && isPrimitiveClass((kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC);
    }

    public static boolean isShort(u uVar) {
        if (uVar == null) {
            a(116);
        }
        return Y(uVar, h.l);
    }

    public static boolean isSpecialClassWithNoSupertypes(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (dVar == null) {
            a(103);
        }
        e eVar = h;
        return f(dVar, eVar.a) || f(dVar, eVar.b);
    }

    public static boolean isString(u uVar) {
        return uVar != null && Z(uVar, h.f9044g);
    }

    public static boolean isTypeConstructorForGivenClass(f0 f0Var, FqNameUnsafe fqNameUnsafe) {
        if (f0Var == null) {
            a(97);
        }
        if (fqNameUnsafe == null) {
            a(98);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = f0Var.q();
        return (fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) && f(fVarC, fqNameUnsafe);
    }

    public static boolean isUnderKotlinPackage(i iVar) {
        if (iVar == null) {
            a(9);
        }
        while (iVar != null) {
            if (iVar instanceof s) {
                return ((s) iVar).e().i(a);
            }
            iVar = iVar.b();
        }
        return false;
    }

    public static boolean isUnit(u uVar) {
        if (uVar == null) {
            a(133);
        }
        return Z(uVar, h.f9042e);
    }

    private kotlin.reflect.jvm.internal.impl.descriptors.d p(String str) {
        if (str == null) {
            a(13);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarInvoke = this.m.invoke(Name.identifier(str));
        if (dVarInvoke == null) {
            a(14);
        }
        return dVarInvoke;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public y q(String str) {
        if (str == null) {
            a(45);
        }
        y yVarN = p(str).n();
        if (yVarN == null) {
            a(46);
        }
        return yVarN;
    }

    public y B() {
        y yVarP = P(PrimitiveType.FLOAT);
        if (yVarP == null) {
            a(59);
        }
        return yVarP;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.d C(int i2) {
        return p(getFunctionName(i2));
    }

    public y D() {
        y yVarP = P(PrimitiveType.INT);
        if (yVarP == null) {
            a(57);
        }
        return yVarP;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.d E() {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarO = o(h.b0.l());
        if (dVarO == null) {
            a(19);
        }
        return dVarO;
    }

    public y F() {
        y yVarP = P(PrimitiveType.LONG);
        if (yVarP == null) {
            a(58);
        }
        return yVarP;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.d G() {
        return p("Nothing");
    }

    public y H() {
        y yVarN = G().n();
        if (yVarN == null) {
            a(47);
        }
        return yVarN;
    }

    public y I() {
        y yVarO0 = j().L0(true);
        if (yVarO0 == null) {
            a(50);
        }
        return yVarO0;
    }

    public y J() {
        y yVarO0 = H().L0(true);
        if (yVarO0 == null) {
            a(48);
        }
        return yVarO0;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.d K() {
        return p("Number");
    }

    public y L() {
        y yVarN = K().n();
        if (yVarN == null) {
            a(54);
        }
        return yVarN;
    }

    protected kotlin.reflect.jvm.internal.impl.descriptors.deserialization.c M() {
        c.b bVar = c.b.a;
        if (bVar == null) {
            a(3);
        }
        return bVar;
    }

    public y N(PrimitiveType primitiveType) {
        if (primitiveType == null) {
            a(72);
        }
        y yVar = this.k.invoke().a.get(primitiveType);
        if (yVar == null) {
            a(73);
        }
        return yVar;
    }

    public y P(PrimitiveType primitiveType) {
        if (primitiveType == null) {
            a(52);
        }
        y yVarN = O(primitiveType).n();
        if (yVarN == null) {
            a(53);
        }
        return yVarN;
    }

    public y Q() {
        y yVarP = P(PrimitiveType.SHORT);
        if (yVarP == null) {
            a(56);
        }
        return yVarP;
    }

    protected h R() {
        h hVar = this.n;
        if (hVar == null) {
            a(5);
        }
        return hVar;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.d S() {
        return p("String");
    }

    public y T() {
        y yVarN = S().n();
        if (yVarN == null) {
            a(64);
        }
        return yVarN;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.d U(int i2) {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarO = o(DescriptorUtils.c.c(Name.identifier(FunctionClassDescriptor.Kind.b.e() + i2)));
        if (dVarO == null) {
            a(18);
        }
        return dVarO;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.d V() {
        return p("Unit");
    }

    public y W() {
        y yVarN = V().n();
        if (yVarN == null) {
            a(63);
        }
        return yVarN;
    }

    public void a0(ModuleDescriptorImpl moduleDescriptorImpl) {
        if (moduleDescriptorImpl == null) {
            a(1);
        }
        this.n.d(new d(moduleDescriptorImpl));
    }

    protected void g(boolean z) {
        ModuleDescriptorImpl moduleDescriptorImpl = new ModuleDescriptorImpl(i, this.n, this, null);
        this.j = moduleDescriptorImpl;
        moduleDescriptorImpl.z0(kotlin.reflect.jvm.internal.impl.builtins.a.a.a().a(this.n, this.j, v(), M(), h(), z));
        ModuleDescriptorImpl moduleDescriptorImpl2 = this.j;
        moduleDescriptorImpl2.J0(moduleDescriptorImpl2);
    }

    protected kotlin.reflect.jvm.internal.impl.descriptors.deserialization.a h() {
        a.C0518a c0518a = a.C0518a.a;
        if (c0518a == null) {
            a(2);
        }
        return c0518a;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.d i() {
        return p("Any");
    }

    public y j() {
        y yVarN = i().n();
        if (yVarN == null) {
            a(49);
        }
        return yVarN;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.d k() {
        return p("Array");
    }

    public u l(u uVar) {
        u uVarA;
        if (uVar == null) {
            a(66);
        }
        if (isArray(uVar)) {
            if (uVar.G0().size() != 1) {
                throw new IllegalStateException();
            }
            u type = uVar.G0().get(0).getType();
            if (type == null) {
                a(67);
            }
            return type;
        }
        u uVarMakeNotNullable = TypeUtils.makeNotNullable(uVar);
        y yVar = this.k.invoke().c.get(uVarMakeNotNullable);
        if (yVar != null) {
            return yVar;
        }
        ModuleDescriptor containingModuleOrNull = DescriptorUtils.getContainingModuleOrNull(uVarMakeNotNullable);
        if (containingModuleOrNull != null && (uVarA = A(uVarMakeNotNullable, containingModuleOrNull)) != null) {
            return uVarA;
        }
        throw new IllegalStateException("not array: " + uVar);
    }

    public y m(Variance variance, u uVar) {
        if (variance == null) {
            a(78);
        }
        if (uVar == null) {
            a(79);
        }
        y yVarSimpleNotNullType = KotlinTypeFactory.simpleNotNullType(Annotations.e0.b(), k(), Collections.singletonList(new i0(variance, uVar)));
        if (yVarSimpleNotNullType == null) {
            a(80);
        }
        return yVarSimpleNotNullType;
    }

    public y n() {
        y yVarP = P(PrimitiveType.BOOLEAN);
        if (yVarP == null) {
            a(62);
        }
        return yVarP;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.d o(FqName fqName) {
        if (fqName == null) {
            a(11);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarResolveClassByFqName = DescriptorUtilKt.resolveClassByFqName(this.j, fqName, NoLookupLocation.FROM_BUILTINS);
        if (dVarResolveClassByFqName == null) {
            a(12);
        }
        return dVarResolveClassByFqName;
    }

    public ModuleDescriptorImpl r() {
        ModuleDescriptorImpl moduleDescriptorImpl = this.j;
        if (moduleDescriptorImpl == null) {
            a(6);
        }
        return moduleDescriptorImpl;
    }

    public MemberScope s() {
        MemberScope memberScopeM = this.j.d0(b).m();
        if (memberScopeM == null) {
            a(10);
        }
        return memberScopeM;
    }

    public y t() {
        y yVarP = P(PrimitiveType.BYTE);
        if (yVarP == null) {
            a(55);
        }
        return yVarP;
    }

    public y u() {
        y yVarP = P(PrimitiveType.CHAR);
        if (yVarP == null) {
            a(61);
        }
        return yVarP;
    }

    protected Iterable<kotlin.reflect.jvm.internal.impl.descriptors.deserialization.b> v() {
        List listSingletonList = Collections.singletonList(new BuiltInFictitiousFunctionClassFactory(this.n, this.j));
        if (listSingletonList == null) {
            a(4);
        }
        return listSingletonList;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.d w() {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarO = o(h.N);
        if (dVarO == null) {
            a(33);
        }
        return dVarO;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.d x() {
        return p("Comparable");
    }

    public y y() {
        y yVarI = I();
        if (yVarI == null) {
            a(51);
        }
        return yVarI;
    }

    public y z() {
        y yVarP = P(PrimitiveType.DOUBLE);
        if (yVarP == null) {
            a(60);
        }
        return yVarP;
    }
}
