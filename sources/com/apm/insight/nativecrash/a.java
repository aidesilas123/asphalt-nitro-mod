package com.apm.insight.nativecrash;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.apm.insight.l.o;
import com.json.o2;
import com.unity3d.services.ads.gmascar.utils.ScarConstants;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private Map<String, String> a;

    public a(File file) {
        String strA;
        File fileC = o.c(file);
        if (!fileC.exists() || fileC.length() == 0 || (strA = NativeImpl.a(fileC.getAbsolutePath())) == null) {
            return;
        }
        String[] strArrSplit = strA.split("\n");
        this.a = new HashMap();
        for (String str : strArrSplit) {
            String[] strArrSplit2 = str.split(o2.i.b);
            if (strArrSplit2.length == 2) {
                this.a.put(strArrSplit2[0], strArrSplit2[1]);
            }
        }
    }

    public boolean a() {
        Map<String, String> map = this.a;
        return (map == null || map.isEmpty() || TextUtils.isEmpty(this.a.get("process_name")) || TextUtils.isEmpty(this.a.get("crash_thread_name")) || TextUtils.isEmpty(this.a.get("pid")) || TextUtils.isEmpty(this.a.get(ScarConstants.TOKEN_ID_KEY)) || TextUtils.isEmpty(this.a.get("start_time")) || TextUtils.isEmpty(this.a.get("crash_time")) || TextUtils.isEmpty(this.a.get("signal_line"))) ? false : true;
    }

    @Nullable
    public String b() {
        return this.a.get("signal_line");
    }

    public Map<String, String> c() {
        return this.a;
    }
}
