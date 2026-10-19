package com.bytedance.sdk.component.a;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.lang.reflect.Type;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: DataConverterActual.java */
/* JADX INFO: loaded from: classes.dex */
class h {
    private l a;

    private h(l lVar) {
        this.a = lVar;
    }

    static h a(l lVar) {
        return new h(lVar);
    }

    private static void a(String str) {
        if (str.startsWith("{") && str.endsWith("}")) {
            return;
        }
        i.a(new IllegalArgumentException("Param is not allowed to be List or JSONArray, rawString:\n " + str));
    }

    <T> T a(String str, Type type) throws JSONException {
        a(str);
        return (type.equals(JSONObject.class) || ((type instanceof Class) && JSONObject.class.isAssignableFrom((Class) type))) ? (T) new JSONObject(str) : (T) this.a.a(str, type);
    }

    <T> String a(T t) {
        if (t == null) {
            return JsonUtils.EMPTY_JSON;
        }
        String string = ((t instanceof JSONObject) || (t instanceof JSONArray)) ? t.toString() : this.a.a(t);
        a(string);
        return string;
    }
}
