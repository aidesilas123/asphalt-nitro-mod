package kotlin.reflect.jvm.internal.impl.utils;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Lambda;
import kotlin.v;

/* JADX INFO: compiled from: functions.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class FunctionsKt {
    private static final Function1<Object, Object> a = f.a;
    private static final Function1<Object, Boolean> b = b.a;
    private static final Function1<Object, Object> c = a.a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Function1<Object, v> f9890d = c.a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Function2<Object, Object, v> f9891e = d.a;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Function3<Object, Object, Object, v> f9892f = e.a;

    /* JADX INFO: compiled from: functions.kt */
    static final class a extends Lambda implements Function1 {
        public static final a a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Void invoke(Object obj) {
            return null;
        }
    }

    /* JADX INFO: compiled from: functions.kt */
    static final class b extends Lambda implements Function1<Object, Boolean> {
        public static final b a = new b();

        b() {
            super(1);
        }

        public final boolean a(Object obj) {
            return true;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
            return Boolean.valueOf(a(obj));
        }
    }

    /* JADX INFO: compiled from: functions.kt */
    static final class c extends Lambda implements Function1<Object, v> {
        public static final c a = new c();

        c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(Object obj) {
            invoke2(obj);
            return v.a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Object obj) {
        }
    }

    /* JADX INFO: compiled from: functions.kt */
    static final class d extends Lambda implements Function2<Object, Object, v> {
        public static final d a = new d();

        d() {
            super(2);
        }

        public final void a(Object obj, Object obj2) {
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ v invoke(Object obj, Object obj2) {
            a(obj, obj2);
            return v.a;
        }
    }

    /* JADX INFO: compiled from: functions.kt */
    static final class e extends Lambda implements Function3<Object, Object, Object, v> {
        public static final e a = new e();

        e() {
            super(3);
        }

        public final void a(Object obj, Object obj2, Object obj3) {
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ v invoke(Object obj, Object obj2, Object obj3) {
            a(obj, obj2, obj3);
            return v.a;
        }
    }

    /* JADX INFO: compiled from: functions.kt */
    static final class f extends Lambda implements Function1<Object, Object> {
        public static final f a = new f();

        f() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return obj;
        }
    }

    public static final <T> Function1<T, Boolean> alwaysTrue() {
        return (Function1<T, Boolean>) b;
    }

    public static final Function3<Object, Object, Object, v> getDO_NOTHING_3() {
        return f9892f;
    }
}
