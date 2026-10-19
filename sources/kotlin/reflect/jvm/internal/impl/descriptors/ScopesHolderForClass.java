package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;

/* JADX INFO: compiled from: ScopesHolderForClass.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ScopesHolderForClass<T extends MemberScope> {
    static final /* synthetic */ KProperty[] a = {Reflection.property1(new kotlin.jvm.internal.e0(Reflection.getOrCreateKotlinClass(ScopesHolderForClass.class), "scopeForOwnerModule", "getScopeForOwnerModule()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"))};
    public static final a b = new a(null);
    private final kotlin.reflect.jvm.internal.impl.storage.e c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d f9096d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function1<kotlin.reflect.jvm.internal.impl.types.checker.d, T> f9097e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.types.checker.d f9098f;

    /* JADX INFO: compiled from: ScopesHolderForClass.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final <T extends MemberScope> ScopesHolderForClass<T> a(d classDescriptor, kotlin.reflect.jvm.internal.impl.storage.h storageManager, kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefinerForOwnerModule, Function1<? super kotlin.reflect.jvm.internal.impl.types.checker.d, ? extends T> scopeFactory) {
            Intrinsics.checkParameterIsNotNull(classDescriptor, "classDescriptor");
            Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
            Intrinsics.checkParameterIsNotNull(kotlinTypeRefinerForOwnerModule, "kotlinTypeRefinerForOwnerModule");
            Intrinsics.checkParameterIsNotNull(scopeFactory, "scopeFactory");
            return new ScopesHolderForClass<>(classDescriptor, storageManager, scopeFactory, kotlinTypeRefinerForOwnerModule, null);
        }
    }

    /* JADX INFO: compiled from: ScopesHolderForClass.kt */
    static final class b extends Lambda implements Function0<T> {
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.types.checker.d b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(kotlin.reflect.jvm.internal.impl.types.checker.d dVar) {
            super(0);
            this.b = dVar;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final T invoke() {
            return (T) ScopesHolderForClass.this.f9097e.invoke(this.b);
        }
    }

    /* JADX INFO: compiled from: ScopesHolderForClass.kt */
    static final class c extends Lambda implements Function0<T> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final T invoke() {
            return (T) ScopesHolderForClass.this.f9097e.invoke(ScopesHolderForClass.this.f9098f);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ScopesHolderForClass(d dVar, kotlin.reflect.jvm.internal.impl.storage.h hVar, Function1<? super kotlin.reflect.jvm.internal.impl.types.checker.d, ? extends T> function1, kotlin.reflect.jvm.internal.impl.types.checker.d dVar2) {
        this.f9096d = dVar;
        this.f9097e = function1;
        this.f9098f = dVar2;
        this.c = hVar.c(new c());
    }

    public /* synthetic */ ScopesHolderForClass(d dVar, kotlin.reflect.jvm.internal.impl.storage.h hVar, Function1 function1, kotlin.reflect.jvm.internal.impl.types.checker.d dVar2, kotlin.jvm.internal.n nVar) {
        this(dVar, hVar, function1, dVar2);
    }

    private final T b() {
        return (T) StorageKt.getValue(this.c, this, (KProperty<?>) a[0]);
    }

    public final T a(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        if (!kotlinTypeRefiner.c(DescriptorUtilsKt.getModule(this.f9096d))) {
            return (T) b();
        }
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarI = this.f9096d.i();
        Intrinsics.checkExpressionValueIsNotNull(f0VarI, "classDescriptor.typeConstructor");
        return !kotlinTypeRefiner.d(f0VarI) ? (T) b() : (T) kotlinTypeRefiner.b(this.f9096d, new b(kotlinTypeRefiner));
    }
}
