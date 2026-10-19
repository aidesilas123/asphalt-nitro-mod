package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.Collection;
import java.util.Set;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope;

/* JADX INFO: compiled from: MemberScope.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface MemberScope extends ResolutionScope {
    public static final a a = a.b;

    /* JADX INFO: compiled from: MemberScope.kt */
    public static final class DefaultImpls {
        public static void recordLookup(MemberScope memberScope, Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(location, "location");
            ResolutionScope.DefaultImpls.recordLookup(memberScope, name, location);
        }
    }

    /* JADX INFO: compiled from: MemberScope.kt */
    public static final class a {
        static final /* synthetic */ a b = new a();
        private static final Function1<Name, Boolean> a = C0544a.a;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: MemberScope.kt */
        static final class C0544a extends Lambda implements Function1<Name, Boolean> {
            public static final C0544a a = new C0544a();

            C0544a() {
                super(1);
            }

            public final boolean a(Name it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                return true;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Name name) {
                return Boolean.valueOf(a(name));
            }
        }

        private a() {
        }

        public final Function1<Name, Boolean> a() {
            return a;
        }
    }

    /* JADX INFO: compiled from: MemberScope.kt */
    public static final class b extends f {
        public static final b b = new b();

        private b() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Set<Name> b() {
            return SetsKt__SetsKt.emptySet();
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Set<Name> f() {
            return SetsKt__SetsKt.emptySet();
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    Collection<? extends c0> a(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar);

    Set<Name> b();

    Collection<? extends y> e(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar);

    Set<Name> f();
}
