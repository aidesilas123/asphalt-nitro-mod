package com.google.firebase.iid.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.tasks.Task;

/* JADX INFO: compiled from: com.google.firebase:firebase-iid-interop@@17.1.0 */
/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
public interface FirebaseInstanceIdInternal {

    /* JADX INFO: compiled from: com.google.firebase:firebase-iid-interop@@17.1.0 */
    @KeepForSdk
    public interface NewTokenListener {
        @KeepForSdk
        void a(String str);
    }

    @NonNull
    @KeepForSdk
    Task<String> a();

    @KeepForSdk
    void b(NewTokenListener newTokenListener);

    @Nullable
    @KeepForSdk
    String getToken();
}
