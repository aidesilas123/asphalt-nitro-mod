package com.kidoz.sdk.api.structure;

import android.graphics.Color;
import com.kidoz.sdk.api.general.enums.ContentType;
import com.kidoz.sdk.api.general.enums.HtmlType;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.general.utils.Utils;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class ContentItem {
    private static final String ADVERTISER_KEY = "advertiser_id";
    private static final String BG_COLOR_KEY = "bg_color";
    private static final String CONTENT_TYPE_KEY = "type";
    private static final String DATA_KEY = "data";
    private static final String EXTERNAL_PARAMETERS__KEY = "ext";
    private static final String ID_KEY = "id";
    private static final String IMAGE_RATIO_KEY = "img_ratio";
    private static final String LANG_KEY = "lang";
    private static final String PROMOTED_KEY = "promoted";
    private static final String SEC_THUMB_KEY = "sec_thumb";
    private static final String THIRD_PARTY_IMPRESSION_URL = "impUrl";
    private static final String THUMB_KEY = "thumb";
    private static final String TITLE_KEY = "title";
    private String mAdvertiserID;
    private ContentType mContentType;
    private String mData;
    private JSONObject mExtraParameters;
    private String mId;
    private String mImpUrl;
    private JSONArray mJSONitem;
    private String mLang;
    public float mMainThumbImageRatio;
    private int[] mMainThumbSize;
    private int mPalliteBgColor;
    private int mPalliteTextColor;
    private boolean mPromoted;
    private int mRealViewIndex;
    public String mSecThumb;
    private String mThumb;
    private String mTiltle;

    public ContentItem() {
        this.mContentType = ContentType.NONE;
        this.mImpUrl = null;
        this.mJSONitem = new JSONArray();
        this.mExtraParameters = new JSONObject();
        this.mMainThumbImageRatio = 0.5f;
        this.mPalliteBgColor = -1;
        this.mPalliteTextColor = Color.parseColor("#484848");
    }

    public ContentItem(JSONArray jSONArray, HashMap<String, Integer> map) {
        ContentType contentType;
        String strOptString;
        this.mContentType = ContentType.NONE;
        this.mImpUrl = null;
        this.mJSONitem = new JSONArray();
        this.mExtraParameters = new JSONObject();
        this.mMainThumbImageRatio = 0.5f;
        this.mPalliteBgColor = -1;
        this.mPalliteTextColor = Color.parseColor("#484848");
        if (jSONArray != null) {
            this.mJSONitem = jSONArray;
            if (map.containsKey("id")) {
                this.mId = jSONArray.optString(map.get("id").intValue(), "");
            }
            if (map.containsKey(THUMB_KEY)) {
                String strOptString2 = jSONArray.optString(map.get(THUMB_KEY).intValue(), "");
                this.mThumb = strOptString2;
                this.mThumb = Utils.fixUrlLink(strOptString2);
            }
            if (map.containsKey(SEC_THUMB_KEY)) {
                String strOptString3 = jSONArray.optString(map.get(SEC_THUMB_KEY).intValue(), "");
                this.mSecThumb = strOptString3;
                this.mSecThumb = Utils.fixUrlLink(strOptString3);
            }
            if (map.containsKey("type")) {
                try {
                    this.mContentType = ContentType.getTypeByValue(jSONArray.optInt(map.get("type").intValue(), -1));
                } catch (Exception e2) {
                    SDKLogger.printErrorLog("Error parsing single content item Action : \n" + e2.getMessage());
                    this.mContentType = ContentType.NONE;
                }
            }
            if (map.containsKey("data")) {
                this.mData = jSONArray.optString(map.get("data").intValue(), "");
            }
            if (map.containsKey("title")) {
                this.mTiltle = jSONArray.optString(map.get("title").intValue(), "");
            }
            if (map.containsKey("lang")) {
                this.mLang = jSONArray.optString(map.get("lang").intValue(), "");
            }
            if (map.containsKey(ADVERTISER_KEY)) {
                this.mAdvertiserID = jSONArray.optString(map.get(ADVERTISER_KEY).intValue(), "0");
            }
            if (map.containsKey(PROMOTED_KEY)) {
                this.mPromoted = jSONArray.optInt(map.get(PROMOTED_KEY).intValue(), 0) == 1;
            }
            if (map.containsKey(BG_COLOR_KEY) && (strOptString = jSONArray.optString(map.get(BG_COLOR_KEY).intValue(), "#ffffff")) != null) {
                try {
                    this.mPalliteBgColor = Color.parseColor(strOptString);
                } catch (Exception unused) {
                }
            }
            if (this.mPalliteBgColor == -1 && (contentType = this.mContentType) != null) {
                try {
                    if (contentType == ContentType.EXTERNAL_BROWSER_URL || contentType == ContentType.WEB_GAME_URL) {
                        this.mPalliteBgColor = Color.parseColor("#b0d63a");
                    } else if (contentType == ContentType.WEBSITE_URL) {
                        this.mPalliteBgColor = Color.parseColor("#f8a850");
                    } else if (contentType == ContentType.GOOGLE_PLAY_APPLICATION || contentType == ContentType.PROMOTED_PLAY_APPLICATION) {
                        this.mPalliteBgColor = Color.parseColor("#4aaed3");
                    }
                } catch (Exception unused2) {
                }
            }
            if (map.containsKey(IMAGE_RATIO_KEY)) {
                this.mMainThumbImageRatio = (float) jSONArray.optDouble(map.get(IMAGE_RATIO_KEY).intValue());
            }
            if (map.containsKey("ext")) {
                this.mExtraParameters = jSONArray.optJSONObject(map.get("ext").intValue());
            }
            if (map.containsKey(THIRD_PARTY_IMPRESSION_URL)) {
                this.mImpUrl = jSONArray.optString(map.get(THIRD_PARTY_IMPRESSION_URL).intValue(), null);
            }
        }
    }

    public String getAdvertiserID() {
        return this.mAdvertiserID;
    }

    public ContentType getContentType() {
        return this.mContentType;
    }

    public String getData() {
        return this.mData;
    }

    public JSONObject getExtraParameters() {
        return this.mExtraParameters;
    }

    public String getHTMLUrl() {
        JSONObject jSONObject = this.mExtraParameters;
        if (jSONObject != null) {
            return jSONObject.optString("html_url", null);
        }
        return null;
    }

    public HtmlType getHtmlType() {
        HtmlType htmlType = HtmlType.NONE;
        JSONObject jSONObject = this.mExtraParameters;
        return jSONObject != null ? HtmlType.getTypeByValue(jSONObject.optInt("html_type", HtmlType.getValueFromType(htmlType))) : htmlType;
    }

    public String getId() {
        return this.mId;
    }

    public boolean getIsAvoidAutoImpression() {
        JSONObject jSONObject = this.mExtraParameters;
        if (jSONObject != null) {
            return jSONObject.optBoolean("avoidAutoImpression", false);
        }
        return false;
    }

    public boolean getIsHideTextOverlay() {
        JSONObject jSONObject = this.mExtraParameters;
        if (jSONObject != null) {
            return jSONObject.optBoolean("hideTextOverlay", false);
        }
        return false;
    }

    public boolean getIsNonDefaultHtml() {
        JSONObject jSONObject = this.mExtraParameters;
        if (jSONObject != null) {
            return jSONObject.optBoolean("nonDefaultHTML", false);
        }
        return false;
    }

    public boolean getIsUseNativeTopBar() {
        JSONObject jSONObject = this.mExtraParameters;
        if (jSONObject != null) {
            return jSONObject.optBoolean("useNativeTopBar", true);
        }
        return false;
    }

    public JSONArray getJSONitem() {
        return this.mJSONitem;
    }

    public String getLang() {
        return this.mLang;
    }

    public float getMainThumbImageRatio() {
        return this.mMainThumbImageRatio;
    }

    public int[] getMainThumbSize() {
        return this.mMainThumbSize;
    }

    public String getName() {
        return this.mTiltle;
    }

    public int getPaliteBgColor() {
        return this.mPalliteBgColor;
    }

    public int getPaliteTextColor() {
        return this.mPalliteTextColor;
    }

    public int getRealViewIndex() {
        return this.mRealViewIndex;
    }

    public String getSecThumb() {
        return this.mSecThumb;
    }

    public boolean getShouldDisplayMaximizeButton() {
        JSONObject jSONObject = this.mExtraParameters;
        if (jSONObject != null) {
            return jSONObject.optBoolean("showMaximize", false);
        }
        return false;
    }

    public String getThirdPartyImpressionBeacon() {
        return this.mImpUrl;
    }

    public String getThumb() {
        return this.mThumb;
    }

    public boolean isPromoted() {
        return this.mPromoted;
    }

    public void setAdvertiserID(String str) {
        this.mAdvertiserID = str;
    }

    public void setContentType(ContentType contentType) {
        this.mContentType = contentType;
    }

    public void setData(String str) {
        this.mData = str;
    }

    public void setExtraParameters(JSONObject jSONObject) {
        this.mExtraParameters = jSONObject;
    }

    public void setId(String str) {
        this.mId = str;
    }

    public void setIsPromoted(boolean z) {
        this.mPromoted = z;
    }

    public void setName(String str) {
        this.mTiltle = str;
    }

    public void setPaliteBgColor(int i) {
    }

    public void setPaliteTextColor(int i) {
        this.mPalliteTextColor = i;
    }

    public void setRealViewIndex(int i) {
        this.mRealViewIndex = i;
    }

    public void setThumb(String str) {
        this.mThumb = str;
    }
}
