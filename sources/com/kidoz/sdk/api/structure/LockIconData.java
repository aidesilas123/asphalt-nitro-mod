package com.kidoz.sdk.api.structure;

import android.content.Context;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class LockIconData {
    private final String TAG = LockIconData.class.getSimpleName();
    private String mIconURL;
    private String mName;

    public LockIconData(Context context, JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                if (jSONObject.has("LockIconOnFS") && !jSONObject.isNull("LockIconOnFS")) {
                    this.mIconURL = jSONObject.getString("LockIconOnFS");
                }
                if (!jSONObject.has("LockIconName") || jSONObject.isNull("LockIconName")) {
                    return;
                }
                this.mName = jSONObject.getString("LockIconName");
            } catch (Exception e2) {
                SDKLogger.printErrorLog(this.TAG, "Error creating lock icon data: " + e2.getMessage());
            }
        }
    }

    public LockIconData(JSONArray jSONArray, HashMap<String, Integer> map) {
        if (jSONArray == null || map == null) {
            return;
        }
        try {
            this.mName = jSONArray.getString(map.get("name").intValue());
            this.mIconURL = jSONArray.getString(map.get("icon").intValue());
        } catch (Exception e2) {
            SDKLogger.printErrorLog(this.TAG, "Error creating lock icon data: " + e2.getMessage());
        }
    }

    public String getIconURL() {
        return this.mIconURL;
    }

    public String getName() {
        return this.mName;
    }

    public void setIconURL(String str) {
        this.mIconURL = str;
    }

    public void setName(String str) {
        this.mName = str;
    }
}
