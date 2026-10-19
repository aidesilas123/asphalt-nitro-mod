package com.kidoz.sdk.api.structure;

import com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementId;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class IsEventRecord {
    private static final String ADVERTISING_ID = "advertisingId";
    private static final String CONTENT_TYPE = "contentType";
    private static final String NAME = "name";
    private static final String PACKAGE_NAME = "packageName";
    private static final String POSITION_INDEX = "positionIndex";
    private static final String STYLE_ID = "styleId";
    private static final String TIME_STAMP = "timeStamp";
    private static final String WIDGET_TYPE = "widgetType";
    private JSONObject mJsonObject;

    public IsEventRecord() {
        this.mJsonObject = new JSONObject();
        this.mJsonObject = new JSONObject();
    }

    public IsEventRecord(String str) {
        this.mJsonObject = new JSONObject();
        try {
            this.mJsonObject = new JSONObject(str);
        } catch (JSONException unused) {
        }
    }

    public String getAdvertiserId() {
        return this.mJsonObject.optString("advertisingId", "");
    }

    public String getContentType() {
        return this.mJsonObject.optString(CONTENT_TYPE, "");
    }

    public String getName() {
        return this.mJsonObject.optString("name", "");
    }

    public String getPackageName() {
        return this.mJsonObject.optString("packageName", "");
    }

    public int getPositionIndex() {
        return this.mJsonObject.optInt(POSITION_INDEX);
    }

    public String getStringParams() {
        return this.mJsonObject.toString();
    }

    public String getStyleId() {
        return this.mJsonObject.optString("styleId", null);
    }

    public String getTimeStamp() {
        return this.mJsonObject.optString(TIME_STAMP, UniquePlacementId.NO_ID);
    }

    public String getWidgetType() {
        return this.mJsonObject.optString(WIDGET_TYPE, null);
    }

    public void setAdvertiserId(String str) {
        try {
            this.mJsonObject.put("advertisingId", str);
        } catch (JSONException unused) {
        }
    }

    public void setContentType(String str) {
        try {
            this.mJsonObject.put(CONTENT_TYPE, str);
        } catch (JSONException unused) {
        }
    }

    public void setName(String str) {
        try {
            this.mJsonObject.put("name", str);
        } catch (JSONException unused) {
        }
    }

    public void setPackageName(String str) {
        try {
            this.mJsonObject.put("packageName", str);
        } catch (JSONException unused) {
        }
    }

    public void setPositionIndex(int i) {
        try {
            this.mJsonObject.put(POSITION_INDEX, i);
        } catch (JSONException unused) {
        }
    }

    public void setStyleId(String str) {
        try {
            this.mJsonObject.put("styleId", str);
        } catch (JSONException unused) {
        }
    }

    public void setTimeStamp(String str) {
        try {
            this.mJsonObject.put(TIME_STAMP, str);
        } catch (JSONException unused) {
        }
    }

    public void setWidgetType(String str) {
        try {
            this.mJsonObject.put(WIDGET_TYPE, str);
        } catch (JSONException unused) {
        }
    }
}
