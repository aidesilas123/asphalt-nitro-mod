package kotlin.reflect.jvm.internal.impl.types;

import com.json.o2;
import com.kidoz.sdk.api.players.web_player.WebPreferenceConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.builtins.DefaultBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;

/* JADX INFO: loaded from: classes5.dex */
public class ErrorUtils {
    private static final ModuleDescriptor a = new a();
    private static final c b = new c(Name.special("<ERROR CLASS>"));
    public static final y c = createErrorType("<LOOP IN SUPERTYPES>");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final u f9829d = createErrorType("<ERROR PROPERTY TYPE>");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.descriptors.y f9830e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Set<kotlin.reflect.jvm.internal.impl.descriptors.y> f9831f;

    static class a implements ModuleDescriptor {
        a() {
        }

        private static /* synthetic */ void u(int i) {
            String str = (i == 1 || i == 4 || i == 5 || i == 6 || i == 8 || i == 9 || i == 12 || i == 13) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 1 || i == 4 || i == 5 || i == 6 || i == 8 || i == 9 || i == 12 || i == 13) ? 2 : 3];
            switch (i) {
                case 1:
                case 4:
                case 5:
                case 6:
                case 8:
                case 9:
                case 12:
                case 13:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$1";
                    break;
                case 2:
                case 7:
                    objArr[0] = "fqName";
                    break;
                case 3:
                    objArr[0] = "nameFilter";
                    break;
                case 10:
                    objArr[0] = "visitor";
                    break;
                case 11:
                    objArr[0] = "targetModule";
                    break;
                default:
                    objArr[0] = "capability";
                    break;
            }
            if (i == 1) {
                objArr[1] = "getAnnotations";
            } else if (i == 4) {
                objArr[1] = "getSubPackagesOf";
            } else if (i == 5) {
                objArr[1] = "getName";
            } else if (i == 6) {
                objArr[1] = "getStableName";
            } else if (i == 8) {
                objArr[1] = "getAllDependencyModules";
            } else if (i == 9) {
                objArr[1] = "getExpectedByModules";
            } else if (i == 12) {
                objArr[1] = "getOriginal";
            } else if (i != 13) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$1";
            } else {
                objArr[1] = "getBuiltIns";
            }
            switch (i) {
                case 1:
                case 4:
                case 5:
                case 6:
                case 8:
                case 9:
                case 12:
                case 13:
                    break;
                case 2:
                case 3:
                    objArr[2] = "getSubPackagesOf";
                    break;
                case 7:
                    objArr[2] = "getPackage";
                    break;
                case 10:
                    objArr[2] = "accept";
                    break;
                case 11:
                    objArr[2] = "shouldSeeInternalsOf";
                    break;
                default:
                    objArr[2] = "getCapability";
                    break;
            }
            String str2 = String.format(str, objArr);
            if (i != 1 && i != 4 && i != 5 && i != 6 && i != 8 && i != 9 && i != 12 && i != 13) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
        public boolean G(ModuleDescriptor moduleDescriptor) {
            if (moduleDescriptor != null) {
                return false;
            }
            u(11);
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.i
        public kotlin.reflect.jvm.internal.impl.descriptors.i a() {
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.i
        public kotlin.reflect.jvm.internal.impl.descriptors.i b() {
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
        public PackageViewDescriptor d0(FqName fqName) {
            if (fqName == null) {
                u(7);
            }
            throw new IllegalStateException("Should not be called!");
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
        public Annotations getAnnotations() {
            Annotations annotationsB = Annotations.e0.b();
            if (annotationsB == null) {
                u(1);
            }
            return annotationsB;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.r
        public Name getName() {
            Name nameSpecial = Name.special("<ERROR MODULE>");
            if (nameSpecial == null) {
                u(5);
            }
            return nameSpecial;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
        public <T> T h0(ModuleDescriptor.a<T> aVar) {
            if (aVar != null) {
                return null;
            }
            u(0);
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
        public KotlinBuiltIns k() {
            DefaultBuiltIns defaultBuiltIns = DefaultBuiltIns.getInstance();
            if (defaultBuiltIns == null) {
                u(13);
            }
            return defaultBuiltIns;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
        public Collection<FqName> l(FqName fqName, Function1<? super Name, Boolean> function1) {
            if (fqName == null) {
                u(2);
            }
            if (function1 == null) {
                u(3);
            }
            List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
            if (listEmptyList == null) {
                u(4);
            }
            return listEmptyList;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
        public List<ModuleDescriptor> t0() {
            List<ModuleDescriptor> listEmptyList = CollectionsKt__CollectionsKt.emptyList();
            if (listEmptyList == null) {
                u(9);
            }
            return listEmptyList;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.i
        public <R, D> R w(kotlin.reflect.jvm.internal.impl.descriptors.k<R, D> kVar, D d2) {
            if (kVar != null) {
                return null;
            }
            u(10);
            return null;
        }
    }

    static class b implements f0 {
        final /* synthetic */ c a;
        final /* synthetic */ String b;

        b(c cVar, String str) {
            this.a = cVar;
            this.b = str;
        }

        private static /* synthetic */ void e(int i) {
            String str = i != 3 ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[i != 3 ? 2 : 3];
            if (i != 3) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$2";
            } else {
                objArr[0] = "kotlinTypeRefiner";
            }
            if (i == 1) {
                objArr[1] = "getSupertypes";
            } else if (i == 2) {
                objArr[1] = "getBuiltIns";
            } else if (i == 3) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$2";
            } else if (i != 4) {
                objArr[1] = "getParameters";
            } else {
                objArr[1] = "refine";
            }
            if (i == 3) {
                objArr[2] = "refine";
            }
            String str2 = String.format(str, objArr);
            if (i == 3) {
                throw new IllegalArgumentException(str2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public f0 a(kotlin.reflect.jvm.internal.impl.types.checker.d dVar) {
            if (dVar == null) {
                e(3);
            }
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        /* JADX INFO: renamed from: c */
        public kotlin.reflect.jvm.internal.impl.descriptors.f q() {
            return this.a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public boolean d() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public List<kotlin.reflect.jvm.internal.impl.descriptors.i0> getParameters() {
            List<kotlin.reflect.jvm.internal.impl.descriptors.i0> listEmptyList = CollectionsKt__CollectionsKt.emptyList();
            if (listEmptyList == null) {
                e(0);
            }
            return listEmptyList;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public Collection<u> h() {
            List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
            if (listEmptyList == null) {
                e(1);
            }
            return listEmptyList;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public KotlinBuiltIns k() {
            DefaultBuiltIns defaultBuiltIns = DefaultBuiltIns.getInstance();
            if (defaultBuiltIns == null) {
                e(2);
            }
            return defaultBuiltIns;
        }

        public String toString() {
            return this.b;
        }
    }

    private static class c extends kotlin.reflect.jvm.internal.impl.descriptors.impl.g {
        /* JADX WARN: Illegal instructions before constructor call */
        public c(Name name) {
            if (name == null) {
                b0(0);
            }
            ModuleDescriptor errorModule = ErrorUtils.getErrorModule();
            Modality modality = Modality.OPEN;
            ClassKind classKind = ClassKind.CLASS;
            List listEmptyList = Collections.emptyList();
            kotlin.reflect.jvm.internal.impl.descriptors.d0 d0Var = kotlin.reflect.jvm.internal.impl.descriptors.d0.a;
            super(errorModule, name, modality, classKind, listEmptyList, d0Var, false, LockBasedStorageManager.b);
            ClassConstructorDescriptorImpl classConstructorDescriptorImplCreate = ClassConstructorDescriptorImpl.create(this, Annotations.e0.b(), true, d0Var);
            classConstructorDescriptorImplCreate.c1(Collections.emptyList(), Visibilities.f9099d);
            MemberScope memberScopeCreateErrorScope = ErrorUtils.createErrorScope(getName().e());
            classConstructorDescriptorImplCreate.U0(new o(ErrorUtils.g("<ERROR>", this), memberScopeCreateErrorScope));
            k0(memberScopeCreateErrorScope, Collections.singleton(classConstructorDescriptorImplCreate), classConstructorDescriptorImplCreate);
        }

        private static /* synthetic */ void b0(int i) {
            String str = (i == 2 || i == 5 || i == 8) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 2 || i == 5 || i == 8) ? 2 : 3];
            switch (i) {
                case 1:
                    objArr[0] = "substitutor";
                    break;
                case 2:
                case 5:
                case 8:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$ErrorClassDescriptor";
                    break;
                case 3:
                    objArr[0] = "typeArguments";
                    break;
                case 4:
                case 7:
                    objArr[0] = "kotlinTypeRefiner";
                    break;
                case 6:
                    objArr[0] = "typeSubstitution";
                    break;
                default:
                    objArr[0] = "name";
                    break;
            }
            if (i == 2) {
                objArr[1] = "substitute";
            } else if (i == 5 || i == 8) {
                objArr[1] = "getMemberScope";
            } else {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$ErrorClassDescriptor";
            }
            switch (i) {
                case 1:
                    objArr[2] = "substitute";
                    break;
                case 2:
                case 5:
                case 8:
                    break;
                case 3:
                case 4:
                case 6:
                case 7:
                    objArr[2] = "getMemberScope";
                    break;
                default:
                    objArr[2] = "<init>";
                    break;
            }
            String str2 = String.format(str, objArr);
            if (i != 2 && i != 5 && i != 8) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.a, kotlin.reflect.jvm.internal.impl.descriptors.f0
        /* JADX INFO: renamed from: e0, reason: merged with bridge method [inline-methods] */
        public kotlin.reflect.jvm.internal.impl.descriptors.d c(TypeSubstitutor typeSubstitutor) {
            if (typeSubstitutor == null) {
                b0(1);
            }
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.g
        public String toString() {
            return getName().e();
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.a, kotlin.reflect.jvm.internal.impl.descriptors.impl.p
        public MemberScope u(j0 j0Var, kotlin.reflect.jvm.internal.impl.types.checker.d dVar) {
            if (j0Var == null) {
                b0(6);
            }
            if (dVar == null) {
                b0(7);
            }
            MemberScope memberScopeCreateErrorScope = ErrorUtils.createErrorScope("Error scope for class " + getName() + " with arguments: " + j0Var);
            if (memberScopeCreateErrorScope == null) {
                b0(8);
            }
            return memberScopeCreateErrorScope;
        }
    }

    public static class d implements MemberScope {
        private final String b;

        private d(String str) {
            if (str == null) {
                g(0);
            }
            this.b = str;
        }

        /* synthetic */ d(String str, a aVar) {
            this(str);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0019  */
        /* JADX WARN: Removed duplicated region for block: B:7:0x000d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private static /* synthetic */ void g(int r10) {
            /*
                Method dump skipped, instruction units count: 306
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.ErrorUtils.d.g(int):void");
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Set<Name> b() {
            Set<Name> setEmptySet = Collections.emptySet();
            if (setEmptySet == null) {
                g(11);
            }
            return setEmptySet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
        public kotlin.reflect.jvm.internal.impl.descriptors.f c(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar) {
            if (name == null) {
                g(1);
            }
            if (bVar == null) {
                g(2);
            }
            return ErrorUtils.createErrorClass(name.e());
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
        public Collection<kotlin.reflect.jvm.internal.impl.descriptors.i> d(DescriptorKindFilter descriptorKindFilter, Function1<? super Name, Boolean> function1) {
            if (descriptorKindFilter == null) {
                g(16);
            }
            if (function1 == null) {
                g(17);
            }
            List listEmptyList = Collections.emptyList();
            if (listEmptyList == null) {
                g(18);
            }
            return listEmptyList;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Set<Name> f() {
            Set<Name> setEmptySet = Collections.emptySet();
            if (setEmptySet == null) {
                g(12);
            }
            return setEmptySet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Set<? extends kotlin.reflect.jvm.internal.impl.descriptors.c0> a(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar) {
            if (name == null) {
                g(8);
            }
            if (bVar == null) {
                g(9);
            }
            Set<? extends kotlin.reflect.jvm.internal.impl.descriptors.c0> setSingleton = Collections.singleton(ErrorUtils.e(this));
            if (setSingleton == null) {
                g(10);
            }
            return setSingleton;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public Set<? extends kotlin.reflect.jvm.internal.impl.descriptors.y> e(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar) {
            if (name == null) {
                g(5);
            }
            if (bVar == null) {
                g(6);
            }
            Set<? extends kotlin.reflect.jvm.internal.impl.descriptors.y> set = ErrorUtils.f9831f;
            if (set == null) {
                g(7);
            }
            return set;
        }

        public String toString() {
            return "ErrorScope{" + this.b + '}';
        }
    }

    private static class e implements MemberScope {
        private final String b;

        private e(String str) {
            if (str == null) {
                g(0);
            }
            this.b = str;
        }

        /* synthetic */ e(String str, a aVar) {
            this(str);
        }

        private static /* synthetic */ void g(int i) {
            Object[] objArr = new Object[3];
            switch (i) {
                case 1:
                case 3:
                case 5:
                case 7:
                case 11:
                case 13:
                    objArr[0] = "name";
                    break;
                case 2:
                case 4:
                case 6:
                case 8:
                case 12:
                    objArr[0] = WebPreferenceConstants.LOCATION;
                    break;
                case 9:
                    objArr[0] = "kindFilter";
                    break;
                case 10:
                    objArr[0] = "nameFilter";
                    break;
                case 14:
                    objArr[0] = TtmlNode.TAG_P;
                    break;
                default:
                    objArr[0] = "message";
                    break;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$ThrowingScope";
            switch (i) {
                case 1:
                case 2:
                    objArr[2] = "getContributedClassifier";
                    break;
                case 3:
                case 4:
                    objArr[2] = "getContributedClassifierIncludeDeprecated";
                    break;
                case 5:
                case 6:
                    objArr[2] = "getContributedVariables";
                    break;
                case 7:
                case 8:
                    objArr[2] = "getContributedFunctions";
                    break;
                case 9:
                case 10:
                    objArr[2] = "getContributedDescriptors";
                    break;
                case 11:
                case 12:
                    objArr[2] = "recordLookup";
                    break;
                case 13:
                    objArr[2] = "definitelyDoesNotContainName";
                    break;
                case 14:
                    objArr[2] = "printScopeStructure";
                    break;
                default:
                    objArr[2] = "<init>";
                    break;
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
        public Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.c0> a(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar) {
            if (name == null) {
                g(7);
            }
            if (bVar == null) {
                g(8);
            }
            throw new IllegalStateException(this.b + ", required name: " + name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Set<Name> b() {
            throw new IllegalStateException();
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
        public kotlin.reflect.jvm.internal.impl.descriptors.f c(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar) {
            if (name == null) {
                g(1);
            }
            if (bVar == null) {
                g(2);
            }
            throw new IllegalStateException(this.b + ", required name: " + name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
        public Collection<kotlin.reflect.jvm.internal.impl.descriptors.i> d(DescriptorKindFilter descriptorKindFilter, Function1<? super Name, Boolean> function1) {
            if (descriptorKindFilter == null) {
                g(9);
            }
            if (function1 == null) {
                g(10);
            }
            throw new IllegalStateException(this.b);
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.y> e(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar) {
            if (name == null) {
                g(5);
            }
            if (bVar == null) {
                g(6);
            }
            throw new IllegalStateException(this.b + ", required name: " + name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Set<Name> f() {
            throw new IllegalStateException();
        }

        public String toString() {
            return "ThrowingScope{" + this.b + '}';
        }
    }

    public static class f implements f0 {
        private final kotlin.reflect.jvm.internal.impl.descriptors.i0 a;
        private final f0 b;

        private static /* synthetic */ void e(int i) {
            String str = (i == 1 || i == 2 || i == 3 || i == 4 || i == 6) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 1 || i == 2 || i == 3 || i == 4 || i == 6) ? 2 : 3];
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 6:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$UninferredParameterTypeConstructor";
                    break;
                case 5:
                    objArr[0] = "kotlinTypeRefiner";
                    break;
                default:
                    objArr[0] = "descriptor";
                    break;
            }
            if (i == 1) {
                objArr[1] = "getTypeParameterDescriptor";
            } else if (i == 2) {
                objArr[1] = "getParameters";
            } else if (i == 3) {
                objArr[1] = "getSupertypes";
            } else if (i == 4) {
                objArr[1] = "getBuiltIns";
            } else if (i != 6) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$UninferredParameterTypeConstructor";
            } else {
                objArr[1] = "refine";
            }
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 6:
                    break;
                case 5:
                    objArr[2] = "refine";
                    break;
                default:
                    objArr[2] = "<init>";
                    break;
            }
            String str2 = String.format(str, objArr);
            if (i != 1 && i != 2 && i != 3 && i != 4 && i != 6) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public f0 a(kotlin.reflect.jvm.internal.impl.types.checker.d dVar) {
            if (dVar == null) {
                e(5);
            }
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        /* JADX INFO: renamed from: c */
        public kotlin.reflect.jvm.internal.impl.descriptors.f q() {
            return this.b.q();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public boolean d() {
            return this.b.d();
        }

        public kotlin.reflect.jvm.internal.impl.descriptors.i0 f() {
            kotlin.reflect.jvm.internal.impl.descriptors.i0 i0Var = this.a;
            if (i0Var == null) {
                e(1);
            }
            return i0Var;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public List<kotlin.reflect.jvm.internal.impl.descriptors.i0> getParameters() {
            List<kotlin.reflect.jvm.internal.impl.descriptors.i0> parameters = this.b.getParameters();
            if (parameters == null) {
                e(2);
            }
            return parameters;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public Collection<u> h() {
            Collection<u> collectionH = this.b.h();
            if (collectionH == null) {
                e(3);
            }
            return collectionH;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public KotlinBuiltIns k() {
            KotlinBuiltIns builtIns = DescriptorUtilsKt.getBuiltIns(this.a);
            if (builtIns == null) {
                e(4);
            }
            return builtIns;
        }
    }

    static {
        PropertyDescriptorImpl propertyDescriptorImplF = f();
        f9830e = propertyDescriptorImplF;
        f9831f = Collections.singleton(propertyDescriptorImplF);
    }

    private static /* synthetic */ void a(int i) {
        String str = (i == 4 || i == 6 || i == 19) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 4 || i == 6 || i == 19) ? 2 : 3];
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 7:
            case 11:
            case 15:
                objArr[0] = "debugMessage";
                break;
            case 4:
            case 6:
            case 19:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils";
                break;
            case 5:
                objArr[0] = "ownerScope";
                break;
            case 8:
            case 9:
            case 16:
            case 17:
                objArr[0] = "debugName";
                break;
            case 10:
                objArr[0] = "typeConstructor";
                break;
            case 12:
            case 14:
                objArr[0] = "arguments";
                break;
            case 13:
                objArr[0] = "presentableName";
                break;
            case 18:
                objArr[0] = "errorClass";
                break;
            case 20:
                objArr[0] = "typeParameterDescriptor";
                break;
            default:
                objArr[0] = "function";
                break;
        }
        if (i == 4) {
            objArr[1] = "createErrorProperty";
        } else if (i == 6) {
            objArr[1] = "createErrorFunction";
        } else if (i != 19) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils";
        } else {
            objArr[1] = "getErrorModule";
        }
        switch (i) {
            case 1:
                objArr[2] = "createErrorClass";
                break;
            case 2:
            case 3:
                objArr[2] = "createErrorScope";
                break;
            case 4:
            case 6:
            case 19:
                break;
            case 5:
                objArr[2] = "createErrorFunction";
                break;
            case 7:
                objArr[2] = "createErrorType";
                break;
            case 8:
                objArr[2] = "createErrorTypeWithCustomDebugName";
                break;
            case 9:
            case 10:
                objArr[2] = "createErrorTypeWithCustomConstructor";
                break;
            case 11:
            case 12:
                objArr[2] = "createErrorTypeWithArguments";
                break;
            case 13:
            case 14:
                objArr[2] = "createUnresolvedType";
                break;
            case 15:
                objArr[2] = "createErrorTypeConstructor";
                break;
            case 16:
            case 17:
            case 18:
                objArr[2] = "createErrorTypeConstructorWithCustomDebugName";
                break;
            case 20:
                objArr[2] = "createUninferredParameterType";
                break;
            default:
                objArr[2] = "containsErrorTypeInParameters";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 4 && i != 6 && i != 19) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static kotlin.reflect.jvm.internal.impl.descriptors.d createErrorClass(String str) {
        if (str == null) {
            a(1);
        }
        return new c(Name.special("<ERROR CLASS: " + str + ">"));
    }

    public static MemberScope createErrorScope(String str) {
        if (str == null) {
            a(2);
        }
        return createErrorScope(str, false);
    }

    public static MemberScope createErrorScope(String str, boolean z) {
        if (str == null) {
            a(3);
        }
        a aVar = null;
        return z ? new e(str, aVar) : new d(str, aVar);
    }

    public static y createErrorType(String str) {
        if (str == null) {
            a(7);
        }
        return createErrorTypeWithArguments(str, Collections.emptyList());
    }

    public static f0 createErrorTypeConstructor(String str) {
        if (str == null) {
            a(15);
        }
        return g("[ERROR : " + str + o2.i.f6491e, b);
    }

    public static f0 createErrorTypeConstructorWithCustomDebugName(String str) {
        if (str == null) {
            a(16);
        }
        return g(str, b);
    }

    public static y createErrorTypeWithArguments(String str, List<g0> list) {
        if (str == null) {
            a(11);
        }
        if (list == null) {
            a(12);
        }
        return new o(createErrorTypeConstructor(str), createErrorScope(str), list, false);
    }

    public static y createErrorTypeWithCustomConstructor(String str, f0 f0Var) {
        if (str == null) {
            a(9);
        }
        if (f0Var == null) {
            a(10);
        }
        return new o(f0Var, createErrorScope(str));
    }

    public static y createErrorTypeWithCustomDebugName(String str) {
        if (str == null) {
            a(8);
        }
        return createErrorTypeWithCustomConstructor(str, createErrorTypeConstructorWithCustomDebugName(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static kotlin.reflect.jvm.internal.impl.descriptors.c0 e(d dVar) {
        if (dVar == null) {
            a(5);
        }
        kotlin.reflect.jvm.internal.impl.types.o0.a aVar = new kotlin.reflect.jvm.internal.impl.types.o0.a(b, dVar);
        aVar.F0(null, null, Collections.emptyList(), Collections.emptyList(), createErrorType("<ERROR FUNCTION RETURN TYPE>"), Modality.OPEN, Visibilities.f9100e);
        return aVar;
    }

    private static PropertyDescriptorImpl f() {
        PropertyDescriptorImpl propertyDescriptorImplCreate = PropertyDescriptorImpl.create(b, Annotations.e0.b(), Modality.OPEN, Visibilities.f9100e, true, Name.special("<ERROR PROPERTY>"), CallableMemberDescriptor.Kind.DECLARATION, kotlin.reflect.jvm.internal.impl.descriptors.d0.a, false, false, false, false, false, false);
        propertyDescriptorImplCreate.P0(f9829d, Collections.emptyList(), null, null);
        return propertyDescriptorImplCreate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static f0 g(String str, c cVar) {
        if (str == null) {
            a(17);
        }
        if (cVar == null) {
            a(18);
        }
        return new b(cVar, str);
    }

    public static ModuleDescriptor getErrorModule() {
        ModuleDescriptor moduleDescriptor = a;
        if (moduleDescriptor == null) {
            a(19);
        }
        return moduleDescriptor;
    }

    private static boolean h(kotlin.reflect.jvm.internal.impl.descriptors.i iVar) {
        return iVar instanceof c;
    }

    public static boolean isError(kotlin.reflect.jvm.internal.impl.descriptors.i iVar) {
        if (iVar == null) {
            return false;
        }
        return h(iVar) || h(iVar.b()) || iVar == a;
    }

    public static boolean isUninferredParameter(u uVar) {
        return uVar != null && (uVar.H0() instanceof f);
    }
}
