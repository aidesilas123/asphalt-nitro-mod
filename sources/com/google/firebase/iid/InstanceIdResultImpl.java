package com.google.firebase.iid;

/* JADX INFO: compiled from: com.google.firebase:firebase-iid@@21.1.0 */
/* JADX INFO: loaded from: classes3.dex */
final class InstanceIdResultImpl implements InstanceIdResult {
    private final String a;
    private final String b;

    InstanceIdResultImpl(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    @Override // com.google.firebase.iid.InstanceIdResult
    public String getToken() {
        return this.b;
    }
}
