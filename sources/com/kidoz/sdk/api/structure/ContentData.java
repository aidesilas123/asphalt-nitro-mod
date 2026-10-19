package com.kidoz.sdk.api.structure;

import android.graphics.Color;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class ContentData implements Serializable {
    private static String CONTAINER_VIEW_BG_COLOR_KEY = "containerViewBgColor";
    private static String CONTENT_ITEMS_KEY = "content_items";
    private static String DATA_KEY = "data";
    private static String FOOTER_VIEW_BG_COLOR_KEY = "footerColor";
    private static String HEADER_TEXT_KEY = "headerText";
    private static String HEADER_VIEW_BG_COLOR_KEY = "headerColor";
    private static String POWERED_BY_URL_KEY = "powerd_by_url";
    private static final String VIEW_ITEM_BG_COLOR_KEY = "viewItemBgColor";
    private static String VIEW_ITEM_CORENR_RADIUS_PX_KEY = "viewItemCorenrRadiusPx";
    public int mContainerViewBgColor;
    public int mFooterViewBgColor;
    public int mHeaderViewBgColor;
    private ArrayList<ContentItem> mItems;
    private HashMap<String, Integer> mKeysMap;
    public int mViewItemBgColor;
    public int mViewItemCorenrRadiusPx;
    private JSONArray mItemsJsonArray = new JSONArray();
    public String mHeaderTextStr = "";
    public String mPowerByUrl = "";
    public String mBackgroundURL = "";
    private String mWidgetType = null;
    private String mStyleID = null;

    public void decodeResponse(String str) {
        JSONObject jSONObjectOptJSONObject;
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.optBoolean("success") || (jSONObjectOptJSONObject = jSONObject.optJSONObject(DATA_KEY)) == null) {
                return;
            }
            this.mViewItemBgColor = Color.parseColor(jSONObjectOptJSONObject.optString(VIEW_ITEM_BG_COLOR_KEY, "#ffffffff"));
            this.mViewItemCorenrRadiusPx = jSONObjectOptJSONObject.optInt(VIEW_ITEM_CORENR_RADIUS_PX_KEY, 20);
            this.mContainerViewBgColor = Color.parseColor(jSONObjectOptJSONObject.optString(CONTAINER_VIEW_BG_COLOR_KEY, "#ffffffff"));
            this.mHeaderViewBgColor = Color.parseColor(jSONObjectOptJSONObject.optString(HEADER_VIEW_BG_COLOR_KEY, "#ffffffff"));
            this.mFooterViewBgColor = Color.parseColor(jSONObjectOptJSONObject.optString(FOOTER_VIEW_BG_COLOR_KEY, "#ffffffff"));
            this.mHeaderTextStr = jSONObjectOptJSONObject.optString(HEADER_TEXT_KEY, "More Cool Stuff");
            this.mPowerByUrl = jSONObjectOptJSONObject.optString(POWERED_BY_URL_KEY, "");
            if (jSONObjectOptJSONObject.has(CONTENT_ITEMS_KEY)) {
                this.mItems = new ArrayList<>();
                JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray(CONTENT_ITEMS_KEY);
                this.mItemsJsonArray = jSONArrayOptJSONArray;
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    JSONArray jSONArray = this.mItemsJsonArray.getJSONArray(0);
                    if (jSONArray != null && jSONArray.length() > 0) {
                        for (int i = 0; i < jSONArray.length(); i++) {
                            linkedHashMap.put(jSONArray.getString(i), Integer.valueOf(i));
                        }
                    }
                    if (!linkedHashMap.isEmpty()) {
                        this.mKeysMap = linkedHashMap;
                        for (int i2 = 1; i2 < this.mItemsJsonArray.length(); i2++) {
                            try {
                                this.mItems.add(new ContentItem(this.mItemsJsonArray.getJSONArray(i2), linkedHashMap));
                            } catch (JSONException unused) {
                                SDKLogger.printDebugLog("Error parsing Content data item!");
                            }
                        }
                    }
                }
                for (int i3 = 0; i3 < this.mItems.size(); i3++) {
                    this.mItems.get(i3).setRealViewIndex(i3);
                }
            }
        } catch (Exception e2) {
            SDKLogger.printDebugLog("Error parsing Content data object!\n" + e2.getMessage());
        }
    }

    public int getContainerViewBgColor() {
        return this.mContainerViewBgColor;
    }

    public ArrayList<ContentItem> getContentDataItems() {
        return this.mItems;
    }

    public int getFooterViewBgColor() {
        return this.mFooterViewBgColor;
    }

    public String getHeaderTextStr() {
        return this.mHeaderTextStr;
    }

    public int getHeaderViewBgColor() {
        return this.mHeaderViewBgColor;
    }

    public JSONArray getItemsJsonArray() {
        return this.mItemsJsonArray;
    }

    public String getPowerByUrl() {
        return this.mPowerByUrl;
    }

    public String getSourceWidgetType() {
        return this.mWidgetType;
    }

    public String getStyleID() {
        return this.mStyleID;
    }

    public int getViewItemBgColor() {
        return this.mViewItemBgColor;
    }

    public int getViewItemCorenrRadiusPx() {
        return this.mViewItemCorenrRadiusPx;
    }

    public HashMap<String, Integer> getmKeysMap() {
        return this.mKeysMap;
    }

    public boolean isHasContentToShow() {
        ArrayList<ContentItem> arrayList = this.mItems;
        return (arrayList == null || arrayList.isEmpty()) ? false : true;
    }

    public void setContentItems(ArrayList<ContentItem> arrayList) {
        this.mItems = arrayList;
    }

    public void setStyleID(String str) {
        this.mStyleID = str;
    }

    public void setWidgetType(String str) {
        this.mWidgetType = str;
    }
}
