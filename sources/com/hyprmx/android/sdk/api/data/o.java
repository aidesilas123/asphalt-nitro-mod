package com.hyprmx.android.sdk.api.data;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.hyprmx.android.sdk.utility.m0;
import java.util.ArrayList;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public interface o {

    public static final class a {
        public static m0 a(String jsonString) {
            Object hVar;
            Intrinsics.checkNotNullParameter(jsonString, "jsonString");
            try {
                JSONObject jsonObject = new JSONObject(jsonString);
                String string = jsonObject.getString("Type");
                Intrinsics.checkNotNullExpressionValue(string, "json.getString(FIELD_TYPE)");
                int iA = com.hyprmx.android.sdk.analytics.h.a(p.a(string));
                if (iA == 0) {
                    Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
                    String title = jsonObject.getString("Title");
                    String name = jsonObject.getString("Name");
                    Intrinsics.checkNotNullExpressionValue(title, "title");
                    Intrinsics.checkNotNullExpressionValue(name, "name");
                    hVar = new h(new d(title, name));
                } else if (iA == 1) {
                    Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
                    String title2 = jsonObject.getString("Title");
                    String name2 = jsonObject.getString("Name");
                    ArrayList arrayList = new ArrayList();
                    JSONArray jSONArrayOptJSONArray = jsonObject.optJSONArray("Values");
                    if (jSONArrayOptJSONArray != null) {
                        int length = jSONArrayOptJSONArray.length();
                        for (int i = 0; i < length; i++) {
                            String jsonString2 = jSONArrayOptJSONArray.get(i).toString();
                            Intrinsics.checkNotNullParameter(jsonString2, "jsonString");
                            JSONObject jSONObject = new JSONObject(jsonString2);
                            String label = jSONObject.getString("Label");
                            String value = jSONObject.getString("Value");
                            Intrinsics.checkNotNullExpressionValue(label, "label");
                            Intrinsics.checkNotNullExpressionValue(value, "value");
                            arrayList.add(new t(label, value));
                        }
                    }
                    Intrinsics.checkNotNullExpressionValue(title2, "title");
                    Intrinsics.checkNotNullExpressionValue(name2, "name");
                    hVar = new q(new d(title2, name2), arrayList);
                } else {
                    if (iA != 2) {
                        throw new NoWhenBranchMatchedException();
                    }
                    Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
                    String title3 = jsonObject.getString("Title");
                    String name3 = jsonObject.getString("Name");
                    String hint = jsonObject.optString(ViewHierarchyConstants.HINT_KEY, "-");
                    int iOptInt = jsonObject.optInt("min", 0);
                    int iOptInt2 = jsonObject.optInt("max", 199);
                    String invalidAnswerMessage = jsonObject.optString("invalid_answer_message", "Please enter a number between " + iOptInt + " and " + iOptInt2 + '.');
                    Intrinsics.checkNotNullExpressionValue(title3, "title");
                    Intrinsics.checkNotNullExpressionValue(name3, "name");
                    d dVar = new d(title3, name3);
                    Intrinsics.checkNotNullExpressionValue(hint, "hint");
                    Intrinsics.checkNotNullExpressionValue(invalidAnswerMessage, "invalidAnswerMessage");
                    hVar = new k(dVar, hint, iOptInt, iOptInt2, invalidAnswerMessage);
                }
                return new m0.b(hVar);
            } catch (Exception e2) {
                return new m0.a("Exception parsing required information.", 0, e2);
            }
        }
    }

    String getName();

    String getTitle();
}
