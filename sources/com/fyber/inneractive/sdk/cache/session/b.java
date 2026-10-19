package com.fyber.inneractive.sdk.cache.session;

import android.app.Application;
import android.text.TextUtils;
import com.applovin.sdk.AppLovinEventTypes;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.l;
import com.fyber.inneractive.sdk.util.m;
import com.fyber.inneractive.sdk.util.q;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.Closeable;
import java.io.FileInputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b implements Runnable {
    public final /* synthetic */ d a;

    public class a implements Runnable {
        public final /* synthetic */ JSONObject a;

        public a(JSONObject jSONObject) {
            this.a = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            d dVar = b.this.a;
            JSONObject jSONObject = this.a;
            dVar.getClass();
            for (com.fyber.inneractive.sdk.cache.session.enums.b bVar : com.fyber.inneractive.sdk.cache.session.enums.b.values()) {
                if (bVar != com.fyber.inneractive.sdk.cache.session.enums.b.NONE) {
                    String strName = bVar.name();
                    JSONArray jSONArray = new JSONArray();
                    try {
                        jSONArray = jSONObject.getJSONArray(strName);
                    } catch (JSONException unused) {
                    }
                    for (int i = 0; i < jSONArray.length(); i++) {
                        e eVarA = e.a(jSONArray.optJSONObject(i));
                        if (eVarA != null && eVarA.a != 0) {
                            dVar.a(bVar, eVarA);
                        }
                    }
                }
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("currentSession");
            if (jSONObjectOptJSONObject != null) {
                f fVar = new f();
                JSONArray jSONArray2 = new JSONArray();
                try {
                    jSONArray2 = jSONObjectOptJSONObject.getJSONArray(AppLovinEventTypes.USER_VIEWED_CONTENT);
                } catch (JSONException unused2) {
                }
                for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject2 = jSONArray2.getJSONObject(i2);
                    } catch (JSONException unused3) {
                    }
                    com.fyber.inneractive.sdk.cache.session.enums.b bVarA = com.fyber.inneractive.sdk.cache.session.enums.b.a(jSONObject2.optString("type"), jSONObject2.optString("subType"));
                    e eVarA2 = e.a(jSONObject2.optJSONObject("session_data"));
                    if (eVarA2 != null) {
                        fVar.a.put(bVarA, eVarA2);
                    }
                }
                dVar.a(fVar);
            }
            b.this.a.getClass();
        }
    }

    public b(d dVar) {
        this.a = dVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        FileInputStream fileInputStreamOpenFileInput;
        String str;
        Application application = l.a;
        JSONObject jSONObject = null;
        try {
            fileInputStreamOpenFileInput = application.openFileInput("session_details.json");
        } catch (Throwable unused) {
            fileInputStreamOpenFileInput = null;
        }
        try {
            int iAvailable = fileInputStreamOpenFileInput.available();
            byte[] bArr = new byte[iAvailable];
            str = fileInputStreamOpenFileInput.read(bArr) == iAvailable ? new String(bArr, C.UTF8_NAME) : null;
        } catch (Throwable unused2) {
            try {
                IAlog.a("readFileFromContext failed reading %s", "session_details.json");
                q.a((Closeable) fileInputStreamOpenFileInput);
                str = null;
            } finally {
                q.a((Closeable) fileInputStreamOpenFileInput);
            }
        }
        if (TextUtils.isEmpty(str)) {
            this.a.getClass();
            return;
        }
        try {
            jSONObject = new JSONObject(str);
        } catch (Throwable unused3) {
            IAlog.e("Failed parsing SessionCache", new Object[0]);
        }
        if (jSONObject != null) {
            m.b.post(new a(jSONObject));
        } else {
            application.deleteFile("session_details.json");
            this.a.getClass();
        }
    }
}
