package kotlin.reflect.jvm.internal.impl.util;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.util.Check;

/* JADX INFO: compiled from: modifierChecks.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class e implements Check {
    private final String a;

    /* JADX INFO: compiled from: modifierChecks.kt */
    public static final class a extends e {
        public static final a b = new a();

        private a() {
            super("must be a member function", null);
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.Check
        public boolean b(o functionDescriptor) {
            Intrinsics.checkParameterIsNotNull(functionDescriptor, "functionDescriptor");
            return functionDescriptor.H() != null;
        }
    }

    /* JADX INFO: compiled from: modifierChecks.kt */
    public static final class b extends e {
        public static final b b = new b();

        private b() {
            super("must be a member or an extension function", null);
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.Check
        public boolean b(o functionDescriptor) {
            Intrinsics.checkParameterIsNotNull(functionDescriptor, "functionDescriptor");
            return (functionDescriptor.H() == null && functionDescriptor.K() == null) ? false : true;
        }
    }

    private e(String str) {
        this.a = str;
    }

    public /* synthetic */ e(String str, n nVar) {
        this(str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public String a(o functionDescriptor) {
        Intrinsics.checkParameterIsNotNull(functionDescriptor, "functionDescriptor");
        return Check.DefaultImpls.invoke(this, functionDescriptor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public String getDescription() {
        return this.a;
    }
}
