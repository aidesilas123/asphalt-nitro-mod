package com.fyber.inneractive.sdk.mraid;

import com.vungle.ads.internal.presenter.MRAIDPresenter;

/* JADX INFO: loaded from: classes2.dex */
public enum g {
    CLOSE("close"),
    EXPAND("expand"),
    USECUSTOMCLOSE("usecustomclose"),
    OPEN(MRAIDPresenter.OPEN),
    RESIZE("resize"),
    GET_RESIZE_PROPERTIES("getResizeProperties"),
    SET_RESIZE_PROPERTIES("setResizeProperties"),
    SET_ORIENTATION_PROPERTIES(MRAIDPresenter.SET_ORIENTATION_PROPERTIES),
    PLAY_VIDEO("playVideo"),
    STORE_PICTURE("storePicture"),
    GET_CURRENT_POSITION("getCurrentPosition"),
    GET_DEFAULT_POSITION("getDefaultPosition"),
    GET_MAX_SIZE("getMaxSize"),
    GET_SCREEN_SIZE("getScreenSize"),
    CREATE_CALENDAR_EVENT("createCalendarEvent"),
    UNSPECIFIED("");

    private String mCommand;

    g(String str) {
        this.mCommand = str;
    }

    public static g a(String str) {
        for (g gVar : values()) {
            if (gVar.mCommand.equals(str)) {
                return gVar;
            }
        }
        return UNSPECIFIED;
    }

    public String e() {
        return this.mCommand;
    }
}
