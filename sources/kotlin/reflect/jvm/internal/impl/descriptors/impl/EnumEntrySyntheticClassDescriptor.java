package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.facebook.share.internal.ShareConstants;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: loaded from: classes5.dex */
public class EnumEntrySyntheticClassDescriptor extends f {
    private final f0 i;
    private final MemberScope j;
    private final kotlin.reflect.jvm.internal.impl.storage.e<Set<Name>> k;
    private final Annotations l;

    private class a extends kotlin.reflect.jvm.internal.impl.resolve.scopes.f {
        private final kotlin.reflect.jvm.internal.impl.storage.b<Name, Collection<? extends c0>> b;
        private final kotlin.reflect.jvm.internal.impl.storage.b<Name, Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.y>> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.storage.e<Collection<kotlin.reflect.jvm.internal.impl.descriptors.i>> f9115d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ EnumEntrySyntheticClassDescriptor f9116e;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.EnumEntrySyntheticClassDescriptor$a$a, reason: collision with other inner class name */
        class C0519a implements Function1<Name, Collection<? extends c0>> {
            final /* synthetic */ EnumEntrySyntheticClassDescriptor a;

            C0519a(EnumEntrySyntheticClassDescriptor enumEntrySyntheticClassDescriptor) {
                this.a = enumEntrySyntheticClassDescriptor;
            }

            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Collection<? extends c0> invoke(Name name) {
                return a.this.l(name);
            }
        }

        class b implements Function1<Name, Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.y>> {
            final /* synthetic */ EnumEntrySyntheticClassDescriptor a;

            b(EnumEntrySyntheticClassDescriptor enumEntrySyntheticClassDescriptor) {
                this.a = enumEntrySyntheticClassDescriptor;
            }

            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.y> invoke(Name name) {
                return a.this.m(name);
            }
        }

        class c implements Function0<Collection<kotlin.reflect.jvm.internal.impl.descriptors.i>> {
            final /* synthetic */ EnumEntrySyntheticClassDescriptor a;

            c(EnumEntrySyntheticClassDescriptor enumEntrySyntheticClassDescriptor) {
                this.a = enumEntrySyntheticClassDescriptor;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Collection<kotlin.reflect.jvm.internal.impl.descriptors.i> invoke() {
                return a.this.k();
            }
        }

        class d extends kotlin.reflect.jvm.internal.impl.resolve.b {
            final /* synthetic */ Set a;

            d(Set set) {
                this.a = set;
            }

