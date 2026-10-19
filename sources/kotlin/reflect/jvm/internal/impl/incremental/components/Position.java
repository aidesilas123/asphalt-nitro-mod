package kotlin.reflect.jvm.internal.impl.incremental.components;

import java.io.Serializable;
import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: LookupLocation.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class Position implements Serializable {
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f9170d;
    public static final a b = new a(null);
    private static final Position a = new Position(-1, -1);

    /* JADX INFO: compiled from: LookupLocation.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final Position a() {
            return Position.a;
        }
    }

    public Position(int i, int i2) {
        this.c = i;
        this.f9170d = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Position)) {
            return false;
        }
        Position position = (Position) obj;
        return this.c == position.c && this.f9170d == position.f9170d;
    }

    public int hashCode() {
        return (this.c * 31) + this.f9170d;
    }

    public String toString() {
        return "Position(line=" + this.c + ", column=" + this.f9170d + ")";
    }
}
