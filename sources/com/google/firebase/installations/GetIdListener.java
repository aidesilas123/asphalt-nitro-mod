package com.google.firebase.installations;

import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.installations.local.PersistedInstallationEntry;

/* JADX INFO: loaded from: classes3.dex */
class GetIdListener implements StateListener {
    final TaskCompletionSource<String> a;

    public GetIdListener(TaskCompletionSource<String> taskCompletionSource) {
        this.a = taskCompletionSource;
    }

    @Override // com.google.firebase.installations.StateListener
    public boolean a(Exception exc) {
        return false;
    }

    @Override // com.google.firebase.installations.StateListener
    public boolean b(PersistedInstallationEntry persistedInstallationEntry) {
        if (!persistedInstallationEntry.k() && !persistedInstallationEntry.j() && !persistedInstallationEntry.h()) {
            return false;
        }
        this.a.trySetResult(persistedInstallationEntry.c());
        return true;
    }
}
