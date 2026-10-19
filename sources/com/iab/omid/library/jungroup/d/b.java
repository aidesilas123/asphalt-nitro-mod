package com.iab.omid.library.jungroup.d;

import android.content.res.Resources;
import android.graphics.Point;
import android.view.WindowManager;
import com.json.o2;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    public static WindowManager a;
    public static final String[] b = {"x", "y", "width", "height"};
    public static float c = Resources.getSystem().getDisplayMetrics().density;

    public static float a(int i) {
        return i / c;
    }

    public static JSONObject a(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", a(i));
            jSONObject.put("y", a(i2));
            jSONObject.put("width", a(i3));
            jSONObject.put("height", a(i4));
        } catch (JSONException e2) {
            c.a("Error with creating viewStateObject", e2);
        }
        return jSONObject;
    }

    public static void a(JSONObject jSONObject) {
        float f2;
        float fA = 0.0f;
        if (a != null) {
            Point point = new Point(0, 0);
            a.getDefaultDisplay().getRealSize(point);
            float fA2 = a(point.x);
            fA = a(point.y);
            f2 = fA2;
        } else {
            f2 = 0.0f;
        }
        try {
            jSONObject.put("width", f2);
            jSONObject.put("height", fA);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public static void a(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (JSONException e2) {
            c.a("JSONException during JSONObject.put for name [" + str + o2.i.f6491e, e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:85:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean a(org.json.JSONObject r10, org.json.JSONObject r11) {
        /*
            Method dump skipped, instruction units count: 228
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iab.omid.library.jungroup.d.b.a(org.json.JSONObject, org.json.JSONObject):boolean");
    }
}
