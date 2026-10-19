package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.c;

/* JADX INFO: compiled from: MemberSignature.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class n {
    public static final a a = new a(null);
    private final String b;

    /* JADX INFO: compiled from: MemberSignature.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final n a(String name, String desc) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(desc, "desc");
            return new n(name + '#' + desc, null);
        }

        public final n b(kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.c signature) {
            Intrinsics.checkParameterIsNotNull(signature, "signature");
            if (signature instanceof c.b) {
                return d(signature.c(), signature.b());
            }
            if (signature instanceof c.a) {
                return a(signature.c(), signature.b());
            }
            throw new NoWhenBranchMatchedException();
        }

        public final n c(kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver, JvmProtoBuf.JvmMethodSignature signature) {
            Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
            Intrinsics.checkParameterIsNotNull(signature, "signature");
            return d(nameResolver.getString(signature.r()), nameResolver.getString(signature.q()));
        }

        public final n d(String name, String desc) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(desc, "desc");
            return new n(name + desc, null);
        }

        public final n e(n signature, int i) {
            Intrinsics.checkParameterIsNotNull(signature, "signature");
            return new n(signature.a() + '@' + i, null);
        }
    }

    private n(String str) {
        this.b = str;
    }

    public /* synthetic */ n(String str, kotlin.jvm.internal.n nVar) {
        this(str);
    }

    public final String a() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof n) && Intrinsics.areEqual(this.b, ((n) obj).b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.b;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "MemberSignature(signature=" + this.b + ")";
    }
}
