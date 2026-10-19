package com.google.firebase.heartbeatinfo;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes3.dex */
public interface HeartBeatInfo {

    public enum HeartBeat {
        NONE(0),
        SDK(1),
        GLOBAL(2),
        COMBINED(3);


        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f4081f;

        HeartBeat(int i) {
            this.f4081f = i;
        }

        public int e() {
            return this.f4081f;
        }
    }

    @NonNull
    HeartBeat b(@NonNull String str);
}
