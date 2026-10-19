package com.bytedance.sdk.openadsdk.core.g.c;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: VastMacroHelper.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {

    @NonNull
    private final List<String> a;

    @NonNull
    private final Map<b, String> b;

    public c(@NonNull List<String> list) {
        this.a = list;
        HashMap map = new HashMap();
        this.b = map;
        map.put(b.CACHEBUSTING, b());
    }

    @NonNull
    private String b() {
        return String.format(Locale.US, "%08d", Long.valueOf(Math.round(Math.random() * 1.0E8d)));
    }

    @NonNull
    private String b(long j) {
        Locale locale = Locale.getDefault();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        return String.format(locale, "%02d:%02d:%02d.%03d", Long.valueOf(timeUnit.toHours(j)), Long.valueOf(timeUnit.toMinutes(j) % TimeUnit.HOURS.toMinutes(1L)), Long.valueOf(timeUnit.toSeconds(j) % TimeUnit.MINUTES.toSeconds(1L)), Long.valueOf(j % 1000));
    }

    @NonNull
    public c a(@Nullable long j) {
        if (j >= 0) {
            String strB = b(j);
            if (!TextUtils.isEmpty(strB)) {
                this.b.put(b.CONTENTPLAYHEAD, strB);
            }
        }
        return this;
    }

    @NonNull
    public c a(@Nullable com.bytedance.sdk.openadsdk.core.g.a.a aVar) {
        if (aVar != null) {
            this.b.put(b.ERRORCODE, aVar.a());
        }
        return this;
    }

    @NonNull
    public c a(@Nullable String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                str = URLEncoder.encode(str, C.UTF8_NAME);
            } catch (Throwable unused) {
            }
            this.b.put(b.ASSETURI, str);
        }
        return this;
    }

    @NonNull
    public List<String> a() {
        ArrayList arrayList = new ArrayList();
        for (String strReplaceAll : this.a) {
            if (!TextUtils.isEmpty(strReplaceAll)) {
                for (b bVar : b.values()) {
                    String str = this.b.get(bVar);
                    if (str == null) {
                        str = "";
                    }
                    strReplaceAll = strReplaceAll.replaceAll("\\[" + bVar.name() + "\\]", str);
                }
                arrayList.add(strReplaceAll);
            }
        }
        return arrayList;
    }
}
