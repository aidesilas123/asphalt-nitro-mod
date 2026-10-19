package com.json;

import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\r\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0014\u0010\u0005\u001a\u00020\u00042\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001H\u0002J-\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00022\u0016\u0010\b\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0007\"\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0005\u0010\tJ\u0016\u0010\u000b\u001a\u00020\u00042\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0002R\u0014\u0010\r\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u000f\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\fR\u0014\u0010\u0011\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\f¨\u0006\u0014"}, d2 = {"Lcom/ironsource/jc;", "", "", "list", "", "a", "elem", "", "items", "([Ljava/lang/Object;)Ljava/util/List;", "methodArgs", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "CONST_COMMA", "c", "CONST_START_OF_ARRAY", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "CONST_END_OF_ARRAY", "<init>", "()V", "mediationsdk_release"}, mv = {1, 8, 0})
public final class jc {
    public static final jc a = new jc();

    private jc() {
    }

    private final String a(Object elem) {
        if (!(elem instanceof String)) {
            return String.valueOf(elem);
        }
        StringBuilder sb = new StringBuilder();
        sb.append('\'');
        sb.append(elem);
        sb.append('\'');
        return sb.toString();
    }

    private final String c(List<?> list) {
        Iterator<T> it = list.iterator();
        String str = o2.i.f6490d;
        while (it.hasNext()) {
            str = str + a.a(it.next()) + ',';
        }
        return StringsKt__StringsKt.removeSuffix(str, (CharSequence) ",") + ']';
    }

    public final List<Object> a(Object... items) {
        Intrinsics.checkNotNullParameter(items, "items");
        return CollectionsKt__CollectionsKt.listOf(Arrays.copyOf(items, items.length));
    }

    public final String b(List<? extends Object> methodArgs) {
        Intrinsics.checkNotNullParameter(methodArgs, "methodArgs");
        String str = new String();
        for (Object obj : methodArgs) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(obj instanceof List ? a.c((List) obj) : a.a(obj));
            str = sb.toString() + ',';
        }
        return StringsKt__StringsKt.removeSuffix(str, (CharSequence) ",");
    }
}
