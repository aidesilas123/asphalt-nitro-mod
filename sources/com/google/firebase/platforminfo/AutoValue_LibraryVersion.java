package com.google.firebase.platforminfo;

import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
final class AutoValue_LibraryVersion extends LibraryVersion {
    private final String a;
    private final String b;

    AutoValue_LibraryVersion(String str, String str2) {
        Objects.requireNonNull(str, "Null libraryName");
        this.a = str;
        Objects.requireNonNull(str2, "Null version");
        this.b = str2;
    }

    @Override // com.google.firebase.platforminfo.LibraryVersion
    public String b() {
        return this.a;
    }

    @Override // com.google.firebase.platforminfo.LibraryVersion
    public String c() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LibraryVersion)) {
            return false;
        }
        LibraryVersion libraryVersion = (LibraryVersion) obj;
        return this.a.equals(libraryVersion.b()) && this.b.equals(libraryVersion.c());
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode();
    }

    public String toString() {
        return "LibraryVersion{libraryName=" + this.a + ", version=" + this.b + "}";
    }
}
