package com.facebook.login;

import java.util.Arrays;

/* JADX INFO: compiled from: CodeChallengeMethod.kt */
/* JADX INFO: loaded from: classes2.dex */
public enum CodeChallengeMethod {
    S256("S256"),
    PLAIN("plain");

    CodeChallengeMethod(String str) {
    }

    /* synthetic */ CodeChallengeMethod(String str, int i, kotlin.jvm.internal.n nVar) {
        this((i & 1) != 0 ? "S256" : str);
    }

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static CodeChallengeMethod[] valuesCustom() {
        CodeChallengeMethod[] codeChallengeMethodArrValuesCustom = values();
        return (CodeChallengeMethod[]) Arrays.copyOf(codeChallengeMethodArrValuesCustom, codeChallengeMethodArrValuesCustom.length);
    }
}
