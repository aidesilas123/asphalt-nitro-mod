package com.google.firebase.installations;

import androidx.annotation.NonNull;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes3.dex */
public interface FirebaseInstallationsApi {
    @NonNull
    Task<InstallationTokenResult> a(boolean z);

    @NonNull
    Task<String> getId();
}
