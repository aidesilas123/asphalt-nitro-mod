package kotlin.reflect.jvm.internal.impl.types;

import com.unity3d.services.ads.gmascar.utils.ScarConstants;

/* JADX INFO: compiled from: Variance.kt */
/* JADX INFO: loaded from: classes5.dex */
public enum Variance {
    INVARIANT("", true, true, 0),
    IN_VARIANCE(ScarConstants.IN_SIGNAL_KEY, true, false, -1),
    OUT_VARIANCE("out", false, true, 1);


    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f9843e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f9844f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f9845g;
    private final int h;

    Variance(String str, boolean z, boolean z2, int i) {
        this.f9843e = str;
        this.f9844f = z;
        this.f9845g = z2;
        this.h = i;
    }

    public final boolean e() {
        return this.f9845g;
    }

    public final String f() {
        return this.f9843e;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f9843e;
    }
}
