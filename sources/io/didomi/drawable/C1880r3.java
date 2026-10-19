package io.didomi.drawable;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.r3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J)\u0010\b\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u001b\u0010\b\u001a\u00020\u00052\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\b\u0010\rJ'\u0010\u000e\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u000e\u0010\t¨\u0006\u000f"}, d2 = {"Lio/didomi/sdk/r3;", "", "<init>", "()V", "", "", "list", "prefix", "a", "(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;", "", "Lio/didomi/sdk/o0;", "dataProcessings", "(Ljava/util/Collection;)Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "android_release"}, mv = {1, 8, 0})
public final class C1880r3 {
    public static final C1880r3 a = new C1880r3();

    private C1880r3() {
    }

    static /* synthetic */ String a(C1880r3 c1880r3, List list, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "•";
        }
        return c1880r3.a(list, str);
    }

    private final String a(List<String> list, String prefix) {
        if (prefix != null) {
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(prefix + ' ' + ((String) it.next()));
            }
            list = arrayList;
        }
        return CollectionsKt___CollectionsKt.joinToString$default(CollectionsKt___CollectionsKt.sorted(list), "\n", null, null, 0, null, null, 62, null);
    }

    public static /* synthetic */ String b(C1880r3 c1880r3, List list, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "•";
        }
        return c1880r3.b(list, str);
    }

    public final String a(Collection<? extends InterfaceC1847o0> dataProcessings) {
        Intrinsics.checkNotNullParameter(dataProcessings, "dataProcessings");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(dataProcessings, 10));
        Iterator<T> it = dataProcessings.iterator();
        while (it.hasNext()) {
            arrayList.add(((InterfaceC1847o0) it.next()).getName());
        }
        return a(this, arrayList, null, 2, null);
    }

    public final String b(List<String> list, String prefix) {
        List<String> list2;
        Intrinsics.checkNotNullParameter(list, "list");
        if (prefix != null) {
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(prefix + ' ' + ((String) it.next()));
            }
            list2 = arrayList;
        } else {
            list2 = list;
        }
        return CollectionsKt___CollectionsKt.joinToString$default(list2, "\n", null, null, 0, null, null, 62, null);
    }
}
