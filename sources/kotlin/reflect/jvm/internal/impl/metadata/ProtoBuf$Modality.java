package kotlin.reflect.jvm.internal.impl.metadata;

import kotlin.reflect.jvm.internal.impl.protobuf.Internal;

/* JADX INFO: loaded from: classes5.dex */
public enum ProtoBuf$Modality implements Internal.a {
    FINAL(0, 0),
    OPEN(1, 1),
    ABSTRACT(2, 2),
    SEALED(3, 3);


    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Internal.b<ProtoBuf$Modality> f9498e = new Internal.b<ProtoBuf$Modality>() { // from class: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Modality.a
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.b
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$Modality findValueByNumber(int i) {
            return ProtoBuf$Modality.valueOf(i);
        }
    };

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f9500g;

    ProtoBuf$Modality(int i, int i2) {
        this.f9500g = i2;
    }

    public static ProtoBuf$Modality valueOf(int i) {
        if (i == 0) {
            return FINAL;
        }
        if (i == 1) {
            return OPEN;
        }
        if (i == 2) {
            return ABSTRACT;
        }
        if (i != 3) {
            return null;
        }
        return SEALED;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.a
    public final int getNumber() {
        return this.f9500g;
    }
}
