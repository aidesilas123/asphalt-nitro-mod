package com.iab.omid.library.fyber.adsession.media;

import com.kidoz.sdk.api.players.web_player.WebPreferenceConstants;

/* JADX INFO: loaded from: classes2.dex */
public enum PlayerState {
    MINIMIZED("minimized"),
    COLLAPSED("collapsed"),
    NORMAL("normal"),
    EXPANDED("expanded"),
    FULLSCREEN(WebPreferenceConstants.FULL_SCREEN);

    private final String playerState;

    PlayerState(String str) {
        this.playerState = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.playerState;
    }
}
