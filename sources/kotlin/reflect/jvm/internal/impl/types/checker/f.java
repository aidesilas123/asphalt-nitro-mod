package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.types.checker.d;

/* JADX INFO: compiled from: NewKotlinTypeChecker.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface f extends c {
    public static final a b = a.b;

    /* JADX INFO: compiled from: NewKotlinTypeChecker.kt */
    public static final class a {
        static final /* synthetic */ a b = new a();
        private static final g a = new g(d.a.a);

        private a() {
        }

        public final g a() {
            return a;
        }
    }

    OverridingUtil a();

    d c();
}