            private static /* synthetic */ void f(int i) {
                Object[] objArr = new Object[3];
                if (i == 1) {
                    objArr[0] = "fromSuper";
                } else if (i != 2) {
                    objArr[0] = "fakeOverride";
                } else {
                    objArr[0] = "fromCurrent";
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor$EnumEntryScope$4";
                if (i == 1 || i == 2) {
                    objArr[2] = "conflict";
                } else {
                    objArr[2] = "addFakeOverride";
                }
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.resolve.c
            public void a(CallableMemberDescriptor callableMemberDescriptor) {
                if (callableMemberDescriptor == null) {
                    f(0);
                }
                OverridingUtil.resolveUnknownVisibilityForMember(callableMemberDescriptor, null);
                this.a.add(callableMemberDescriptor);
            }

            @Override // kotlin.reflect.jvm.internal.impl.resolve.b
            protected void e(CallableMemberDescriptor callableMemberDescriptor, CallableMemberDescriptor callableMemberDescriptor2) {
                if (callableMemberDescriptor == null) {
                    f(1);
                }
                if (callableMemberDescriptor2 == null) {
                    f(2);
                }
            }
        }

        public a(EnumEntrySyntheticClassDescriptor enumEntrySyntheticClassDescriptor, kotlin.reflect.jvm.internal.impl.storage.h hVar) {
            if (hVar == null) {
                g(0);
            }
            this.f9116e = enumEntrySyntheticClassDescriptor;
            this.b = hVar.h(new C0519a(enumEntrySyntheticClassDescriptor));
            this.c = hVar.h(new b(enumEntrySyntheticClassDescriptor));
            this.f9115d = hVar.c(new c(enumEntrySyntheticClassDescriptor));
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0014  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private static /* synthetic */ void g(int r13) {
            /*
                Method dump skipped, instruction units count: 346
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.impl.EnumEntrySyntheticClassDescriptor.a.g(int):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Collection<kotlin.reflect.jvm.internal.impl.descriptors.i> k() {
            HashSet hashSet = new HashSet();
            for (Name name : (Set) this.f9116e.k.invoke()) {
                NoLookupLocation noLookupLocation = NoLookupLocation.FOR_NON_TRACKED_SCOPE;
                hashSet.addAll(a(name, noLookupLocation));
                hashSet.addAll(e(name, noLookupLocation));
            }
            return hashSet;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Collection<? extends c0> l(Name name) {
            if (name == null) {
                g(8);
            }
            return o(name, n().a(name, NoLookupLocation.FOR_NON_TRACKED_SCOPE));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.y> m(Name name) {
            if (name == null) {
                g(4);
            }
            return o(name, n().e(name, NoLookupLocation.FOR_NON_TRACKED_SCOPE));
        }

        private MemberScope n() {
            MemberScope memberScopeM = this.f9116e.i().h().iterator().next().m();
            if (memberScopeM == null) {
                g(9);
            }
            return memberScopeM;
        }

        private <D extends CallableMemberDescriptor> Collection<? extends D> o(Name name, Collection<? extends D> collection) {
            if (name == null) {
                g(10);
            }
            if (collection == null) {
                g(11);
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            OverridingUtil.b.q(name, collection, Collections.emptySet(), this.f9116e, new d(linkedHashSet));
            return linkedHashSet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
        public Collection<? extends c0> a(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar) {
            if (name == null) {
                g(5);
            }
            if (bVar == null) {
                g(6);
            }
            Collection<? extends c0> collectionInvoke = this.b.invoke(name);
            if (collectionInvoke == null) {
                g(7);
            }
            return collectionInvoke;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Set<Name> b() {
            Set<Name> set = (Set) this.f9116e.k.invoke();
            if (set == null) {
                g(17);
            }
            return set;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
        public Collection<kotlin.reflect.jvm.internal.impl.descriptors.i> d(DescriptorKindFilter descriptorKindFilter, Function1<? super Name, Boolean> function1) {
            if (descriptorKindFilter == null) {
                g(13);
            }
            if (function1 == null) {
                g(14);
            }
            Collection<kotlin.reflect.jvm.internal.impl.descriptors.i> collectionInvoke = this.f9115d.invoke();
            if (collectionInvoke == null) {
                g(15);
            }
            return collectionInvoke;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.y> e(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar) {
            if (name == null) {
                g(1);
            }
            if (bVar == null) {
                g(2);
            }
            Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.y> collectionInvoke = this.c.invoke(name);
            if (collectionInvoke == null) {
                g(3);
            }
            return collectionInvoke;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Set<Name> f() {
            Set<Name> set = (Set) this.f9116e.k.invoke();
            if (set == null) {
                g(19);
            }
            return set;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private EnumEntrySyntheticClassDescriptor(kotlin.reflect.jvm.internal.impl.storage.h hVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar, kotlin.reflect.jvm.internal.impl.types.u uVar, Name name, kotlin.reflect.jvm.internal.impl.storage.e<Set<Name>> eVar, Annotations annotations, d0 d0Var) {
        super(hVar, dVar, name, d0Var, false);
        if (hVar == null) {
            b0(6);
        }
        if (dVar == null) {
            b0(7);
        }
        if (uVar == null) {
            b0(8);
        }
        if (name == null) {
            b0(9);
        }
        if (eVar == null) {
            b0(10);
        }
        if (annotations == null) {
            b0(11);
        }
        if (d0Var == null) {
            b0(12);
        }
        this.l = annotations;
        this.i = new kotlin.reflect.jvm.internal.impl.types.h(this, Collections.emptyList(), Collections.singleton(uVar), hVar);
        this.j = new a(this, hVar);
        this.k = eVar;
    }

    private static /* synthetic */ void b0(int i) {
        String str;
        int i2;
        switch (i) {
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                i2 = 2;
                break;
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "enumClass";
                break;
            case 2:
            case 9:
                objArr[0] = "name";
                break;
            case 3:
            case 10:
                objArr[0] = "enumMemberNames";
                break;
            case 4:
            case 11:
                objArr[0] = "annotations";
                break;
            case 5:
            case 12:
                objArr[0] = ShareConstants.FEED_SOURCE_PARAM;
                break;
            case 6:
            default:
                objArr[0] = "storageManager";
                break;
            case 7:
                objArr[0] = "containingClass";
                break;
            case 8:
                objArr[0] = "supertype";
                break;
            case 13:
                objArr[0] = "kotlinTypeRefiner";
                break;
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor";
                break;
        }
        switch (i) {
            case 14:
                objArr[1] = "getUnsubstitutedMemberScope";
                break;
            case 15:
                objArr[1] = "getStaticScope";
                break;
            case 16:
                objArr[1] = "getConstructors";
                break;
            case 17:
                objArr[1] = "getTypeConstructor";
                break;
            case 18:
                objArr[1] = "getKind";
                break;
            case 19:
                objArr[1] = "getModality";
                break;
            case 20:
                objArr[1] = "getVisibility";
                break;
            case 21:
                objArr[1] = "getAnnotations";
                break;
            case 22:
                objArr[1] = "getDeclaredTypeParameters";
                break;
            case 23:
                objArr[1] = "getSealedSubclasses";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor";
                break;
        }
        switch (i) {
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                objArr[2] = "<init>";
                break;
            case 13:
                objArr[2] = "getUnsubstitutedMemberScope";
                break;
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                break;
            default:
                objArr[2] = "create";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public static EnumEntrySyntheticClassDescriptor create(kotlin.reflect.jvm.internal.impl.storage.h hVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar, Name name, kotlin.reflect.jvm.internal.impl.storage.e<Set<Name>> eVar, Annotations annotations, d0 d0Var) {
        if (hVar == null) {
            b0(0);
        }
        if (dVar == null) {
            b0(1);
        }
        if (name == null) {
            b0(2);
        }
        if (eVar == null) {
            b0(3);
        }
        if (annotations == null) {
            b0(4);
        }
        if (d0Var == null) {
            b0(5);
        }
        return new EnumEntrySyntheticClassDescriptor(hVar, dVar, dVar.n(), name, eVar, annotations, d0Var);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.c A() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean C0() {
        return false;
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
            b0(13);
        }
        MemberScope memberScope = this.j;
        if (memberScope == null) {
            b0(14);
        }
        return memberScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
    public boolean c0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> f() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList == null) {
            b0(16);
        }
        return listEmptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public MemberScope f0() {
        MemberScope.b bVar = MemberScope.b.b;
        if (bVar == null) {
            b0(15);
        }
        return bVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.d g0() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public Annotations getAnnotations() {
        Annotations annotations = this.l;
        if (annotations == null) {
            b0(21);
        }
        return annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public ClassKind getKind() {
        ClassKind classKind = ClassKind.ENUM_ENTRY;
        if (classKind == null) {
            b0(18);
        }
        return classKind;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.m, kotlin.reflect.jvm.internal.impl.descriptors.q
    public m0 getVisibility() {
        m0 m0Var = Visibilities.f9100e;
        if (m0Var == null) {
            b0(20);
        }
        return m0Var;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f
    public f0 i() {
        f0 f0Var = this.i;
        if (f0Var == null) {
            b0(17);
        }
        return f0Var;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.g
    public List<i0> o() {
        List<i0> listEmptyList = Collections.emptyList();
        if (listEmptyList == null) {
            b0(22);
        }
        return listEmptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.q
    public Modality p() {
        Modality modality = Modality.FINAL;
        if (modality == null) {
            b0(19);
        }
        return modality;
    }

    public String toString() {
        return "enum entry " + getName();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> v() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList == null) {
            b0(23);
        }
        return listEmptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public boolean x() {
        return false;
    }
}
