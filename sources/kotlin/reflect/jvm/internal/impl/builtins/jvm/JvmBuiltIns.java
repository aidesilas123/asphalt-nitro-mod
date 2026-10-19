package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.e0;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.storage.e;
import kotlin.reflect.jvm.internal.impl.storage.h;

/* JADX INFO: compiled from: JvmBuiltIns.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class JvmBuiltIns extends KotlinBuiltIns {
    static final /* synthetic */ KProperty[] o = {Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(JvmBuiltIns.class), "settings", "getSettings()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsSettings;"))};
    private ModuleDescriptor p;
    private boolean q;
    private final e r;

    /* JADX INFO: compiled from: JvmBuiltIns.kt */
    public enum Kind {
        FROM_DEPENDENCIES,
        FROM_CLASS_LOADER,
        FALLBACK
    }

    /* JADX INFO: compiled from: JvmBuiltIns.kt */
    static final class a extends Lambda implements Function0<JvmBuiltInsSettings> {
        final /* synthetic */ h b;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltIns$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: JvmBuiltIns.kt */
        static final class C0515a extends Lambda implements Function0<ModuleDescriptor> {
            C0515a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final ModuleDescriptor invoke() {
                ModuleDescriptor moduleDescriptor = JvmBuiltIns.this.p;
                if (moduleDescriptor != null) {
                    return moduleDescriptor;
                }
                throw new AssertionError("JvmBuiltins has not been initialized properly");
            }
        }

        /* JADX INFO: compiled from: JvmBuiltIns.kt */
        static final class b extends Lambda implements Function0<Boolean> {
            b() {
                super(0);
            }

            public final boolean c() {
                if (JvmBuiltIns.this.p != null) {
                    return JvmBuiltIns.this.q;
                }
                throw new AssertionError("JvmBuiltins has not been initialized properly");
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Boolean invoke() {
                return Boolean.valueOf(c());
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(h hVar) {
            super(0);
            this.b = hVar;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final JvmBuiltInsSettings invoke() {
            ModuleDescriptorImpl builtInsModule = JvmBuiltIns.this.r();
            Intrinsics.checkExpressionValueIsNotNull(builtInsModule, "builtInsModule");
            return new JvmBuiltInsSettings(builtInsModule, this.b, new C0515a(), new b());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JvmBuiltIns(h storageManager, Kind kind) {
        super(storageManager);
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        Intrinsics.checkParameterIsNotNull(kind, "kind");
        this.q = true;
        this.r = storageManager.c(new a(storageManager));
        int i = kotlin.reflect.jvm.internal.impl.builtins.jvm.a.a[kind.ordinal()];
        if (i == 2) {
            g(false);
        } else {
            if (i != 3) {
                return;
            }
            g(true);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns
    protected kotlin.reflect.jvm.internal.impl.descriptors.deserialization.c M() {
        return c0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns
    /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] */
    public List<kotlin.reflect.jvm.internal.impl.descriptors.deserialization.b> v() {
        Iterable<kotlin.reflect.jvm.internal.impl.descriptors.deserialization.b> iterableV = super.v();
        Intrinsics.checkExpressionValueIsNotNull(iterableV, "super.getClassDescriptorFactories()");
        h storageManager = R();
        Intrinsics.checkExpressionValueIsNotNull(storageManager, "storageManager");
        ModuleDescriptorImpl builtInsModule = r();
        Intrinsics.checkExpressionValueIsNotNull(builtInsModule, "builtInsModule");
        return CollectionsKt___CollectionsKt.plus(iterableV, new JvmBuiltInClassDescriptorFactory(storageManager, builtInsModule, null, 4, null));
    }

    public final JvmBuiltInsSettings c0() {
        return (JvmBuiltInsSettings) StorageKt.getValue(this.r, this, (KProperty<?>) o[0]);
    }

    public final void d0(ModuleDescriptor moduleDescriptor, boolean z) {
        Intrinsics.checkParameterIsNotNull(moduleDescriptor, "moduleDescriptor");
        ModuleDescriptor moduleDescriptor2 = this.p;
        this.p = moduleDescriptor;
        this.q = z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns
    protected kotlin.reflect.jvm.internal.impl.descriptors.deserialization.a h() {
        return c0();
    }
}
