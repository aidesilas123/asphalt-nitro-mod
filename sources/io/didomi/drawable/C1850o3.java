package io.didomi.drawable;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.iabtcf.decoder.utils.IntIterable;
import io.didomi.iabtcf.decoder.utils.IntIterator;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.o3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\b\nB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001b\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lio/didomi/sdk/o3;", "", "<init>", "()V", "", "", "intSet", "Lio/didomi/iabtcf/decoder/utils/IntIterable;", "a", "(Ljava/util/Set;)Lio/didomi/iabtcf/decoder/utils/IntIterable;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "android_release"}, mv = {1, 8, 0})
public final class C1850o3 {
    public static final C1850o3 a = new C1850o3();

    /* JADX INFO: renamed from: io.didomi.sdk.o3$a */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010#\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0096\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00030\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Lio/didomi/sdk/o3$a;", "Lio/didomi/iabtcf/decoder/utils/IntIterable;", "", "", "intSet", "<init>", "(Ljava/util/Set;)V", "element", "", "contains", "(I)Z", "Lio/didomi/sdk/o3$b;", "intIterator", "()Lio/didomi/sdk/o3$b;", "", "other", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "", "a", "Ljava/util/Set;", "mutableIntSet", "android_release"}, mv = {1, 8, 0})
    public static final class a extends IntIterable {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final Set<Integer> mutableIntSet;

        public a(Set<Integer> intSet) {
            Intrinsics.checkNotNullParameter(intSet, "intSet");
            this.mutableIntSet = CollectionsKt___CollectionsKt.toMutableSet(intSet);
        }

        @Override // io.didomi.iabtcf.decoder.utils.IntIterable
        public boolean contains(int element) {
            return this.mutableIntSet.contains(Integer.valueOf(element));
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (other instanceof IntIterable) {
                return Intrinsics.areEqual(this.mutableIntSet, ((IntIterable) other).toSet());
            }
            return false;
        }

        public int hashCode() {
            return this.mutableIntSet.hashCode();
        }

        @Override // io.didomi.iabtcf.decoder.utils.IntIterable
        public b intIterator() {
            return new b(this.mutableIntSet);
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.o3$b */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010#\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010)\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eH\u0096\u0002¢\u0006\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00030\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0012¨\u0006\u0014"}, d2 = {"Lio/didomi/sdk/o3$b;", "Lio/didomi/iabtcf/decoder/utils/IntIterator;", "", "", "intSet", "<init>", "(Ljava/util/Set;)V", "a", "()Ljava/lang/Integer;", "nextInt", "()I", "", "remove", "()V", "", "hasNext", "()Z", "", "Ljava/util/Iterator;", "iterator", "android_release"}, mv = {1, 8, 0})
    public static final class b implements IntIterator {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final Iterator<Integer> iterator;

        public b(Set<Integer> intSet) {
            Intrinsics.checkNotNullParameter(intSet, "intSet");
            this.iterator = CollectionsKt___CollectionsKt.toMutableList((Collection) intSet).iterator();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer next() {
            return this.iterator.next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.iterator.hasNext();
        }

        @Override // io.didomi.iabtcf.decoder.utils.OfInt
        public int nextInt() {
            return this.iterator.next().intValue();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.iterator.remove();
        }
    }

    private C1850o3() {
    }

    public final IntIterable a(Set<Integer> intSet) {
        Intrinsics.checkNotNullParameter(intSet, "intSet");
        return new a(intSet);
    }
}
