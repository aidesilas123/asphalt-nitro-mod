package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod;
import kotlin.reflect.jvm.internal.impl.load.java.structure.m;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: compiled from: DeclaredMemberIndex.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface a {

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DeclaredMemberIndex.kt */
    public static final class C0528a implements a {
        public static final C0528a a = new C0528a();

        private C0528a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a
        public Set<Name> a() {
            return SetsKt__SetsKt.emptySet();
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a
        public Set<Name> b() {
            return SetsKt__SetsKt.emptySet();
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a
        public m d(Name name) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public List<JavaMethod> c(Name name) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            return CollectionsKt__CollectionsKt.emptyList();
        }
    }

    Set<Name> a();

    Set<Name> b();

    Collection<JavaMethod> c(Name name);

    m d(Name name);
}
