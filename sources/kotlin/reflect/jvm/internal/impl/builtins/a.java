package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.ServiceLoader;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.p;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.t;
import kotlin.reflect.jvm.internal.impl.storage.h;

/* JADX INFO: compiled from: BuiltInsLoader.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface a {
    public static final C0513a a = C0513a.b;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.builtins.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BuiltInsLoader.kt */
    public static final class C0513a {
        static final /* synthetic */ C0513a b = new C0513a();
        private static final Lazy a = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.b, (Function0) C0514a.a);

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.builtins.a$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: BuiltInsLoader.kt */
        static final class C0514a extends Lambda implements Function0<a> {
            public static final C0514a a = new C0514a();

            C0514a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final a invoke() {
                ServiceLoader implementations = ServiceLoader.load(a.class, a.class.getClassLoader());
                Intrinsics.checkExpressionValueIsNotNull(implementations, "implementations");
                a aVar = (a) p.firstOrNull(implementations);
                if (aVar != null) {
                    return aVar;
                }
                throw new IllegalStateException("No BuiltInsLoader implementation was found. Please ensure that the META-INF/services/ is not stripped from your application and that the Java virtual machine is not running under a security manager");
            }
        }

        private C0513a() {
        }

        public final a a() {
            return (a) a.getValue();
        }
    }

    t a(h hVar, ModuleDescriptor moduleDescriptor, Iterable<? extends kotlin.reflect.jvm.internal.impl.descriptors.deserialization.b> iterable, kotlin.reflect.jvm.internal.impl.descriptors.deserialization.c cVar, kotlin.reflect.jvm.internal.impl.descriptors.deserialization.a aVar, boolean z);
}
