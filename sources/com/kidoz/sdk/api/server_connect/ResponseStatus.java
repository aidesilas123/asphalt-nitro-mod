package com.kidoz.sdk.api.server_connect;

import com.kidoz.sdk.api.general.utils.SDKLogger;
import java.io.Serializable;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class ResponseStatus implements Serializable {
    private static final String TAG = ResponseStatus.class.getSimpleName();
    private static final long serialVersionUID = 1;
    private String mErrorCode;
    private boolean mIsSuccessful;

    public ResponseStatus() {
    }

    public ResponseStatus(String str) {
        if (str != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("success") && !jSONObject.isNull("success")) {
                    this.mIsSuccessful = jSONObject.getBoolean("success");
                }
                if (!jSONObject.has("error_code") || jSONObject.isNull("error_code")) {
                    return;
                }
                this.mErrorCode = jSONObject.getString("error_code");
            } catch (Exception e2) {
                SDKLogger.printErrorLog(TAG, "Error creating response status: " + e2.getMessage());
            }
        }
    }

    public String getErrorCode() {
        return this.mErrorCode;
    }

    public boolean getIsSuccessful() {
        return this.mIsSuccessful;
    }

    public void setErrorCode(String str) {
        this.mErrorCode = str;
    }

    public void setIsSuccessful(boolean z) {
        this.mIsSuccessful = z;
    }
}
