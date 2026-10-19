package com.mbridge.msdk.foundation.download.core;

import android.text.TextUtils;
import com.json.b4;
import com.json.o2;
import com.mbridge.msdk.foundation.controller.b;
import com.mbridge.msdk.foundation.same.net.g.d;
import com.mbridge.msdk.foundation.same.report.d.a;
import com.mbridge.msdk.foundation.same.report.k;
import com.mbridge.msdk.foundation.same.report.q;
import com.mbridge.msdk.foundation.tools.aa;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class DownloaderReporter {
    private static final String KEY = "key=";
    private static final String TAG = "DownloaderReporter";
    private final Map<String, String> _params;
    private final String _reportKey;

    public static class Builder {
        private final Map<String, String> _params;
        private final String _reportKey;

        public Builder(String str) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("reportKey can not be empty");
            }
            this._reportKey = str;
            this._params = new HashMap();
        }

        public Builder add(String str, String str2) {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                try {
                    this._params.put(str, str2);
                } catch (Exception unused) {
                }
            }
            return this;
        }

        public DownloaderReporter build() {
            return new DownloaderReporter(this);
        }
    }

    private DownloaderReporter(Builder builder) {
        this._reportKey = builder._reportKey;
        this._params = builder._params;
    }

    private String asUrlParams(Map<String, String> map) {
        if (map != null && map.size() != 0) {
            StringBuilder sb = new StringBuilder();
            try {
                for (String str : map.keySet()) {
                    String strEncodeValue = encodeValue(map.get(str));
                    sb.append(o2.i.c);
                    sb.append(str);
                    sb.append(o2.i.b);
                    sb.append(strEncodeValue);
                }
                return sb.toString();
            } catch (Exception unused) {
            }
        }
        return "";
    }

    private String encodeValue(String str) {
        try {
            return URLEncoder.encode(str, b4.L);
        } catch (Exception unused) {
            return str;
        }
    }

    public final void report() {
        String str = KEY + this._reportKey + asUrlParams(this._params);
        if (k.a().c()) {
            k.a().a(str);
            return;
        }
        try {
            new a(b.d().g()).post(0, d.a().a, q.a(str, b.d().g(), ""), null);
        } catch (Exception e2) {
            aa.d(TAG, "report exception: " + e2.getMessage());
        }
    }
}
