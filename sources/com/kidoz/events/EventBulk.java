package com.kidoz.events;

import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.server_connect.ResponseStatus;
import com.kidoz.sdk.api.server_connect.ResultData;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class EventBulk {
    private static final String a = "EventBulk";
    private JSONObject b;
    private ArrayList<a> c;

    private synchronized String a() {
        String string;
        ArrayList<a> arrayList;
        string = null;
        if (this.b != null && (arrayList = this.c) != null && arrayList.size() > 0) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("DeviceParams", this.b);
                JSONArray jSONArray = new JSONArray();
                for (a aVar : this.c) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("EventParams", aVar.f());
                    jSONArray.put(jSONObject2);
                }
                jSONObject.put("Entries", jSONArray);
                string = jSONObject.toString();
            } catch (Exception e2) {
                SDKLogger.printErrorLog(a, "Error when trying to create JSONObject from Bulk : " + e2.getMessage());
            }
        }
        return string;
    }

    protected static ResponseStatus b(String str) {
        JSONObject jSONObject;
        ResponseStatus responseStatus = new ResponseStatus();
        if (str != null) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                if (jSONArray.length() > 0 && (jSONObject = jSONArray.getJSONObject(0)) != null) {
                    if (!jSONObject.isNull("success")) {
                        responseStatus.setIsSuccessful(jSONObject.getBoolean("success"));
                    }
                    if (jSONObject.has("messageCode") && !jSONObject.isNull("messageCode")) {
                        responseStatus.setErrorCode(jSONObject.getString("messageCode"));
                    } else if (jSONObject.has("errorMessage") && !jSONObject.isNull("errorMessage")) {
                        responseStatus.setErrorCode(jSONObject.getString("errorMessage"));
                    }
                }
            } catch (JSONException e2) {
                SDKLogger.printErrorLog("Error parsing response status: " + e2.getMessage());
                return new ResponseStatus();
            }
        }
        return responseStatus;
    }

    public static ResultData<Boolean> parseResultSuccsessStatus(String str) {
        ResultData<Boolean> resultData = new ResultData<>();
        if (str != null) {
            resultData.setResponseStatus(b(str));
            if (resultData.getResponseStatus().getErrorCode() == null || !resultData.getResponseStatus().getErrorCode().equals(String.valueOf(1000))) {
                resultData.setData(Boolean.FALSE);
            } else {
                resultData.setData(Boolean.TRUE);
            }
        }
        return resultData;
    }

    public void c(JSONObject jSONObject) {
        this.b = jSONObject;
    }

    public void d(ArrayList<a> arrayList) {
        this.c = arrayList;
    }

    public String toString() {
        return a();
    }
}
