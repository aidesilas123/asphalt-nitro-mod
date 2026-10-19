package kotlin.reflect.jvm.internal.impl.util;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.types.y;
import kotlin.reflect.jvm.internal.impl.util.Check;

/* JADX INFO: compiled from: modifierChecks.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class j implements Check {
    private final String a;
    private final String b;
    private final Function1<KotlinBuiltIns, u> c;

    /* JADX INFO: compiled from: modifierChecks.kt */
    public static final class a extends j {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final a f9887d = new a();

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.util.j$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: modifierChecks.kt */
        static final class C0556a extends Lambda implements Function1<KotlinBuiltIns, y> {
            public static final C0556a a = new C0556a();

            C0556a() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final y invoke(KotlinBuiltIns receiver) {
                Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
                y booleanType = receiver.n();
                Intrinsics.checkExpressionValueIsNotNull(booleanType, "booleanType");
                return booleanType;
            }
        }

        private a() {
            super("Boolean", C0556a.a, null);
        }
    }

    /* JADX INFO: compiled from: modifierChecks.kt */
    public static final class b extends j {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final b f9888d = new b();

        /* JADX INFO: compiled from: modifierChecks.kt */
        static final class a extends Lambda implements Function1<KotlinBuiltIns, y> {
            public static final a a = new a();

            a() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final y invoke(KotlinBuiltIns receiver) {
                Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
                y intType = receiver.D();
                Intrinsics.checkExpressionValueIsNotNull(intType, "intType");
                return intType;
            }
        }

        private b() {
            super("Int", a.a, null);
        }
    }

    /* JADX INFO: compiled from: modifierChecks.kt */
    public static final class c extends j {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final c f9889d = new c();

        /* JADX INFO: compiled from: modifierChecks.kt */
        static final class a extends Lambda implements Function1<KotlinBuiltIns, y> {
            public static final a a = new a();

            a() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final y invoke(KotlinBuiltIns receiver) {
                Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
                y unitType = receiver.W();
                Intrinsics.checkExpressionValueIsNotNull(unitType, "unitType");
                return unitType;
            }
        }

        private c() {
            super("Unit", a.a, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private j(String str, Function1<? super KotlinBuiltIns, ? extends u> function1) {
        this.b = str;
        this.c = function1;
        this.a = "must return " + str;
    }

    public /* synthetic */ j(String str, Function1 function1, n nVar) {
        this(str, function1);
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public String a(o functionDescriptor) {
        Intrinsics.checkParameterIsNotNull(functionDescriptor, "functionDescriptor");
        return Check.DefaultImpls.invoke(this, functionDescriptor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public boolean b(o functionDescriptor) {
        Intrinsics.checkParameterIsNotNull(functionDescriptor, "functionDescriptor");
        return Intrinsics.areEqual(functionDescriptor.getReturnType(), this.c.invoke(DescriptorUtilsKt.getBuiltIns(functionDescriptor)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public String getDescription() {
        return this.a;
    }
}
