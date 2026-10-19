package kotlin.reflect.jvm.internal.impl.types.model;

import com.unity3d.services.ads.gmascar.utils.ScarConstants;

/* JADX INFO: compiled from: TypeSystemContext.kt */
/* JADX INFO: loaded from: classes5.dex */
public enum TypeVariance {
    IN(ScarConstants.IN_SIGNAL_KEY),
    OUT("out"),
    INV("");


    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f9866e;

    TypeVariance(String str) {
        this.f9866e = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f9866e;
    }
}
