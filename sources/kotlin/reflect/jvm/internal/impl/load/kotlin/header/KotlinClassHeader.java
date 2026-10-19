package kotlin.reflect.jvm.internal.impl.load.kotlin.header;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d;

/* JADX INFO: compiled from: KotlinClassHeader.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class KotlinClassHeader {
    private final Kind a;
    private final d b;
    private final kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String[] f9392d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String[] f9393e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String[] f9394f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f9395g;
    private final int h;
    private final String i;

    /* JADX INFO: compiled from: KotlinClassHeader.kt */
    public enum Kind {
        UNKNOWN(0),
        CLASS(1),
        FILE_FACADE(2),
        SYNTHETIC_CLASS(3),
        MULTIFILE_CLASS(4),
        MULTIFILE_CLASS_PART(5);

        private static final Map<Integer, Kind> h;
        public static final a i = new a(null);
        private final int j;

        /* JADX INFO: compiled from: KotlinClassHeader.kt */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(n nVar) {
                this();
            }

            public final Kind a(int i) {
                Kind kind = (Kind) Kind.h.get(Integer.valueOf(i));
                return kind != null ? kind : Kind.UNKNOWN;
            }
        }

        static {
            Kind[] kindArrValues = values();
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(kindArrValues.length), 16));
            for (Kind kind : kindArrValues) {
                linkedHashMap.put(Integer.valueOf(kind.j), kind);
            }
            h = linkedHashMap;
        }

        Kind(int i2) {
            this.j = i2;
        }

        public static final Kind getById(int i2) {
            return i.a(i2);
        }
    }

    public KotlinClassHeader(Kind kind, d metadataVersion, kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.a bytecodeVersion, String[] strArr, String[] strArr2, String[] strArr3, String str, int i, String str2) {
        Intrinsics.checkParameterIsNotNull(kind, "kind");
        Intrinsics.checkParameterIsNotNull(metadataVersion, "metadataVersion");
        Intrinsics.checkParameterIsNotNull(bytecodeVersion, "bytecodeVersion");
        this.a = kind;
        this.b = metadataVersion;
        this.c = bytecodeVersion;
        this.f9392d = strArr;
        this.f9393e = strArr2;
        this.f9394f = strArr3;
        this.f9395g = str;
        this.h = i;
        this.i = str2;
    }

    public final String[] a() {
        return this.f9392d;
    }

    public final String[] b() {
        return this.f9393e;
    }

    public final Kind c() {
        return this.a;
    }

    public final d d() {
        return this.b;
    }

    public final String e() {
        String str = this.f9395g;
        if (this.a == Kind.MULTIFILE_CLASS_PART) {
            return str;
        }
        return null;
    }

    public final List<String> f() {
        String[] strArr = this.f9392d;
        if (!(this.a == Kind.MULTIFILE_CLASS)) {
            strArr = null;
        }
        List<String> listAsList = strArr != null ? ArraysKt___ArraysJvmKt.asList(strArr) : null;
        return listAsList != null ? listAsList : CollectionsKt__CollectionsKt.emptyList();
    }

    public final String[] g() {
        return this.f9394f;
    }

    public final boolean h() {
        return (this.h & 2) != 0;
    }

    public String toString() {
        return this.a + " version=" + this.b;
    }
}
