package okio;

import java.util.ArrayList;
import java.util.Map;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: compiled from: FileMetadata.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class FileMetadata {
    private final boolean a;
    private final boolean b;
    private final Path c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Long f10849d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Long f10850e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Long f10851f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Long f10852g;
    private final Map<KClass<?>, Object> h;

    public FileMetadata() {
        this(false, false, null, null, null, null, null, null, 255, null);
    }

    public FileMetadata(boolean z, boolean z2, Path path, Long l, Long l2, Long l3, Long l4, Map<KClass<?>, ? extends Object> extras) {
        Intrinsics.checkNotNullParameter(extras, "extras");
        this.a = z;
        this.b = z2;
        this.c = path;
        this.f10849d = l;
        this.f10850e = l2;
        this.f10851f = l3;
        this.f10852g = l4;
        this.h = MapsKt__MapsKt.toMap(extras);
    }

    public /* synthetic */ FileMetadata(boolean z, boolean z2, Path path, Long l, Long l2, Long l3, Long l4, Map map, int i, kotlin.jvm.internal.n nVar) {
        this((i & 1) != 0 ? false : z, (i & 2) == 0 ? z2 : false, (i & 4) != 0 ? null : path, (i & 8) != 0 ? null : l, (i & 16) != 0 ? null : l2, (i & 32) != 0 ? null : l3, (i & 64) == 0 ? l4 : null, (i & 128) != 0 ? MapsKt__MapsKt.emptyMap() : map);
    }

    public final FileMetadata a(boolean z, boolean z2, Path path, Long l, Long l2, Long l3, Long l4, Map<KClass<?>, ? extends Object> extras) {
        Intrinsics.checkNotNullParameter(extras, "extras");
        return new FileMetadata(z, z2, path, l, l2, l3, l4, extras);
    }

    public final Long b() {
        return this.f10851f;
    }

    public final Long c() {
        return this.f10849d;
    }

    public final Path d() {
        return this.c;
    }

    public final boolean e() {
        return this.b;
    }

    public final boolean f() {
        return this.a;
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.a) {
            arrayList.add("isRegularFile");
        }
        if (this.b) {
            arrayList.add("isDirectory");
        }
        Long l = this.f10849d;
        if (l != null) {
            arrayList.add(Intrinsics.stringPlus("byteCount=", l));
        }
        Long l2 = this.f10850e;
        if (l2 != null) {
            arrayList.add(Intrinsics.stringPlus("createdAt=", l2));
        }
        Long l3 = this.f10851f;
        if (l3 != null) {
            arrayList.add(Intrinsics.stringPlus("lastModifiedAt=", l3));
        }
        Long l4 = this.f10852g;
        if (l4 != null) {
            arrayList.add(Intrinsics.stringPlus("lastAccessedAt=", l4));
        }
        if (!this.h.isEmpty()) {
            arrayList.add(Intrinsics.stringPlus("extras=", this.h));
        }
        return CollectionsKt___CollectionsKt.joinToString$default(arrayList, ", ", "FileMetadata(", ")", 0, null, null, 56, null);
    }
}
