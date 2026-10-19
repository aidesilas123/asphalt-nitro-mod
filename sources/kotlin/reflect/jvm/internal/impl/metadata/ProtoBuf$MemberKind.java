package kotlin.reflect.jvm.internal.impl.metadata;

import kotlin.reflect.jvm.internal.impl.protobuf.Internal;

/* JADX INFO: loaded from: classes5.dex */
public enum ProtoBuf$MemberKind implements Internal.a {
    DECLARATION(0, 0),
    FAKE_OVERRIDE(1, 1),
    DELEGATION(2, 2),
    SYNTHESIZED(3, 3);


    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Internal.b<ProtoBuf$MemberKind> f9494e = new Internal.b<ProtoBuf$MemberKind>() { // from class: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$MemberKind.a
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.b
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ProtoBuf$MemberKind findValueByNumber(int i) {
            return ProtoBuf$MemberKind.valueOf(i);
        }
    };

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f9496g;

    ProtoBuf$MemberKind(int i, int i2) {
        this.f9496g = i2;
    }

    public static ProtoBuf$MemberKind valueOf(int i) {
        if (i == 0) {
            return DECLARATION;
        }
        if (i == 1) {
            return FAKE_OVERRIDE;
        }
        if (i == 2) {
            return DELEGATION;
        }
        if (i != 3) {
            return null;
        }
        return SYNTHESIZED;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.a
    public final int getNumber() {
        return this.f9496g;
    }
}
