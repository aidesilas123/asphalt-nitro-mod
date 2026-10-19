package kotlin.reflect.jvm.internal.impl.util;

import java.util.Arrays;
import java.util.Collection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.util.b;
import kotlin.text.Regex;

/* JADX INFO: compiled from: modifierChecks.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class c {
    private final Name a;
    private final Regex b;
    private final Collection<Name> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function1<o, String> f9881d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Check[] f9882e;

    /* JADX INFO: compiled from: modifierChecks.kt */
    static final class a extends Lambda implements Function1 {
        public static final a a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Void invoke(o receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            return null;
        }
    }

    /* JADX INFO: compiled from: modifierChecks.kt */
    static final class b extends Lambda implements Function1 {
        public static final b a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Void invoke(o receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            return null;
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.util.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: modifierChecks.kt */
    static final class C0555c extends Lambda implements Function1 {
        public static final C0555c a = new C0555c();

        C0555c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Void invoke(o receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            return null;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c(Collection<Name> nameList, Check[] checks, Function1<? super o, String> additionalChecks) {
        this((Name) null, (Regex) null, nameList, additionalChecks, (Check[]) Arrays.copyOf(checks, checks.length));
        Intrinsics.checkParameterIsNotNull(nameList, "nameList");
        Intrinsics.checkParameterIsNotNull(checks, "checks");
        Intrinsics.checkParameterIsNotNull(additionalChecks, "additionalChecks");
    }

    public /* synthetic */ c(Collection collection, Check[] checkArr, Function1 function1, int i, n nVar) {
        this((Collection<Name>) collection, checkArr, (Function1<? super o, String>) ((i & 4) != 0 ? C0555c.a : function1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private c(Name name, Regex regex, Collection<Name> collection, Function1<? super o, String> function1, Check... checkArr) {
        this.a = name;
        this.b = regex;
        this.c = collection;
        this.f9881d = function1;
        this.f9882e = checkArr;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c(Name name, Check[] checks, Function1<? super o, String> additionalChecks) {
        this(name, (Regex) null, (Collection<Name>) null, additionalChecks, (Check[]) Arrays.copyOf(checks, checks.length));
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(checks, "checks");
        Intrinsics.checkParameterIsNotNull(additionalChecks, "additionalChecks");
    }

    public /* synthetic */ c(Name name, Check[] checkArr, Function1 function1, int i, n nVar) {
        this(name, checkArr, (Function1<? super o, String>) ((i & 4) != 0 ? a.a : function1));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c(Regex regex, Check[] checks, Function1<? super o, String> additionalChecks) {
        this((Name) null, regex, (Collection<Name>) null, additionalChecks, (Check[]) Arrays.copyOf(checks, checks.length));
        Intrinsics.checkParameterIsNotNull(regex, "regex");
        Intrinsics.checkParameterIsNotNull(checks, "checks");
        Intrinsics.checkParameterIsNotNull(additionalChecks, "additionalChecks");
    }

    public /* synthetic */ c(Regex regex, Check[] checkArr, Function1 function1, int i, n nVar) {
        this(regex, checkArr, (Function1<? super o, String>) ((i & 4) != 0 ? b.a : function1));
    }

    public final kotlin.reflect.jvm.internal.impl.util.b a(o functionDescriptor) {
        Intrinsics.checkParameterIsNotNull(functionDescriptor, "functionDescriptor");
        for (Check check : this.f9882e) {
            String strA = check.a(functionDescriptor);
            if (strA != null) {
                return new b.C0554b(strA);
            }
        }
        String strInvoke = this.f9881d.invoke(functionDescriptor);
        return strInvoke != null ? new b.C0554b(strInvoke) : b.c.b;
    }

    public final boolean b(o functionDescriptor) {
        Intrinsics.checkParameterIsNotNull(functionDescriptor, "functionDescriptor");
        if (this.a != null && (!Intrinsics.areEqual(functionDescriptor.getName(), this.a))) {
            return false;
        }
        if (this.b != null) {
            String strE = functionDescriptor.getName().e();
            Intrinsics.checkExpressionValueIsNotNull(strE, "functionDescriptor.name.asString()");
            if (!this.b.e(strE)) {
                return false;
            }
        }
        Collection<Name> collection = this.c;
        return collection == null || collection.contains(functionDescriptor.getName());
    }
}
