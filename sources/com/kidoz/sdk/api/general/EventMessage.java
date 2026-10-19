package com.kidoz.sdk.api.general;

/* JADX INFO: loaded from: classes4.dex */
public class EventMessage {
    private KidozError kidozError;
    private boolean mFlag;
    private MessageType mMessageType;
    private String mParam;

    public enum MessageType {
        VIDEO_UNIT_BUTTON_READY,
        INIT_SDK,
        INIT_SDK_FAIL_NO_SERVER_RESULT,
        INIT_SDK_FAIL_STYLE_PARSER,
        INIT_SDK_FAIL_VALIDATION_EXCEPTION,
        INIT_FEED_BUTTON,
        PLAYER_OPEN,
        MAXIMIZED_PLAYER_OPEN,
        MAXIMIZED_PLAYER_CLOSE,
        PLAYER_CLOSE,
        HTML_FULL_VIEW_CLOSE,
        INTERSTITIAL_AD_CLOSE,
        PARENTAL_DIALOG_CLOSE,
        WEB_PLAYER_DIALOG_CLOSED,
        CLOSE_VIDEO_UNIT,
        CLOSE_FULL_SCREEN_AD,
        ON_AD_SHOWN,
        CLOSED,
        READY,
        LOAD_FAILED,
        NO_OFFERS,
        REWARDED,
        REWARDED_VIDEO_STARTED,
        ON_AD_IMPRESSION,
        ON_AD_FAILED_TO_SHOW
    }

    public EventMessage(MessageType messageType) {
        this.mMessageType = messageType;
    }

    public String getAdditionalParam() {
        return this.mParam;
    }

    public KidozError getError() {
        return this.kidozError;
    }

    public MessageType getMessageType() {
        return this.mMessageType;
    }

    public boolean isFlag() {
        return this.mFlag;
    }

    public void setAdditionalParam(String str) {
        this.mParam = str;
    }

    public void setError(KidozError kidozError) {
        this.kidozError = kidozError;
    }

    public void setFlag(boolean z) {
        this.mFlag = z;
    }
}
