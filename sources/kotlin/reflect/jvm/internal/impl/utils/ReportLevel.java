package kotlin.reflect.jvm.internal.impl.utils;

import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: Jsr305State.kt */
/* JADX INFO: loaded from: classes5.dex */
public enum ReportLevel {
    IGNORE("ignore"),
    WARN("warn"),
    STRICT("strict");


    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f9894e = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f9895f;

    /* JADX INFO: compiled from: Jsr305State.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    ReportLevel(String str) {
        this.f9895f = str;
    }

    public final String e() {
        return this.f9895f;
    }

    public final boolean f() {
        return this == IGNORE;
    }

    public final boolean g() {
        return this == WARN;
    }
}
