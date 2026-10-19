package com.google.firebase;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.StringResourceValueReader;
import com.google.android.gms.common.util.Strings;

/* JADX INFO: loaded from: classes3.dex */
public final class FirebaseOptions {
    private final String a;
    private final String b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f4027d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f4028e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f4029f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f4030g;

    public static final class Builder {
    }

    private FirebaseOptions(@NonNull String str, @NonNull String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7) {
        Preconditions.checkState(!Strings.isEmptyOrWhitespace(str), "ApplicationId must be set.");
        this.b = str;
        this.a = str2;
        this.c = str3;
        this.f4027d = str4;
        this.f4028e = str5;
        this.f4029f = str6;
        this.f4030g = str7;
    }

    @Nullable
    public static FirebaseOptions fromResource(@NonNull Context context) {
        StringResourceValueReader stringResourceValueReader = new StringResourceValueReader(context);
        String string = stringResourceValueReader.getString("google_app_id");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return new FirebaseOptions(string, stringResourceValueReader.getString("google_api_key"), stringResourceValueReader.getString("firebase_database_url"), stringResourceValueReader.getString("ga_trackingId"), stringResourceValueReader.getString("gcm_defaultSenderId"), stringResourceValueReader.getString("google_storage_bucket"), stringResourceValueReader.getString("project_id"));
    }

    @NonNull
    public String a() {
        return this.a;
    }

    @NonNull
    public String b() {
        return this.b;
    }

    @Nullable
    public String c() {
        return this.f4028e;
    }

    @Nullable
    public String d() {
        return this.f4030g;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FirebaseOptions)) {
            return false;
        }
        FirebaseOptions firebaseOptions = (FirebaseOptions) obj;
        return Objects.equal(this.b, firebaseOptions.b) && Objects.equal(this.a, firebaseOptions.a) && Objects.equal(this.c, firebaseOptions.c) && Objects.equal(this.f4027d, firebaseOptions.f4027d) && Objects.equal(this.f4028e, firebaseOptions.f4028e) && Objects.equal(this.f4029f, firebaseOptions.f4029f) && Objects.equal(this.f4030g, firebaseOptions.f4030g);
    }

    public int hashCode() {
        return Objects.hashCode(this.b, this.a, this.c, this.f4027d, this.f4028e, this.f4029f, this.f4030g);
    }

    public String toString() {
        return Objects.toStringHelper(this).add("applicationId", this.b).add("apiKey", this.a).add("databaseUrl", this.c).add("gcmSenderId", this.f4028e).add("storageBucket", this.f4029f).add("projectId", this.f4030g).toString();
    }
}
