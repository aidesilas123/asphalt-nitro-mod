package com.google.firebase.platforminfo;

import com.google.auto.value.AutoValue;

/* JADX INFO: loaded from: classes3.dex */
@AutoValue
abstract class LibraryVersion {
    LibraryVersion() {
    }

    static LibraryVersion a(String str, String str2) {
        return new AutoValue_LibraryVersion(str, str2);
    }

    public abstract String b();

    public abstract String c();
}
