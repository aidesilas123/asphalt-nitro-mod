package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;

/* JADX INFO: compiled from: MemberScope.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class c {

    /* JADX INFO: compiled from: MemberScope.kt */
    public static final class a extends c {
        private static final int a;
        public static final a b = new a();

        static {
            DescriptorKindFilter.Companion companion = DescriptorKindFilter.x;
            a = (~(companion.h() | companion.c())) & companion.a();
        }

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.c
        public int a() {
            return a;
        }
    }

    /* JADX INFO: compiled from: MemberScope.kt */
    public static final class b extends c {
        public static final b a = new b();

        private b() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.c
        public int a() {
            return 0;
        }
    }

    public abstract int a();

    public String toString() {
        return getClass().getSimpleName();
    }
}
