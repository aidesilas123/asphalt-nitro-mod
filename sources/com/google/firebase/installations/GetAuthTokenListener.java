package com.google.firebase.installations;

import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.installations.local.PersistedInstallationEntry;

/* JADX INFO: loaded from: classes3.dex */
class GetAuthTokenListener implements StateListener {
    private final Utils a;
    private final TaskCompletionSource<InstallationTokenResult> b;

    public GetAuthTokenListener(Utils utils, TaskCompletionSource<InstallationTokenResult> taskCompletionSource) {
        this.a = utils;
        this.b = taskCompletionSource;
    }

    @Override // com.google.firebase.installations.StateListener
    public boolean a(Exception exc) {
        this.b.trySetException(exc);
        return true;
    }

    @Override // com.google.firebase.installations.StateListener
    public boolean b(PersistedInstallationEntry persistedInstallationEntry) {
        if (!persistedInstallationEntry.j() || this.a.d(persistedInstallationEntry)) {
            return false;
        }
        this.b.setResult(InstallationTokenResult.builder().b(persistedInstallationEntry.a()).d(persistedInstallationEntry.b()).c(persistedInstallationEntry.g()).a());
        return true;
    }
}
